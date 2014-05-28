'use strict';

var patientPortal = angular.module('patientPortal');

patientPortal.controller('MenuBarController', function($scope,MetadataService, PatientInfo) {
	
	$scope.initial = {};
	
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
	
	$scope.importantForm = {};
	$scope.demographicForm = {};
	
	$scope.metadatas = MetadataService.GetMetadata.get(function(data) {
		
	});
	
	$scope.updateInsuranceForm = function() {
		console.log($scope.insurance);
		PatientInfo.savePrimaryInsurance.save({insuranceForm : $scope.insurance}, function() {
			console.log("Commited");
		});
	};
	
	$scope.updateSecInsuranceForm = function() {
		console.log($scope.secInsurance);
		PatientInfo.saveSecondaryInsurance.save({secInsuranceForm : $scope.secInsurance}, function() {
			console.log("Commited");
		});
	};
	
	$scope.resetSubscriberForm = function() {
		console.log($scope.insurance.subscriberForm);
		angular.copy($scope.initial, $scope.insurance.subscriberForm);
		console.log($scope.insurance.subscriberForm);
	};
	
	PatientInfo.getImpDetails.get( function(response) {
		$scope.importantForm = response;
	});
	
	PatientInfo.getDemographicsDetails.get( function(response) {
		$scope.demographicForm = response;
	});
	
	PatientInfo.getPrimaryInsuranceDetails.get( function(response) {
		$scope.insurance = response;
	});
	
	PatientInfo.getSecondaryInsuranceDetails.get( function(response) {
		$scope.secInsurance = response;
	});
	
	$scope.saveImportantDetails = function() {
		console.log($scope.importantForm);
		PatientInfo.saveImportant.save({importantForm : $scope.importantForm}, function() {
			console.log("Commited");
		});
	};
	
	$scope.saveDemographicsDetails = function() {
		console.log($scope.demographicForm);
		PatientInfo.saveDemographics.save({demographicForm : $scope.demographicForm}, function() {
			console.log("Commited");
		});
	};
});