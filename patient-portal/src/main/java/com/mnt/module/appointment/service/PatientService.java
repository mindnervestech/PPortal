package com.mnt.module.appointment.service;

import com.mongodb.DBObject;

public interface PatientService {
	void saveDataToMongoCollection(String collectionName, String jsonDataToSave, Long patientId);
	DBObject getDBObjectOfPatient(String collectionName, Long patientId);
}
