package com.mnt.module.appointment.repository.rdbms;

import org.springframework.stereotype.Repository;

import com.avaje.ebean.Ebean;
import com.mnt.model.BodyLocation;
import com.mnt.module.appointment.repository.MetaDataStore;

@Repository("metaDataSQLStore")
public class MetaDataSQLStore implements MetaDataStore {

	
	@Override
	public BodyLocation getPainMetaDataByLocationID(Long id) {
		BodyLocation bodyLocation = BodyLocation.find.byId(id);
		if(bodyLocation.group != null) {
			bodyLocation = BodyLocation.find.byId(bodyLocation.group);
		}
		return bodyLocation;
	}

	@Override
	public void getMetaDataOfBodyPart() {
		BodyLocation.find.all();
		
	}

}
