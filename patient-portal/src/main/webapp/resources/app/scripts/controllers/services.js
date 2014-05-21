var app = angular.module('home-app');

app.service('AppointmentSlotService',function($resource){
	this.GetAppointmentSlots = $resource(
			'get-appointment-slots?date=:date',
			{alt:'json',callback:'JSON_CALLBACK'},
			{
				get: {method:'GET', params:{date:'@date'}, isArray:true}
			}
	);
	
	this.BookAppointmentSlot = $resource('book-appointment-slots');
});

app.service('MetaDataService',function($resource){
	this.GetMetaDataByLocation = $resource(
			'get-pain-metadata?location=:location&sublocation=:sublocation',
			{alt:'json',callback:'JSON_CALLBACK'},
			{
				get: {method:'GET', params:{location:'@location', sublocation:'@sublocation'}}
			}
	);
	
});

app.service('DoctorsDataService',function($resource){
	this.GetData = $resource(
			'/get-all-doctors',
			{alt:'json',callback:'JSON_CALLBACK'},
			{
				get: {method:'GET', isArray:true}
			}
	);
	
});