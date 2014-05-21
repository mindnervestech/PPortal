package com.mnt.module.patient;

import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

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

import com.mnt.module.appointment.data.AppointmentRequest;
import com.mnt.module.appointment.service.AppoitmentService;
import com.mnt.module.appointment.service.MetaDataService;
import com.mnt.module.appointment.service.UserDataService;

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
	public String home() {
		return "home";
	}
	
	@RequestMapping(value = "/patient/", method = RequestMethod.GET)
	public String patientForm() {
		return "patient";
	}
	
	@RequestMapping(value = "/get-metadata", method = RequestMethod.GET)
	public @ResponseBody JsonNode getMetadata() {
		return Json.toJson(metadataService.getMetadataForPatients());
	}
	
	@RequestMapping(value = "/get-appointment-slots", method = RequestMethod.GET)
	public @ResponseBody JsonNode getAppointmentSlots(@RequestParam("date") @DateTimeFormat(pattern="yyyyMMdd") Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		return Json.toJson(appoitmentService.getAppointmentSlots(1l, "Doctor", calendar, 30));
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
	public @ResponseBody JsonNode bookAppointmentSlots (@RequestBody AppointmentRequest request) throws ParseException {
		String appointmentId = appoitmentService.bookAppointment(request);
		Map<String, String> response = new HashMap<>();
		response.put("appointmentId", appointmentId);
		
		return Json.toJson(response);
	}
	
}
