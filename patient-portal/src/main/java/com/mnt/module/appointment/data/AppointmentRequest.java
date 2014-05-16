package com.mnt.module.appointment.data;

import org.codehaus.jackson.annotate.JsonProperty;

public class AppointmentRequest {
	@JsonProperty("appointment")
	public BookingRequest bookingRequest;
	
	@JsonProperty("symptoms")
	public SymptomReported[] symptom;
	
	
		
}
