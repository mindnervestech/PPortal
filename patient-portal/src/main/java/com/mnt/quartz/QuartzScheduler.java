package com.mnt.quartz;

import java.util.List;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.mnt.model.Appointment;

public class QuartzScheduler extends QuartzJobBean {
	private EmailTask emailTask;
	 
	public void setEmailTask(EmailTask emailTask) {
		this.emailTask = emailTask;
	}
 
	protected void executeInternal(JobExecutionContext context)
		throws JobExecutionException {
		List<Appointment> appointments = Appointment.getAllAppointmentsXsDayAfter(2,4,6);
		
		for(Appointment a: appointments) {
			emailTask.sendEmail(a);
		}
	}
}
