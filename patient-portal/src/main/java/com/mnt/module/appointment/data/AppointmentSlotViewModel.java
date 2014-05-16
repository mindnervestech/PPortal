package com.mnt.module.appointment.data;

import org.codehaus.jackson.annotate.JsonIgnore;

import com.mnt.module.appointment.SlotStatus;
import com.mnt.module.appointment.TimeConverter;

public class AppointmentSlotViewModel implements Comparable<AppointmentSlotViewModel>{

	public String startTime;
	public String endTime;
	public SlotStatus status;
	
	
	private Integer startTimeInMin;

	public AppointmentSlotViewModel(int startTime, int endTime, SlotStatus status) {
		if(status == SlotStatus.BOOKED)
			System.out.println(startTime + " - " + endTime);
		
		this.startTime = TimeConverter.convertElapsedMinToDayTime(startTime);
		this.endTime = TimeConverter.convertElapsedMinToDayTime(endTime);
		if(status == SlotStatus.BOOKED)
		 System.out.println(this.startTime + " - " + this.endTime);
		this.status = status; 
		startTimeInMin = Integer.valueOf(startTime);
		
	}

	@Override
	public int compareTo(AppointmentSlotViewModel o) {
		return startTimeInMin.compareTo(o.startTimeInMin);
	}


}
