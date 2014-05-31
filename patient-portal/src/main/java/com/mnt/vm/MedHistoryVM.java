package com.mnt.vm;

import java.util.List;

public class MedHistoryVM {
	public List<DropdownVM> statuses;
	public List<DropdownVM> languages;
	public List<DropdownVM> ethnicities;
	public List<DropdownVM> genders;
	public List<DropdownVM> maritalStatus;
	public List<DropdownVM> countries;
	public List<DropdownVM> educations;
	public List<DropdownVM> religions;
	public List<DropdownVM> degreeConferred;
	public List<DropdownVM> occupations;
	public List<DropdownVM> occupationHazards;
	public List<DropdownVM> homeHeatings;
    public List<DropdownVM> relations;
	

	public List<DropdownVM> getRelations() {
		return relations;
	}

	public void setRelations(List<DropdownVM> relations) {
		this.relations = relations;
	}
	
	
	public List<DropdownVM> getEducations() {
		return educations;
	}

	public void setEducations(List<DropdownVM> educations) {
		this.educations = educations;
	}

	public List<DropdownVM> getReligions() {
		return religions;
	}

	public void setReligions(List<DropdownVM> religions) {
		this.religions = religions;
	}

	public List<DropdownVM> getDegreeConferred() {
		return degreeConferred;
	}

	public void setDegreeConferred(List<DropdownVM> degreeConferred) {
		this.degreeConferred = degreeConferred;
	}

	public List<DropdownVM> getOccupations() {
		return occupations;
	}

	public void setOccupations(List<DropdownVM> occupations) {
		this.occupations = occupations;
	}

	public List<DropdownVM> getOccupationHazards() {
		return occupationHazards;
	}

	public void setOccupationHazards(List<DropdownVM> occupationHazards) {
		this.occupationHazards = occupationHazards;
	}

	public List<DropdownVM> getHomeHeatings() {
		return homeHeatings;
	}

	public void setHomeHeatings(List<DropdownVM> homeHeatings) {
		this.homeHeatings = homeHeatings;
	}

	public List<DropdownVM> getStatuses() {
		return statuses;
	}


	public List<DropdownVM> getLanguages() {
		return languages;
	}



	public List<DropdownVM> getEthnicities() {
		return ethnicities;
	}

	public List<DropdownVM> getGenders() {
		return genders;
	}

	public List<DropdownVM> getMaritalStatus() {
		return maritalStatus;
	}


	public List<DropdownVM> getCountries() {
		return countries;
	}



	
	
	public MedHistoryVM() {}
	
	public void setEthnicities(List<DropdownVM> ethnicities) {
		this.ethnicities = ethnicities;
	}
	


	public void setGenders(List<DropdownVM> genders) {
		this.genders = genders;
	}

	public void setMaritalStatus(List<DropdownVM> maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	

	public void setStatuses(List<DropdownVM> statuses) {
		this.statuses = statuses;
	}


	public void setLanguages(List<DropdownVM> languages) {
		this.languages = languages;
	}

	public void setCountries(List<DropdownVM> countries) {
		this.countries = countries;
	}


}
