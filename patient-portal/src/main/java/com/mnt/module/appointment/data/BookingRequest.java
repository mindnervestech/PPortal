package com.mnt.module.appointment.data;

import java.util.Date;

import org.codehaus.jackson.annotate.JsonProperty;

public class BookingRequest {
	
	public Date appointmentDate;
	public Long appointmentWith;
	
	@JsonProperty("slot")
	public AppointmentSlot[] slots;
}
