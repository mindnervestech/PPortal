package com.mnt.vm;

import java.util.List;

public class MetadataVM {
	public List<DropdownVM> statuses;
	public List<DropdownVM> communications;
	public List<DropdownVM> languages;
	public List<DropdownVM> epsdts;
	public List<DropdownVM> ethnicities;
	public List<DropdownVM> genders;
	public List<DropdownVM> maritalStatus;
	public List<DropdownVM> paymentModes;
	public List<DropdownVM> preferLanguages;
	public List<DropdownVM> races;
	public List<DropdownVM> studentStatuses;
	public List<DropdownVM> yesNos;
	public List<DropdownVM> countries;
	
	public MetadataVM() {}
	
	public void setEthnicities(List<DropdownVM> ethnicities) {
		this.ethnicities = ethnicities;
	}
	
	public void setEpsdts(List<DropdownVM> epsdts) {
		this.epsdts = epsdts;
	}

	public void setGenders(List<DropdownVM> genders) {
		this.genders = genders;
	}

	public void setMaritalStatus(List<DropdownVM> maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public void setPaymentModes(List<DropdownVM> paymentModes) {
		this.paymentModes = paymentModes;
	}

	public void setPreferLanguages(List<DropdownVM> preferLanguages) {
		this.preferLanguages = preferLanguages;
	}

	public void setRaces(List<DropdownVM> races) {
		this.races = races;
	}

	public void setStudentStatuses(List<DropdownVM> studentStatuses) {
		this.studentStatuses = studentStatuses;
	}

	public void setYesNos(List<DropdownVM> yesNos) {
		this.yesNos = yesNos;
	}

	public void setStatuses(List<DropdownVM> statuses) {
		this.statuses = statuses;
	}

	public void setCommunications(List<DropdownVM> communications) {
		this.communications = communications;
	}

	public void setLanguages(List<DropdownVM> languages) {
		this.languages = languages;
	}

	public void setCountries(List<DropdownVM> countries) {
		this.countries = countries;
	}
}
