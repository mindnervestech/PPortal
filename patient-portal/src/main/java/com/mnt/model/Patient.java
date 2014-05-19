package com.mnt.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import play.db.ebean.Model;

@Entity
public class Patient extends Model{

	// Don't make it Public
	private static Model.Finder<Long,Patient> find = new Model.Finder<Long,Patient>(Long.class, Patient.class);
		
	@Id
	public Long id;
	
	public String firstname;
	
	public String lastname;
	
	
}
