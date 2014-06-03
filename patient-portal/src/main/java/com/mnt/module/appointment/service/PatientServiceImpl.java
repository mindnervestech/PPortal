package com.mnt.module.appointment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Service;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.util.JSON;

@Service
public class PatientServiceImpl implements PatientService{
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	@Override
	public void saveDataToMongoCollection(String collectionName,
			String jsonDataToSave, Long patientId) {
		DBCollection dbCollection = null;
		if(!mongoTemplate.collectionExists(collectionName)) {
			dbCollection = mongoTemplate.createCollection(collectionName);
		}
		else {
			dbCollection = mongoTemplate.getCollection(collectionName);
		}
		
		BasicDBObject whereQuery = new BasicDBObject();
		whereQuery.put("patientId", patientId);
		boolean isUpdate = (dbCollection.findOne(whereQuery)==null) ? false : true;
		
		if(isUpdate) {
			DBObject dbObject = (DBObject) JSON.parse(jsonDataToSave);
			dbObject.put("patientId", patientId);
			dbCollection.update(whereQuery, dbObject);
		} else {
			DBObject dbObject = (DBObject) JSON.parse(jsonDataToSave);
			
			dbObject.put("patientId", patientId);
			dbCollection.save(dbObject);
		}
	}

	@Override
	public DBObject getDBObjectOfPatient(String collectionName, Long patientId) {
		DBCollection dbCollection = null;
		dbCollection = mongoTemplate.getCollection(collectionName);
		BasicDBObject whereQuery = new BasicDBObject();
		whereQuery.put("patientId", patientId);
		DBObject dbObject = dbCollection.findOne(whereQuery);
		return dbObject;
	}

	
	@Override
	public DBObject getDBObjectOfappoinment(String collectionName, int appointmentId) {
		DBCollection dbCollection = null;
		dbCollection = mongoTemplate.getCollection(collectionName);
		BasicDBObject whereQuery = new BasicDBObject();
		whereQuery.put("appoitmentId", appointmentId);
		DBObject dbObject = dbCollection.findOne(whereQuery);
		return dbObject;
	}
}
