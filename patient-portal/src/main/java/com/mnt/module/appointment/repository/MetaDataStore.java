package com.mnt.module.appointment.repository;

import com.mnt.model.BodyLocation;
import com.mnt.vm.MetadataVM;

public interface MetaDataStore {

	BodyLocation getPainMetaDataByLocationID(Long id);
	void getMetaDataOfBodyPart();
	MetadataVM getMetadataForPatients();
}
