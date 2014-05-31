package com.mnt.module.appointment.service;

import com.mnt.model.BodyLocation;
import com.mnt.vm.MedHistoryVM;
import com.mnt.vm.MetadataVM;

public interface MetaDataService {
	
	MetadataVM getMetadataForPatients();
	BodyLocation getPainMetaDataByLocationID(Long location, Long sublocation);
	MedHistoryVM getMetadataForPatientHistoty();
}
