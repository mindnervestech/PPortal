package com.mnt.module.appointment.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.mnt.metadata.Communication;
import com.mnt.metadata.Country;
import com.mnt.metadata.DegreeConfered;
import com.mnt.metadata.Education;
import com.mnt.metadata.EpsdtServices;
import com.mnt.metadata.Ethnicities;
import com.mnt.metadata.Gender;
import com.mnt.metadata.HomeHeating;
import com.mnt.metadata.Languages;
import com.mnt.metadata.MaritalStatus;
import com.mnt.metadata.Occupation;
import com.mnt.metadata.OccupationalHazards;
import com.mnt.metadata.PaymentModes;
import com.mnt.metadata.PreferLanguages;
import com.mnt.metadata.Races;
import com.mnt.metadata.Religion;
import com.mnt.metadata.Statuses;
import com.mnt.metadata.StudentStatus;
import com.mnt.metadata.YesNos;
import com.mnt.model.BodyLocation;
import com.mnt.module.appointment.repository.MetaDataStore;
import com.mnt.vm.DropdownVM;
import com.mnt.vm.MedHistoryVM;
import com.mnt.vm.MetadataVM;

@Service
public class MetaDataServiceImpl implements MetaDataService {

	@Autowired()
	@Qualifier("metaDataSQLStore")
	MetaDataStore metaDataStore;
	
	@Override
	public BodyLocation getPainMetaDataByLocationID(Long location, Long sublocation) {
		
		if(sublocation == null) {
			return metaDataStore.getPainMetaDataByLocationID(location);
		}
		
		BodyLocation subLocation = metaDataStore.getPainMetaDataByLocationID(sublocation);
		if(subLocation != null) {
			return subLocation;
		} else {
			return metaDataStore.getPainMetaDataByLocationID(location);
		}
	}

	@Override
	public MetadataVM getMetadataForPatients() {
		List<Statuses> statuses = Statuses.getAllStatuses();
		List<Communication> communications = Communication.getAllCommunicationTypes();
		List<EpsdtServices> epsdtServices = EpsdtServices.getAllEpsdtServices();
		List<Ethnicities> ethnicities = Ethnicities.getAllEthnicities();
		List<Gender> genders = Gender.getAllGenders();
		List<Languages> languages = Languages.getAllLanguages();
		List<MaritalStatus> maritalStatus = MaritalStatus.getAllMaritalStatus();
		List<PaymentModes> paymentModes = PaymentModes.getAllPaymentModes();
		List<PreferLanguages> preferLanguages = PreferLanguages.getAllPreferLanguages();
		List<Races> races = Races.getAllRaces();
		List<StudentStatus> studentStatus = StudentStatus.getAllStudentStatuses();
		List<YesNos> yesNos = YesNos.getAllYesNos();
		List<Country> countries = Country.getAllCountries();
		
		MetadataVM metadata = new MetadataVM();
		List<DropdownVM> dropdownVM = new ArrayList<>();
		for(Statuses status : statuses) {
			DropdownVM vm = new DropdownVM(status.getLabel(), status.getValue());
			dropdownVM.add(vm);
		}
		metadata.setStatuses(dropdownVM);
		
		dropdownVM = new ArrayList<>();
		for(Communication c : communications) {
			DropdownVM vm = new DropdownVM(c.getLabel(), c.getValue());
			dropdownVM.add(vm);
		}
		metadata.setCommunications(dropdownVM);
		
		dropdownVM = new ArrayList<>();
		for(EpsdtServices e : epsdtServices) {
			DropdownVM vm = new DropdownVM(e.getLabel(), e.getValue());
			dropdownVM.add(vm);
		}
		metadata.setEpsdts(dropdownVM);
		
		dropdownVM = new ArrayList<>();
		for(Ethnicities e : ethnicities) {
			DropdownVM vm = new DropdownVM(e.getLabel(), e.getValue());
			dropdownVM.add(vm);
		}
		metadata.setEthnicities(dropdownVM);
		
		dropdownVM = new ArrayList<>();
		for(Languages l : languages) {
			DropdownVM vm = new DropdownVM(l.getLabel(), l.getValue());
			dropdownVM.add(vm);
		}
		metadata.setLanguages(dropdownVM);
		
		dropdownVM = new ArrayList<>();
		for(MaritalStatus l : maritalStatus) {
			DropdownVM vm = new DropdownVM(l.getLabel(), l.getValue());
			dropdownVM.add(vm);
		}
		metadata.setMaritalStatus(dropdownVM);
		
		dropdownVM = new ArrayList<>();
		for(PaymentModes p : paymentModes) {
			DropdownVM vm = new DropdownVM(p.getLabel(), p.getValue());
			dropdownVM.add(vm);
		}
		metadata.setPaymentModes(dropdownVM);
		
		dropdownVM = new ArrayList<>();
		for(PreferLanguages p : preferLanguages) {
			DropdownVM vm = new DropdownVM(p.getLabel(), p.getValue());
			dropdownVM.add(vm);
		}
		metadata.setPreferLanguages(dropdownVM);
		
		dropdownVM = new ArrayList<>();
		for(Races p : races) {
			DropdownVM vm = new DropdownVM(p.getLabel(), p.getValue());
			dropdownVM.add(vm);
		}
		metadata.setRaces(dropdownVM);

		dropdownVM = new ArrayList<>();
		for(StudentStatus p : studentStatus) {
			DropdownVM vm = new DropdownVM(p.getLabel(), p.getValue());
			dropdownVM.add(vm);
		}
		metadata.setStudentStatuses(dropdownVM);
		
		dropdownVM = new ArrayList<>();
		for(Country c : countries) {
			DropdownVM vm = new DropdownVM(c.getLabel(), c.getValue());
			dropdownVM.add(vm);
		}
		metadata.setCountries(dropdownVM);
		
		return metadata;
	}

