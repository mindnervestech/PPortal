package com.mnt.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import play.db.ebean.Model;

@Entity
public class Patient extends Model{

	@Id
	public Long id;
	
	public String firstname;
	
	public String lastname;
	
	
}
