package com.mnt.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import play.db.ebean.Model;

@Entity
public class RelievedBy extends Model {

	public static Model.Finder<Long,RelievedBy> find = new Model.Finder<Long,RelievedBy>(Long.class, RelievedBy.class);
	
	@Id
	public Long id;
	
	@Column(unique=true,length=100)
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
		return RelievedBy.find.byId(id).description;
	}
}
