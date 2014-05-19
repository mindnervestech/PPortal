package com.mnt.module.appointment.repository.nosql;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import com.mnt.model.BodyLocation;
import com.mnt.module.appointment.repository.MetaDataStore;
import com.mnt.vm.MetadataVM;

@Repository("metaDataMongoStore")
public class MetaDataMongoStore implements MetaDataStore {

	@Autowired
    private MongoTemplate mongoTemplate;
	
	@Override
	public BodyLocation getPainMetaDataByLocationID(Long id) {
		throw new UnsupportedOperationException();
	}

	@Override
	public MetadataVM getMetadataForPatients() {
		return null;
	}

	@Override
	public void getMetaDataOfBodyPart() {
		throw new UnsupportedOperationException();
	}

}
