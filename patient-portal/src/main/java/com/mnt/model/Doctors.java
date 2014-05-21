package com.mnt.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;

import play.db.ebean.Model;

@Entity
public class Doctors extends Model {
	// Don't make it Public
	private static Model.Finder<Long,Doctors> find = new Model.Finder<Long,Doctors>(Long.class, Doctors.class);
		
	@Id
	public Long id;
	
	public String firstname;
	public String lastname;
	public String username;
	public String code;
	public List<Appointment> appoitments;
	
	
	public static Doctors findById(Long id) {
		return find.byId(id);
	}
	
	public static List<Doctors> findAll() {
		return find.all();
	}
	
	public static String getFullNameById(Long id) {
		Doctors doctors = find.byId(id);
		return doctors.firstname +" "+ doctors.lastname;
	}


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


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getCode() {
		return code;
	}


	public void setCode(String code) {
		this.code = code;
	}


	public List<Appointment> getAppoitments() {
		return appoitments;
	}


	public void setAppoitments(List<Appointment> appoitments) {
		this.appoitments = appoitments;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	

}
