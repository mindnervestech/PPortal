package com.mnt.module.appointment.repository;

import com.mnt.model.BodyLocation;
import com.mnt.vm.MetadataVM;

public interface MetaDataStore {
	MetadataVM getMetadataForPatients();
	BodyLocation getPainMetaDataByLocationID(Long id);
}
