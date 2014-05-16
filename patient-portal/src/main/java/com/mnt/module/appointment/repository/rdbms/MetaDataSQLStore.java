package com.mnt.module.appointment.repository.rdbms;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.mnt.metadata.Statuses;
import com.mnt.model.BodyLocation;
import com.mnt.module.appointment.repository.MetaDataStore;
import com.mnt.vm.DropdownVM;
import com.mnt.vm.MetadataVM;

@Repository("metaDataSQLStore")
public class MetaDataSQLStore implements MetaDataStore {

	
	@Override
	public BodyLocation getPainMetaDataByLocationID(Long id) {
		BodyLocation bodyLocation = BodyLocation.find.byId(id);
		return bodyLocation;
	}

	@Override
	public MetadataVM getMetadataForPatients() {
		List<Statuses> statuses = Statuses.getAllStatuses();
		
		MetadataVM metadata = new MetadataVM();
		List<DropdownVM> statusVM = new ArrayList<>();
		for(Statuses status : statuses) {
			DropdownVM vm = new DropdownVM(status.getLabel(), status.getValue());
			statusVM.add(vm);
		}
		metadata.setStatuses(statusVM);
		return metadata;
	}

}
