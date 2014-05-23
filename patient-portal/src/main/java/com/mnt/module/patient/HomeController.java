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
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import play.libs.Json;

import com.mnt.model.Patient;
import com.mnt.module.appointment.data.AppointmentRequest;
import com.mnt.module.appointment.service.AppoitmentService;
import com.mnt.module.appointment.service.MetaDataService;
import com.mnt.module.appointment.service.UserDataService;
import com.mnt.pojo.User;
import com.mnt.vm.AppointmentVM;

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
	
	@RequestMapping(value = "/patient/", method = RequestMethod.GET)
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
	public String validateUser(User user, HttpSession session) {
		Patient patient = userDataService.validatePatientUser(user);
	    
	    if(patient == null) {
	    	return "redirect:login";
	    }
	    
	    session.setAttribute("code", patient.patientId);
	    if(patient.isTemp) {
	    	return "redirect:newPasswordPage";
	    } 
	    
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
		List<AppointmentVM> appointments = appoitmentService.getAllAppointmentsOfPatient(patientCode);
		
		return Json.toJson(appointments);
	}
}
