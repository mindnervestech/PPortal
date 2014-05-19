package com.mnt.module.appointment.repository;

import com.mnt.model.AppointmentDocument;

public interface AppointmentDataStore {
	
	void saveAppointmentAsDocument(AppointmentDocument appointmentDocument);

}
