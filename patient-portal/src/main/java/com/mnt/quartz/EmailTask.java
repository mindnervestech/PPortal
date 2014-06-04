package com.mnt.quartz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mnt.email.Mail;
import com.mnt.model.Appointment;
import com.mnt.model.Patient;
import com.mnt.module.appointment.TimeConverter;

public class EmailTask {
	
	@Autowired
	@Qualifier("mail")
	Mail mm;
	
	public void sendEmail(Appointment appointment) {
		//System.out.print(mail);
		//ApplicationContext context = 
	        //     new ClassPathXmlApplicationContext("spring-mail.xml");
	 
			//Mail mm = (Mail) context.getBean("mail");
			
			String salutation = "Mr.";
			String appointmentDate = appointment.getAppointmentDate() + "/" + 
								appointment.getAppointmentMonth() + "/" + appointment.getAppointmentYear();
			String appointmentTime = TimeConverter.convertElapsedMinToDayTime(appointment.getStartMin()) +
						" - " + TimeConverter.convertElapsedMinToDayTime(appointment.getEndMin());
			
			System.out.println("Inside");
			Patient patient = Patient.getPatientById(appointment.getAppointmentOf_Id());
			
			if(patient.getGender().equals("FEMALE")) {
				salutation = "Mrs.";
			}
	        mm.sendMail("dhairyashil.bankar@gmail.com",
	    		   patient.getPatientEmail(),
	    		   "Reminder", 
	    		   salutation + " " + patient.getFirstname() + "\nYour appointment is on "+ appointmentDate
	    		   + " at Time " + appointmentTime);
	        System.out.println("Hello Sending Mail");
	}
}
