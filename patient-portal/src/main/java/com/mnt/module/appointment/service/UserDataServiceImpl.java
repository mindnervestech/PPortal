package com.mnt.module.appointment.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.mnt.model.Doctors;
import com.mnt.model.Patient;
import com.mnt.pojo.User;
import com.mnt.vm.ApplicationDataVM;

@Service
public class UserDataServiceImpl implements UserDataService{

	@Override
	public List<ApplicationDataVM> getAllDoctorsData() {
		List<ApplicationDataVM> doctorList = new ArrayList<>();
		List<Doctors> doctors = Doctors.findAll();
		
		for(Doctors d: doctors) {
			ApplicationDataVM vm = new ApplicationDataVM(d.getUsername(), d.getId().toString());
			doctorList.add(vm);
		}
		return doctorList;
	}

	@Override
	public Patient validatePatientUser(User user) {
		Patient patient = Patient.getPatientByCodeAndPassword(user);
		return patient;
	}

	@Override
	public void updateUserPassword(String code, String newPassword) {
		Patient patient = Patient.getPatientByCode(code);
		patient.setPatientPassword(newPassword);
		patient.setTemp(false);
		patient.update();
	}

}
