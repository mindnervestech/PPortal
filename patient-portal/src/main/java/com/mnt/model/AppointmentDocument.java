package com.mnt.model;

import java.util.Date;
import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="appointment")
public class AppointmentDocument {

	@Id
	private String id;
	public Long appoitmentId; 
	public KeyValue<Long,String> appointmentOf;
	
	public Date appointmentDate;
	public KeyValue<Long,String> appointmentWith;
	public KeyValue<Long,String> primaryDoctor;
	public KeyValue<Long,String> specialty;
	public KeyValue<Long,String> doctor;
	public String notes;
	
	public String endTime;
	public String startTime;
	
	public List<SymptomDocument> symptom;
	
	public static class SymptomDocument {
		public KeyValue<Long,String> levelOne;
		public KeyValue<Long,String> levelTwo;
		public KeyValue<Long,String> worseBy;
		public KeyValue<Long,String> associatedSymptoms;
		public KeyValue<Long,String> relievedBy;
		public KeyValue<Long,String> painArea;
		public Long painLasts;
		public String painLastsUnit;
		public KeyValue<Long,String> whenThisHappen;
		public String severity;
	}
	
}