	@Override
	public MedHistoryVM getMetadataForPatientHistoty() {
		List<Statuses> statuses = Statuses.getAllStatuses();
		List<Religion> religions = Religion.getAllReligions();
		List<Occupation> occupations = Occupation.getAllOccupations();
		List<Ethnicities> ethnicities = Ethnicities.getAllEthnicities();
		List<Languages> languages = Languages.getAllLanguages();
		List<OccupationalHazards> occupationalHazards = OccupationalHazards.getAllOccupationalHazards();
		List<DegreeConfered> degreeConfered = DegreeConfered.getAllDegreeConferedServices();
		List<Education> educations = Education.getAllEducations();
		List<Country> countries = Country.getAllCountries();
		List<HomeHeating> homeHeatings = HomeHeating.getAllHomeHeatings();
		List<MaritalStatus> marStatuses = MaritalStatus.getAllMaritalStatus();
		
		
		
		MedHistoryVM metadata = new MedHistoryVM();
		List<DropdownVM> dropdownVM = new ArrayList<>();
		for(Statuses status : statuses) {
			DropdownVM vm = new DropdownVM(status.getLabel(), status.getValue());
			dropdownVM.add(vm);
		}
		metadata.setStatuses(dropdownVM);
	
		dropdownVM = new ArrayList<>();
		for(HomeHeating homeHeating : homeHeatings) {
			DropdownVM vm = new DropdownVM(homeHeating.getLabel(), homeHeating.getValue());
			dropdownVM.add(vm);
		}
		metadata.setHomeHeatings(dropdownVM);
		
		
		dropdownVM = new ArrayList<>();
		for(MaritalStatus e : marStatuses) {
			DropdownVM vm = new DropdownVM(e.getLabel(), e.getValue());
			dropdownVM.add(vm);
		}
		metadata.setMaritalStatus(dropdownVM);
		
		dropdownVM = new ArrayList<>();
		for(Ethnicities e : ethnicities) {
			DropdownVM vm = new DropdownVM(e.getLabel(), e.getValue());
			dropdownVM.add(vm);
		}
		metadata.setEthnicities(dropdownVM);
		
		dropdownVM = new ArrayList<>();
		for(DegreeConfered e : degreeConfered) {
			DropdownVM vm = new DropdownVM(e.getLabel(), e.getValue());
			dropdownVM.add(vm);
		}
		metadata.setDegreeConferred(dropdownVM);
		
		
		dropdownVM = new ArrayList<>();
		for(Education c : educations) {
			DropdownVM vm = new DropdownVM(c.getLabel(), c.getValue());
			dropdownVM.add(vm);
		}
		metadata.setEducations(dropdownVM);
		
		dropdownVM = new ArrayList<>();
		for(Religion e : religions) {
			DropdownVM vm = new DropdownVM(e.getLabel(), e.getValue());
			dropdownVM.add(vm);
		}
		metadata.setReligions(dropdownVM);
		
		dropdownVM = new ArrayList<>();
		for(Occupation e : occupations) {
			DropdownVM vm = new DropdownVM(e.getLabel(), e.getValue());
			dropdownVM.add(vm);
		}
		metadata.setOccupations(dropdownVM);
		
		dropdownVM = new ArrayList<>();
		for(OccupationalHazards g : occupationalHazards) {
			DropdownVM vm = new DropdownVM(g.getLabel(), g.getValue());
			dropdownVM.add(vm);
		}
		metadata.setOccupationHazards(dropdownVM);
		
		dropdownVM = new ArrayList<>();
		for(Languages l : languages) {
			DropdownVM vm = new DropdownVM(l.getLabel(), l.getValue());
			dropdownVM.add(vm);
		}
		metadata.setLanguages(dropdownVM);
	
		
		dropdownVM = new ArrayList<>();
		for(Country c : countries) {
			DropdownVM vm = new DropdownVM(c.getLabel(), c.getValue());
			dropdownVM.add(vm);
		}
		metadata.setCountries(dropdownVM);
		
		return metadata;
	}
}
