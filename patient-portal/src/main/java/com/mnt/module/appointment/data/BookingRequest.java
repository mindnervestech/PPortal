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
	
	//new fields added
	public String selectedprimaryDoctorText;
	public String selectedSpecialtyText;
	public String selectedDoctorText;
	public String email;
	
	public Long loggedUserId;
	public String loggedUserName;
	
	@JsonProperty("slot")
	public AppointmentSlot[] slots;
}
