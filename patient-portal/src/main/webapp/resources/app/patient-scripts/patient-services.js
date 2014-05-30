'use strict';

var patientPortal = angular.module('patientPortal');


patientPortal.service('MetadataService',function($resource){
	this.GetMetadata = $resource(
			urlContext + '/get-metadata',
			{alt:'json',callback:'JSON_CALLBACK'},
			{
				get: {method:'GET'}
			}
	);
});

patientPortal.service('PatientInfo',function($resource){
	this.saveImportant = $resource(urlContext + '/save-patient-imp-details');
	this.saveDemographics = $resource(urlContext + '/save-patient-demographic-details');
	this.savePrimaryInsurance = $resource(urlContext + '/save-patient-primary-insurance-details');
	this.saveSecondaryInsurance = $resource(urlContext + '/save-patient-secondary-insurance-details');
	
	this.getImpDetails = $resource(
			urlContext + '/get-patient-imp-details',
			{alt:'json',callback:'JSON_CALLBACK'},
			{
				get: {method:'GET'}
			}
	);
	
	this.getDemographicsDetails = $resource(
			urlContext + '/get-patient-demographic-details',
			{alt:'json',callback:'JSON_CALLBACK'},
			{
				get: {method:'GET'}
			}
	);
	
	this.getPrimaryInsuranceDetails = $resource(
			urlContext + '/get-patient-primary-insurance-details',
			{alt:'json',callback:'JSON_CALLBACK'},
			{
				get: {method:'GET'}
			}
	);
	
	this.getSecondaryInsuranceDetails = $resource(
			urlContext + '/get-patient-secondary-insurance-details',
			{alt:'json',callback:'JSON_CALLBACK'},
			{
				get: {method:'GET'}
			}
	);
});