package com.mnt.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;

import play.db.ebean.Model;

@Entity
public class Doctors extends Model{
	
	@Id
	public Long id;
	
	public String firstname;
	public String username;
	public String code;
	List<Appointment> appoitments;
	

}
