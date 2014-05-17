'use strict';

var patientPortal = angular.module('patientPortal');

patientPortal.controller('MenuBarController', function($scope,MetadataService) {
	$scope.tabs = [
	               { title:'Important',active: true, content:'/resources/app/patient-views/important.html' },
	               { title:'Demographics', content:'/resources/app/patient-views/demographics.html'},
	               { title:'Insurances', content:'/resources/app/patient-views/insurances.html'}
	             ];
	
	$scope.insurance={
			companyName : 'Degree'
	};
	
	$scope.metadatas = MetadataService.GetMetadata.get(function(data) {
		
	});
	
	$scope.updateInsuranceForm = function() {
		console.log($scope.insurance);
	};
});