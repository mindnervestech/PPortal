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
		appointment.aptId = apt.getId();
		appointment.aptDate = apt.getAppointmentDate() + "/" +apt.getAppointmentMonth()+"/" +apt.getAppointmentYear(); 
		appointment.slot = TimeConverter.convertElapsedMinToDayTime(apt.getStartMin()) + " - " + TimeConverter.convertElapsedMinToDayTime(apt.getEndMin());
		appointment.aptWith = Doctors.getFullNameById(apt.getAppointmentWith_Id());
		return appointment;
	}
	
}
