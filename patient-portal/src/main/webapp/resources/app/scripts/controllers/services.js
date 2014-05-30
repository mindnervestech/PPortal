var app = angular.module('home-app');

app.service('AppointmentSlotService',function($resource){
	this.GetAppointmentSlots = $resource(
			urlContext +'/get-appointment-slots?date=:date&doctor_id=:doctor_id',
			{alt:'json',callback:'JSON_CALLBACK'},
			{
				get: {method:'GET', params:{date:'@date', doctor_id:'@doctor_id'}, isArray:true}
			}
	);
	
	this.BookAppointmentSlot = $resource(urlContext +'/book-appointment-slots');
});

app.service('MetaDataService',function($resource){
	this.GetMetaDataByLocation = $resource(
			urlContext + '/get-pain-metadata?location=:location&sublocation=:sublocation',
			{alt:'json',callback:'JSON_CALLBACK'},
			{
				get: {method:'GET', params:{location:'@location', sublocation:'@sublocation'}}
			}
	);
	
});

app.service('DoctorsDataService',function($resource){
	this.GetData = $resource(
			urlContext + '/get-all-doctors',
			{alt:'json',callback:'JSON_CALLBACK'},
			{
				get: {method:'GET', isArray:true}
			}
	);
	
});

app.service('AppointmentService',function($resource){
	this.GetAllApps = $resource(
			urlContext + '/get-all-appointments',
			{alt:'json',callback:'JSON_CALLBACK'},
			{
				get: {method:'GET'}
			}
	);
	
});