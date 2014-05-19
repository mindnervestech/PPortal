'use strict';

var patientPortal = angular.module('patientPortal');

patientPortal.controller('MenuBarController', function($scope,MetadataService) {
	$scope.tabs = [
	               { title:'Important',active: true, content:'/resources/app/patient-views/important.html' },
	               { title:'Demographics', content:'/resources/app/patient-views/demographics.html'},
	               { title:'Insurances', content:'/resources/app/patient-views/insurance-main.html'}
	             ];
	
	$scope.tabs.insurances = [
	               { title:'Primary Insurance',active: true, content:'/resources/app/patient-views/primary-insurances.html' },
	               { title:'Secondary Insurance', content:'/resources/app/patient-views/secondary-insurances.html' },
	             ];
	
	$scope.insurance={
			companyName : 'Degree'
	};
	
	$scope.secInsurance={
			companyName : 'Degree2'
	};
	
	$scope.metadatas = MetadataService.GetMetadata.get(function(data) {
		
	});
	
	$scope.updateInsuranceForm = function() {
		console.log($scope.insurance);
	};
	
	$scope.updateSecInsuranceForm = function() {
		console.log($scope.secInsurance);
	};
});