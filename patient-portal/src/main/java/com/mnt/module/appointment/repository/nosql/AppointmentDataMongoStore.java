package com.mnt.module.appointment.repository.nosql;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import com.mnt.model.AppointmentDocument;
import com.mnt.module.appointment.repository.AppointmentDataStore;

@Repository("appointmentDataMongoStore")
public class AppointmentDataMongoStore implements AppointmentDataStore {

	@Autowired
    private MongoTemplate mongoTemplate;
	
	@Override
	public void saveAppointmentAsDocument(AppointmentDocument appointmentDocument) {
		mongoTemplate.save(appointmentDocument);
	}

}
