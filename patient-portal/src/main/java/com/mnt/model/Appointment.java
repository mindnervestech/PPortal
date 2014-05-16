
package com.mnt.model;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;

import com.mnt.module.appointment.SlotStatus;

import play.db.ebean.Model;

@Entity
public class Appointment extends Model {
	
	public static Model.Finder<Long,Appointment> find = new Model.Finder<Long,Appointment>(Long.class, Appointment.class);
	
	@Id
	public Long id;
	
	// Day of Appointment 
	public int appointmentDate;
	public int month;
	public int year;
	
	//Status of Appointment
	public String status;
	
	// Any Notes attached with appointment
	public String notes;
	
	// Start of Time
	public int startMin;
	// Start of End Time
	public int endMin;
	
	
	// Reference to the Object of whom Appointment is. 
	public Long appointmentOf_Id;
	
	//Object Type of whom Appointment is.
	public String appointmentOf_Type;
	
	// Reference to the Object with whom Appointment is made. 
	public Long appointmentWith_Id;
	
	//Object Type with whom Appointment is made.
	public String appointmentWith_Type;

	public static List<Appointment> getAppointmentSlots(Long appointmentOf_Id,String appointmentOf_Type,Calendar day) {
		return find.where().
			eq("appointmentOf_Id", appointmentOf_Id).
			eq("date", day.get(Calendar.DATE)).
			eq("month", day.get(Calendar.MONTH)).
			eq("year", day.get(Calendar.YEAR)).
			eq("appointmentOf_Type", appointmentOf_Type)
			.findList();
		
	}

	public static void makeAppointmentOfXForADayY(Long appointmentOf_Id, String appointmentOf_Type, 
			Long appointmentWith_Id, String appointmentWith_Type, int startMin,int endMin, Calendar day) {
		
		Appointment appointment = new Appointment();
		appointment.appointmentOf_Id = appointmentOf_Id;
		appointment.appointmentOf_Type = appointmentOf_Type;
		appointment.appointmentWith_Id = appointmentWith_Id;
		appointment.appointmentWith_Type = appointmentWith_Type;
		appointment.appointmentDate = day.get(Calendar.DATE);
		appointment.month = day.get(Calendar.MONTH);
		appointment.year = day.get(Calendar.YEAR);
		appointment.startMin = startMin;
		appointment.endMin = endMin;
		appointment.status = SlotStatus.AVAILABLE.name();
		appointment.save();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getAppointmentDate() {
		return appointmentDate;
	}

	public void setAppointmentDate(int date) {
		this.appointmentDate = date;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public int getStartMin() {
		return startMin;
	}

	public void setStartMin(int startMin) {
		this.startMin = startMin;
	}

	public int getEndMin() {
		return endMin;
	}

	public void setEndMin(int endMin) {
		this.endMin = endMin;
	}

	public Long getAppointmentOf_Id() {
		return appointmentOf_Id;
	}

	public void setAppointmentOf_Id(Long appointmentOf_Id) {
		this.appointmentOf_Id = appointmentOf_Id;
	}

	public String getAppointmentOf_Type() {
		return appointmentOf_Type;
	}

	public void setAppointmentOf_Type(String appointmentOf_Type) {
		this.appointmentOf_Type = appointmentOf_Type;
	}

	public Long getAppointmentWith_Id() {
		return appointmentWith_Id;
	}

	public void setAppointmentWith_Id(Long appointmentWith_Id) {
		this.appointmentWith_Id = appointmentWith_Id;
	}

	public String getAppointmentWith_Type() {
		return appointmentWith_Type;
	}

	public void setAppointmentWith_Type(String appointmentWith_Type) {
		this.appointmentWith_Type = appointmentWith_Type;
	}
	
	

}
