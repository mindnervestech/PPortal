package com.mnt.module.appointment.repository.rdbms;

import org.springframework.stereotype.Repository;

import com.mnt.model.BodyLocation;
import com.mnt.module.appointment.repository.MetaDataStore;

@Repository("metaDataSQLStore")
public class MetaDataSQLStore implements MetaDataStore {

	
	@Override
	public BodyLocation getPainMetaDataByLocationID(Long id) {
		BodyLocation bodyLocation = BodyLocation.find.byId(id);
		return bodyLocation;
	}

}
