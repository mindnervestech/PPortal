package com.mnt.metadata;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;

import play.db.ebean.Model;

@Entity
public class Races extends Model {
	@Id
	private Long id;
	
	private String value;
	private String label;
	
	public static Model.Finder<Long,Races> find = new Model.Finder<Long,Races>(Long.class, Races.class);
	
	public static List<Races> getAllRaces() {
		return find.all();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}
}
