package com.mnt.module.appointment.service;

import java.text.ParseException;
import java.util.Calendar;
import java.util.Set;

import com.mnt.module.appointment.data.AppointmentRequest;
import com.mnt.module.appointment.data.AppointmentSlotViewModel;


public interface AppoitmentService {

	Set<AppointmentSlotViewModel> getAppointmentSlots(Long appointmentOf_Id, String appointmentOf_Type, Calendar day, int perSlot);

	void bookAppointment(AppointmentRequest request) throws ParseException;

}
