package com.mnt.vm;

import java.util.List;

import org.codehaus.jackson.annotate.JsonProperty;

public class PastAndFutureAppointmentsVM {

    @JsonProperty("pastAppointments") public List<AppointmentVM> pastAppointments;
    @JsonProperty("futureAppointments") public List<AppointmentVM> futureAppointments;
	
    
    public List<AppointmentVM> getPastAppointments() {
		return pastAppointments;
	}
	public void setPastAppointments(List<AppointmentVM> pastAppointments) {
		this.pastAppointments = pastAppointments;
	}
	public List<AppointmentVM> getFutureAppointments() {
		return futureAppointments;
	}
	public void setFutureAppointments(List<AppointmentVM> futureAppointments) {
		this.futureAppointments = futureAppointments;
	}

    
    
    
}




