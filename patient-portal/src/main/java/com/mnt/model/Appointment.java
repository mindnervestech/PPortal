
package com.mnt.model;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;

import com.mnt.module.appointment.SlotStatus;

import play.db.ebean.Model;

import com.avaje.ebean.Expr;
import com.mnt.module.appointment.SlotStatus;

@Entity
public class Appointment extends Model {
	
	// Don't make it Public
	private static Model.Finder<Long,Appointment> find = new Model.Finder<Long,Appointment>(Long.class, Appointment.class);
	
	@Id
	public Long id;
	
	// Day of Appointment 
	public int appointmentDate;
	public int appointmentMonth;
	public int appointmentYear;
	
	//Date fully object 
    public Date appointmentDmy;

	
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

	public static List<Appointment> getAppointmentSlots(Long appointmentWith_Id,String appointmentWith_Type,Calendar day) {
		return find.where().
			eq("appointmentWith_Id", appointmentWith_Id).
			eq("appointment_date", day.get(Calendar.DATE)).
			eq("appointment_month", day.get(Calendar.MONTH)).
			eq("appointment_year", day.get(Calendar.YEAR)).
			eq("appointmentWith_Type", appointmentWith_Type)
			.findList();
		
	}

	public static Long makeAppointmentOfXForADayY(Long appointmentOf_Id, String appointmentOf_Type, 
			Long appointmentWith_Id, String appointmentWith_Type, int startMin,int endMin, Calendar day, String status) {
		
		Appointment partialAppointment = Appointment.getPatialAppointment(startMin, endMin, day, appointmentOf_Id);
		Appointment appointment = null;
		
		if(partialAppointment == null) {
			appointment = new Appointment();
			appointment.appointmentOf_Id = appointmentOf_Id;
			appointment.appointmentOf_Type = appointmentOf_Type;
			appointment.appointmentWith_Id = appointmentWith_Id;
			appointment.appointmentWith_Type = appointmentWith_Type;
			appointment.appointmentDmy = day.getTime();
			appointment.appointmentDate = day.get(Calendar.DATE);
			appointment.appointmentMonth = day.get(Calendar.MONTH);
			appointment.appointmentYear = day.get(Calendar.YEAR);
			appointment.startMin = startMin;
			appointment.endMin = endMin;
			appointment.status = SlotStatus.PARTIAL.name();
			appointment.save();
		}
		
		else {
			partialAppointment.setStatus(SlotStatus.BOOKED.name());
			partialAppointment.update();
			
			appointment = new Appointment();
			appointment.appointmentOf_Id = appointmentOf_Id;
			appointment.appointmentOf_Type = appointmentOf_Type;
			appointment.appointmentWith_Id = appointmentWith_Id;
			appointment.appointmentWith_Type = appointmentWith_Type;
			appointment.appointmentDmy = day.getTime();
			appointment.appointmentDate = day.get(Calendar.DATE);
			appointment.appointmentMonth = day.get(Calendar.MONTH);
			appointment.appointmentYear = day.get(Calendar.YEAR);
			appointment.startMin = startMin;
			appointment.endMin = endMin;
			appointment.status = SlotStatus.BOOKED.name();
			appointment.save();
		}
		return appointment.id;
	}
	
	public static List<Appointment> getAllAppointments(Long patientId) {
		return find.where().eq("appointmentOf_Id", patientId).findList();
	}
	
	public static List<Appointment> getPastAppointments(Long patientId){
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.HOUR_OF_DAY, 0);
		calendar.set(Calendar.MINUTE, 0);
		calendar.set(Calendar.SECOND, 0);
		
		return find.where().and(Expr.eq("appointmentOf_Id", patientId), Expr.lt("appointmentDmy", calendar.getTime())).findList();
	}
	
	public static List<Appointment> getFutureAppointments(Long patientId){
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.HOUR_OF_DAY, 0);
		calendar.set(Calendar.MINUTE, 0);
		calendar.set(Calendar.SECOND, 0);
		
		return find.where().and(Expr.eq("appointmentOf_Id", patientId), Expr.ge("appointmentDmy", calendar.getTime())).findList();
	}

	public static Appointment getPatialAppointment(int startMin,int endMin, Calendar calendar, Long patientId) {
		return find.where().eq("appointmentOf_Id", patientId)
						   .eq("appointmentDate", calendar.get(Calendar.DATE))
						   .eq("appointmentMonth", calendar.get(Calendar.MONTH))
						   .eq("appointmentYear", calendar.get(Calendar.YEAR))
						   .eq("startMin", startMin)
						   .eq("endMin", endMin)
						   .eq("status", SlotStatus.PARTIAL.name())
				.findUnique();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public Date getAppointmentDmy() {
		return appointmentDmy;
	}

	public void setAppointmentDmy(Date appointmentDmy) {
		this.appointmentDmy = appointmentDmy;
	}

	public int getAppointmentDate() {
		return appointmentDate;
	}

	public void setAppointmentDate(int appointmentDate) {
		this.appointmentDate = appointmentDate;
	}

	public int getAppointmentMonth() {
		return appointmentMonth;
	}

	public void setAppointmentMonth(int appointmentMonth) {
		this.appointmentMonth = appointmentMonth;
	}

	public int getAppointmentYear() {
		return appointmentYear;
	}

	public void setAppointmentYear(int appointmentYear) {
		this.appointmentYear = appointmentYear;
	}
	
	

}
