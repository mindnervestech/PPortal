package com.mnt.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import play.db.ebean.Model;

@Entity
public class PainArea extends Model {

	public static Model.Finder<Long,PainArea> find = new Model.Finder<Long,PainArea>(Long.class, PainArea.class);
	
	@Id
	public Long id;
	
	public String description;
	

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public static String getDescriptionById(Long id) {
		// TODO Auto-generated method stub
		return PainArea.find.byId(id).description;
	}
	
}
