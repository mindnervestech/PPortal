'use strict';

var patientPortal = angular.module('patientPortal');


patientPortal.service('MetadataService',function($resource){
	this.GetMetadata = $resource(
			'/get-metadata',
			{alt:'json',callback:'JSON_CALLBACK'},
			{
				get: {method:'GET'}
			}
	);
});

patientPortal.service('PatientInfo',function($resource){
	this.saveImportant = $resource('/save-patient-imp-details');
	this.getImpDetails = $resource(
			'/get-patient-imp-details',
			{alt:'json',callback:'JSON_CALLBACK'},
			{
				get: {method:'GET'}
			}
	);
});