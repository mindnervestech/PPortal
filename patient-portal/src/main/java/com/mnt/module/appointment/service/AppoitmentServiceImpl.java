package com.mnt.module.appointment.service;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

import org.springframework.stereotype.Service;

import com.google.common.collect.Range;
import com.mnt.model.Appointment;
import com.mnt.module.appointment.SlotStatus;
import com.mnt.module.appointment.TimeConverter;
import com.mnt.module.appointment.data.AppointmentRequest;
import com.mnt.module.appointment.data.AppointmentSlotViewModel;

@Service
public class AppoitmentServiceImpl implements AppoitmentService {
	
	static int minInAday = 1440;//60*24;
	
	@Override
	public Set<AppointmentSlotViewModel> getAppointmentSlots(Long appointmentOf_Id,String appointmentOf_Type, Calendar day, int perSlot) {
		List<Appointment> appointments = Appointment.getAppointmentSlots(appointmentOf_Id, appointmentOf_Type, day);
		return buildAppointmentSlots(appointments, perSlot);
	}

	private Set<AppointmentSlotViewModel> buildAppointmentSlots(
			List<Appointment> appointments, int perSlot) {
		Set<AppointmentSlotViewModel> slots = new TreeSet<AppointmentSlotViewModel>();
		int noOfSlotsInADay = minInAday / perSlot;
		
		for (int startTime = 0,  slot = 1 ; slot <= noOfSlotsInADay ; slot++, startTime = slot * perSlot) {
			boolean isSlotTaken = false;
			AppointmentSlotViewModel appointmentSlot;
			for (Appointment appointment : appointments) {
				 try {
					 if(appointment.startMin > appointment.endMin) {
						 Range.open(startTime, startTime + perSlot).intersection(Range.open(appointment.startMin, minInAday + appointment.endMin));
						 isSlotTaken = true;
					 } else {
						 Range.open(startTime, startTime + perSlot).intersection(Range.open(appointment.startMin, appointment.endMin));
						 isSlotTaken = true;
					 }
				 } catch(Exception exception) {
					 // Slot is not taken.
					 isSlotTaken = false;
				 }
				 
				 if(isSlotTaken) {
					 break;
				 }
			}
			
			if(isSlotTaken) {
				 appointmentSlot = new AppointmentSlotViewModel(startTime, startTime + perSlot, SlotStatus.BOOKED );
			} else {
				 appointmentSlot = new AppointmentSlotViewModel(startTime, startTime + perSlot, SlotStatus.AVAILABLE );
			}
			
			slots.add(appointmentSlot);
			
		}
		return slots;
	}

	@Override
	public void bookAppointment(AppointmentRequest request) throws ParseException {
		Calendar cal = Calendar.getInstance();
		cal.setTime(request.bookingRequest.appointmentDate);
		int	startTime = TimeConverter.convertDayTimeToElapsedMin(request.bookingRequest.slots[0].startTime);
		int	endTime = TimeConverter.convertDayTimeToElapsedMin(request.bookingRequest.slots[0].endTime);
		Appointment.makeAppointmentOfXForADayY
		(request.bookingRequest.appointmentWith,"Doctor",1l,"User",startTime, endTime, cal);
		
	}
	
	

}
