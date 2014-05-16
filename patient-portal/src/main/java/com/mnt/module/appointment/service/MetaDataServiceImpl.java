package com.mnt.module.appointment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.mnt.model.BodyLocation;
import com.mnt.module.appointment.repository.MetaDataStore;

@Service
public class MetaDataServiceImpl implements MetaDataService {

	@Autowired()
	@Qualifier("metaDataSQLStore")
	MetaDataStore metaDataStore;
	
	@Override
	public BodyLocation getPainMetaDataByLocationID(Long location, Long sublocation) {
		BodyLocation subLocation = metaDataStore.getPainMetaDataByLocationID(sublocation);
		if(subLocation != null) {
			return subLocation;
		} else {
			return metaDataStore.getPainMetaDataByLocationID(location);
		}
	}

}
