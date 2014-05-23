package com.mnt.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.springframework.cache.annotation.Cacheable;

import play.db.ebean.Model;

@Entity

public class BodyLocation  extends Model {

	public static Model.Finder<Long,BodyLocation> find = new Model.Finder<Long,BodyLocation>(Long.class, BodyLocation.class);
	
	@Id
	public Long id;
	
	@Column(unique=true)
	public String name;
	
	@OneToMany(cascade=CascadeType.ALL)
	public List<PainArea> painArea;
	@OneToMany(cascade=CascadeType.ALL)
	public List<AssociatedSymptom> associatedSymptoms;
	@OneToMany(cascade=CascadeType.ALL)
	public List<WorsedBy> worseBy;
	
	@OneToMany(cascade=CascadeType.ALL)
	public List<WhenThisHappen> whenThisHappen;
	
	@OneToMany(cascade=CascadeType.ALL)
	public List<RelievedBy> relievedBy;
	
	@Column(name="containedin_id")
	public Long containedin;
	
	@Cacheable(value="defaultCache#0", key="#id")
	public static String getNameById(Long id) {
		return find.byId(id).name;
	}
	
	@Column(name="group_id")
	public Long group;
	
	public List<RelievedBy> getRelievedBy() {
		return relievedBy;
	}
	public void setRelievedBy(List<RelievedBy> relievedBy) {
		this.relievedBy = relievedBy;
	}
	public List<WhenThisHappen> getWhenThisHappen() {
		return whenThisHappen;
	}
	public void setWhenThisHappen(List<WhenThisHappen> whenThisHappen) {
		this.whenThisHappen = whenThisHappen;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<PainArea> getPainArea() {
		return painArea;
	}
	public void setPainArea(List<PainArea> painArea) {
		this.painArea = painArea;
	}
	public List<AssociatedSymptom> getAssociatedSymptoms() {
		return associatedSymptoms;
	}
	public void setAssociatedSymptoms(List<AssociatedSymptom> associatedSymptoms) {
		this.associatedSymptoms = associatedSymptoms;
	}
	public List<WorsedBy> getWorseBy() {
		return worseBy;
	}
	public void setWorseBy(List<WorsedBy> worseBy) {
		this.worseBy = worseBy;
	}
	public Long getContainedin() {
		return containedin;
	}
	public void setContainedin(Long containedin) {
		this.containedin = containedin;
	}
	public Long getGroup() {
		return group;
	}
	public void setGroup(Long group) {
		this.group = group;
	}
	
	
}
