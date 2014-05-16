package com.mnt.metadata;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;

import play.db.ebean.Model;

@Entity
public class EpsdtServices extends Model {
	@Id
	private Long id;
	
	private String value;
	private String label;
	
	public static Model.Finder<Long,EpsdtServices> find = new Model.Finder<Long,EpsdtServices>(Long.class, EpsdtServices.class);
	
	public static List<EpsdtServices> getAllEpsdtServices() {
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
