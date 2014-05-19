package com.mnt.module.appointment.data;

import org.codehaus.jackson.annotate.JsonIgnore;

public class SymptomReported {
	public Long levelOneArea;
	public Long levelTwoArea;
	public Long worseBy;
	public Long associatedSymptoms;
	public Long relievedBy;
	public Long painArea;
	public Long painLasts;
	public String painLastsUnit;
	public Long whenThisHappen;
	@JsonIgnore
	public String metadata; 
}
