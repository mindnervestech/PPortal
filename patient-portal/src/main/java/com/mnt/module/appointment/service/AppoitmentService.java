package com.mnt.module.appointment.service;

import java.text.ParseException;
import java.util.Calendar;
import java.util.List;
import java.util.Set;

import com.mnt.model.Appointment;
import com.mnt.module.appointment.data.AppointmentRequest;
import com.mnt.module.appointment.data.AppointmentSlotViewModel;
import com.mnt.vm.PastAndFutureAppointmentsVM;


public interface AppoitmentService {

	Set<AppointmentSlotViewModel> getAppointmentSlots(Long appointmentOf_Id, String appointmentOf_Type, Calendar day, int perSlot);

	String bookAppointment(AppointmentRequest request) throws ParseException;
	
	PastAndFutureAppointmentsVM getAllAppointmentsOfPatient(String patientCode);
	
	Appointment getAppointmentbyId(Long appointmentId);

}
