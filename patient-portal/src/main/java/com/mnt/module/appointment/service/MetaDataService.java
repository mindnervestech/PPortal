package com.mnt.module.appointment.service;

import com.mnt.model.BodyLocation;

public interface MetaDataService {
	

	BodyLocation getPainMetaDataByLocationID(Long location, Long sublocation);

}
