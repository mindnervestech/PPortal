package com.mnt.module.appointment.data;

import java.util.Date;

import org.codehaus.jackson.annotate.JsonProperty;

public class BookingRequest {
	
	public Date appointmentDate;
	public Long appointmentWith;
	public Long primaryDoctor;
	public Long specialty;
	public Long doctor;
	public String notes;
	
	@JsonProperty("slot")
	public AppointmentSlot[] slots;
}
