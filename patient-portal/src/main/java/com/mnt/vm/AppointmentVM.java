package com.mnt.vm;

import com.mnt.model.Appointment;
import com.mnt.model.Doctors;
import com.mnt.module.appointment.TimeConverter;

public class AppointmentVM {
	
	public String slot;
	public Long aptId;
	public String aptWith;
	public String aptDate;
	
	public static AppointmentVM buildVM(Appointment apt) {
		AppointmentVM appointment = new AppointmentVM();
		appointment.aptId = apt.id;
		appointment.aptDate = apt.appointmentDate + "/" +apt.appointmentMonth+"/" +apt.appointmentYear; 
		appointment.slot = TimeConverter.convertElapsedMinToDayTime(apt.startMin) + " - " + TimeConverter.convertElapsedMinToDayTime(apt.endMin);
		appointment.aptWith = Doctors.getFullNameById(apt.appointmentWith_Id);
		return appointment;
	}
	
}
