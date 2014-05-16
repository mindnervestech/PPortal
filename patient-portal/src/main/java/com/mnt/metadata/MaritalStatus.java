package com.mnt.metadata;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;

import play.db.ebean.Model;

@Entity
public class MaritalStatus extends Model {
	@Id
	private Long id;
	
	private String value;
	private String label;
	
	public static Model.Finder<Long,MaritalStatus> find = new Model.Finder<Long,MaritalStatus>(Long.class, MaritalStatus.class);
	
	public static List<MaritalStatus> getAllMaritalStatus() {
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
