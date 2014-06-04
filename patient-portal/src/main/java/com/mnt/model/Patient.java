package com.mnt.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import play.db.ebean.Model;

import com.avaje.ebean.Expr;
import com.mnt.pojo.User;

@Entity
public class Patient extends Model{

	// Don't make it Public
	private static Model.Finder<Long,Patient> find = new Model.Finder<Long,Patient>(Long.class, Patient.class);
		
	@Id
	public Long id;
	
	public String gender;
	
	public String firstname;
	
	public String lastname;
	
	public String patientId;
	
	public boolean isTemp;
	
	public String patientPassword;

	@Column(unique=true, nullable=false)
	public String patientEmail;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getPatientId() {
		return patientId;
	}

	public void setPatientId(String patientId) {
		this.patientId = patientId;
	}

	public boolean isTemp() {
		return isTemp;
	}

	public void setTemp(boolean isTemp) {
		this.isTemp = isTemp;
	}

	public String getPatientPassword() {
		return patientPassword;
	}

	public void setPatientPassword(String patientPassword) {
		this.patientPassword = patientPassword;
	}
	
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPatientEmail() {
		return patientEmail;
	}

	public void setPatientEmail(String patientEmail) {
		this.patientEmail = patientEmail;
	}

	public static Patient getPatientByCodeAndPassword(User user) {
		Patient patient = find.where().and(Expr.eq("patientId", user.patientCode),
				Expr.eq("patientPassword", user.patientPassword)).findUnique();
		return patient;
	}
	
	public static Patient getPatientByCode(String code) {
		Patient patient = find.where().eq("patientId", code).findUnique();
		return patient;
	}
	
	public static Patient getPatientById(Long Id) {
		Patient patient = find.where().eq("id", Id).findUnique();
		return patient;
	}
}
