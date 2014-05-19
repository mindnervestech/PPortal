package com.mnt.module.appointment.data;

import java.util.List;

public class BodyPartMetadata {
	
	public Long id;
	public String description;
	
	public List<BodyPartMetadata> sub;
	
	public BodyPartMetadata(Long id, String description) {
		this.id = id;
		this.description = description;
	}
	
	

}
