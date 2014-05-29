package com.mnt.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import play.db.ebean.Model;

@Entity
public class WhenThisHappen  extends Model {

	private static Model.Finder<Long,WhenThisHappen> find = new Model.Finder<Long,WhenThisHappen>(Long.class, WhenThisHappen.class);
	
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

	public static String getDescriptionById(Long whenThisHappen) {
		return find.byId(whenThisHappen).description;
	}
}
