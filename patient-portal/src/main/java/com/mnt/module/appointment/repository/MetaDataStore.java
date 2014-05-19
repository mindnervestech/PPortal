package com.mnt.module.appointment.repository;

import com.mnt.model.BodyLocation;

public interface MetaDataStore {

	BodyLocation getPainMetaDataByLocationID(Long id);
	void getMetaDataOfBodyPart();
}
