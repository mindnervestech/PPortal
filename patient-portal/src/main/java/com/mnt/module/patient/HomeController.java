package com.mnt.module.patient;

import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.JsonNode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import play.libs.Json;

import com.mnt.model.Patient;
import com.mnt.module.appointment.data.AppointmentRequest;
import com.mnt.module.appointment.service.AppoitmentService;
import com.mnt.module.appointment.service.MetaDataService;
import com.mnt.module.appointment.service.PatientService;
import com.mnt.module.appointment.service.UserDataService;
import com.mnt.pojo.User;
import com.mnt.vm.AppointmentVM;
import com.mnt.vm.PastAndFutureAppointmentsVM;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.util.JSON;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private AppoitmentService appoitmentService; 
	
	@Autowired
	private UserDataService userDataService;
	
	@Autowired
	private MetaDataService metadataService;
	
	@Autowired
	private PatientService patientService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpSession session) {
		if(session.getAttribute("code") == null) {
	    	return "redirect:login";
	    }
		return "home";
	}
	
	@RequestMapping(value = "/form/", method = RequestMethod.GET)
	public String patientForm(HttpSession session) {
		if(session.getAttribute("code") == null) {
	    	return "redirect:/login";
	    }
		return "patient";
	}
	
	@RequestMapping(value = "/get-metadata", method = RequestMethod.GET)
	public @ResponseBody JsonNode getMetadata() {
		return Json.toJson(metadataService.getMetadataForPatients());
	}
	
	@RequestMapping(value = "/get-history-metadata", method = RequestMethod.GET)
	public @ResponseBody JsonNode getHistoryMetadata() {
		System.out.println("fffffff");
		return Json.toJson(metadataService.getMetadataForPatientHistoty());
	}
		@RequestMapping(value = "/get-family-history-metadata", method = RequestMethod.GET)
	public @ResponseBody JsonNode getMetadataForHistory() {
		return Json.toJson(metadataService.getMetadataForHistory());
	}
	
	
	@RequestMapping(value = "/get-appointment-slots", method = RequestMethod.GET)
	public @ResponseBody JsonNode getAppointmentSlots(@RequestParam("date") @DateTimeFormat(pattern="yyyyMMdd") Date date, @RequestParam("doctor_id") Long doctorId) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		return Json.toJson(appoitmentService.getAppointmentSlots(doctorId, "Doctor", calendar, 30));
	}
	
	@RequestMapping(value = "/get-pain-metadata", method = RequestMethod.GET)
	public @ResponseBody JsonNode getPainMetadata(Long location, Long sublocation) {
		return Json.toJson(metadataService.getPainMetaDataByLocationID(location, sublocation));
	}
	
	@RequestMapping(value = "/get-all-doctors", method = RequestMethod.GET)
	public @ResponseBody JsonNode getAllDoctorsData() {
		return Json.toJson(userDataService.getAllDoctorsData());
	}
	
	@RequestMapping(value = "/book-appointment-slots", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody JsonNode bookAppointmentSlots (@RequestBody AppointmentRequest request,HttpSession session) throws ParseException {
		String patientCode = (String) session.getAttribute("code");
		Patient patient = Patient.getPatientByCode(patientCode);
		
		request.bookingRequest.loggedUserId = patient.getId();
		request.bookingRequest.loggedUserName = patient.getFirstname()+" " + patient.getLastname();
		
		String appointmentId = appoitmentService.bookAppointment(request);
		Map<String, String> response = new HashMap<>();
		response.put("appointmentId", appointmentId);
		
		return Json.toJson(response);
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm(HttpSession session) {
		System.out.println(session.getAttribute("code"));
		return "loginForm";
	}
	
	@RequestMapping(value = "/newPasswordPage", method = RequestMethod.GET)
	public String newPasswordPage() {
		return "setNewPassword";
	}
	
	@RequestMapping(value = "/validate_user", method = RequestMethod.POST)
	public String validateUser(User user, HttpSession session, final RedirectAttributes redirectAttributes) {
		Patient patient = userDataService.validatePatientUser(user);
	    
	    if(patient == null) {
	    	return "redirect:login";
	    }
	    
	    session.setAttribute("code", patient.patientId);
	    if(patient.isTemp) {
	    	return "redirect:newPasswordPage";
	    } 
	    
	    redirectAttributes.addFlashAttribute("user", patient);
    	return "redirect:/";
	}
	
	@RequestMapping(value = "/updatePassword", method = RequestMethod.POST)
	public String setNewPassword(@RequestParam("newPassword") String newPassword, HttpSession session) {
	    String code = (String) session.getAttribute("code");
	    userDataService.updateUserPassword(code, newPassword);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("code");
		
		return "redirect:login";
	}
	
	@RequestMapping(value = "/get-all-appointments", method = RequestMethod.GET)
	public @ResponseBody JsonNode getAllAppointments(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String patientCode = (String) session.getAttribute("code");
		PastAndFutureAppointmentsVM appointments = appoitmentService.getAllAppointmentsOfPatient(patientCode);
		
		return Json.toJson(appointments);
	}
	
	@RequestMapping(value = "/save-patient-imp-details", method = RequestMethod.POST)
	public String savePatientImportantDetails(@RequestBody String patientImp, HttpSession session) {
		String patientCode = (String) session.getAttribute("code");
		Patient patient = Patient.getPatientByCode(patientCode);
		
		String collectionName = "patientInfo";
		patientService.saveDataToMongoCollection(collectionName, patientImp, patient.getId());
		
		return "patient";
	}
	
	@RequestMapping(value = "/save-patient-demographic-details", method = RequestMethod.POST)
	public String savePatientDemographicDetails(@RequestBody String patientDemographic, HttpSession session) {
		String patientCode = (String) session.getAttribute("code");
		Patient patient = Patient.getPatientByCode(patientCode);
		
		String collectionName = "patientDemographics";
		patientService.saveDataToMongoCollection(collectionName, patientDemographic, patient.getId());
		
		return "patient";
	}
	
	@RequestMapping(value = "/save-patient-primary-insurance-details", method = RequestMethod.POST)
	public String savePatientPrimaryInsuranceDetails(@RequestBody String patientPrimary, HttpSession session) {
		String patientCode = (String) session.getAttribute("code");
		Patient patient = Patient.getPatientByCode(patientCode);
		
		String collectionName = "patientPrimaryInsurance";
		patientService.saveDataToMongoCollection(collectionName, patientPrimary, patient.getId());
		
		return "patient";
	}
	
	@RequestMapping(value = "/save-patient-secondary-insurance-details", method = RequestMethod.POST)
	public String savePatientSecondaryInsuranceDetails(@RequestBody String patientSecondary, HttpSession session) {
		String patientCode = (String) session.getAttribute("code");
		Patient patient = Patient.getPatientByCode(patientCode);
		
		String collectionName = "patientSecondaryInsurance";
		
		patientService.saveDataToMongoCollection(collectionName, patientSecondary, patient.getId());
		
		return "patient";
	}
	
	@RequestMapping(value = "/get-patient-imp-details", method = RequestMethod.GET)
	public @ResponseBody JsonNode getPatientImportantDetails(HttpSession session) {
		String patientCode = (String) session.getAttribute("code");
		Patient patient = Patient.getPatientByCode(patientCode);
		
		String collectionName = "patientInfo";
		DBObject dbObject = patientService.getDBObjectOfPatient(collectionName, patient.getId());
		
		return Json.toJson((dbObject==null) ? "" : dbObject.get("importantForm"));
	}
	
	@RequestMapping(value = "/get-patient-primary-insurance-details", method = RequestMethod.GET)
	public @ResponseBody JsonNode getPatientPrimaryInsuranceDetails(HttpSession session) {
		String patientCode = (String) session.getAttribute("code");
		Patient patient = Patient.getPatientByCode(patientCode);
		
		String collectionName = "patientPrimaryInsurance";
		DBObject dbObject = patientService.getDBObjectOfPatient(collectionName, patient.getId());
		
		return Json.toJson((dbObject==null) ? "" : dbObject.get("insuranceForm"));
	}
	
	@RequestMapping(value = "/get-patient-demographic-details", method = RequestMethod.GET)
	public @ResponseBody JsonNode getPatientDemographicDetails(HttpSession session) {
		String patientCode = (String) session.getAttribute("code");
		Patient patient = Patient.getPatientByCode(patientCode);
		
		String collectionName = "patientDemographics";
		DBObject dbObject = patientService.getDBObjectOfPatient(collectionName, patient.getId());
		
		return Json.toJson((dbObject==null) ? "" : dbObject.get("demographicForm"));
	}
	
	@RequestMapping(value = "/get-patient-secondary-insurance-details", method = RequestMethod.GET)
	public @ResponseBody JsonNode getPatientSecondaryInsuranceDetails(HttpSession session) {
		String patientCode = (String) session.getAttribute("code");
		Patient patient = Patient.getPatientByCode(patientCode);
		
		String collectionName = "patientSecondaryInsurance";
		DBObject dbObject = patientService.getDBObjectOfPatient(collectionName, patient.getId());
		
		return Json.toJson((dbObject==null) ? "" : dbObject.get("secInsuranceForm"));
	}
	//jai coded
	
	@RequestMapping(value = "/save-patient-history-details", method = RequestMethod.POST)
	public String savePatientHistoryDetails(@RequestBody String patientHistory, HttpSession session) {
		String patientCode = (String) session.getAttribute("code");
		Patient patient = Patient.getPatientByCode(patientCode);
		System.out.println("jai= "+patient);
		String collectionName = "patientHist";
		patientService.saveDataToMongoCollection(collectionName, patientHistory, patient.getId());
		
		return "medicalHistoryForm";
	}
	
	@RequestMapping(value = "/get-patient-history-details", method = RequestMethod.GET)
	public @ResponseBody JsonNode getPatientHistoryDetails(HttpSession session) {
		String patientCode = (String) session.getAttribute("code");
		Patient patient = Patient.getPatientByCode(patientCode);
		
		String collectionName = "patientHist";
		DBObject dbObject = patientService.getDBObjectOfPatient(collectionName, patient.getId());
		
		return Json.toJson((dbObject == null)? "" : dbObject.get("historyForm"));
	}
@RequestMapping(value = "/save-patient-family-details", method = RequestMethod.POST)
	public String savePatientFamilyDetails(@RequestBody String patientFamily, HttpSession session) {
		String patientCode = (String) session.getAttribute("code");
		Patient patient = Patient.getPatientByCode(patientCode);
		
		String collectionName = "patientFamilyInfo";
		patientService.saveDataToMongoCollection(collectionName, patientFamily, patient.getId());
		
		return "patient";
	}
	
	
	@RequestMapping(value = "/get-patient-family-details", method = RequestMethod.GET)
	public @ResponseBody JsonNode getPatientFamilyDetails(HttpSession session) {
		String patientCode = (String) session.getAttribute("code");
		Patient patient = Patient.getPatientByCode(patientCode);
		
		String collectionName = "patientFamilyInfo";
		DBObject dbObject = patientService.getDBObjectOfPatient(collectionName, patient.getId());
		
		return Json.toJson((dbObject==null) ? "" : dbObject.get("familyhistory"));
	}
}
