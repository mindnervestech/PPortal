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
	this.saveDemographics = $resource('/save-patient-demographic-details');
	this.savePrimaryInsurance = $resource('/save-patient-primary-insurance-details');
	this.saveSecondaryInsurance = $resource('/save-patient-secondary-insurance-details');
	
	this.getImpDetails = $resource(
			'/get-patient-imp-details',
			{alt:'json',callback:'JSON_CALLBACK'},
			{
				get: {method:'GET'}
			}
	);
	
	this.getDemographicsDetails = $resource(
			'/get-patient-demographic-details',
			{alt:'json',callback:'JSON_CALLBACK'},
			{
				get: {method:'GET'}
			}
	);
	
	this.getPrimaryInsuranceDetails = $resource(
			'/get-patient-primary-insurance-details',
			{alt:'json',callback:'JSON_CALLBACK'},
			{
				get: {method:'GET'}
			}
	);
	
	this.getSecondaryInsuranceDetails = $resource(
			'/get-patient-secondary-insurance-details',
			{alt:'json',callback:'JSON_CALLBACK'},
			{
				get: {method:'GET'}
			}
	);
});