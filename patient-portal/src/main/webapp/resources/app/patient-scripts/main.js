'use strict';

var patientPortal = angular.module('patientPortal');

patientPortal.controller('MenuBarController', function($scope,MetadataService) {
	$scope.tabs = [
	               { title:'Important',active: true, content:'/resources/app/patient-views/important.html' },
	               { title:'Demographics', content:'/resources/app/patient-views/demographics.html'},
	               { title:'Insurances', content:'/resources/app/patient-views/insurances.html'}
	             ];
	
	$scope.metadatas = MetadataService.GetMetadata.get(function(data) {
		console.log(data);
	});
	/* Information Page start*/
	$scope.statuses = [
	                   { label: 'Active', value: 1},
	                   { label: 'Inactive', value: 2 },
	                   { label: 'Inactive - Deceased', value: 3 }
	                 ]; 
	
	$scope.communications = [
	                   { label: 'Home Phone', value: 'Phone'},
	                   { label: 'Work Phone', value: 'Work' },
	                   { label: 'Cell Phone', value: 'Cell' },
	                   { label: 'Snail Mail', value: 'Snail' }
	                 ];
	
	$scope.languages = [
	  	                   { label: 'English', value: 'EN'},
	  	                   { label: 'Bilingual Spanish/English', value: 'ES' },
	  	                   { label: 'Bilingual French/English', value: 'FR' },
	  	                 ];
	
	$scope.YesNos = [
	  	                   { label: 'Yes', value: 'Y'},
	  	                   { label: 'No', value: 'N' }
	  	                 ];
	
	$scope.paymentModes = [
	                   { label: 'Cash', value: 'Cash'},
	                   { label: 'Insurance', value: 'Insurance' },
	                   { label: 'Insurance Out of Network', value: 'Insurance Out of Network' },
	                   { label: 'Auto Accident', value: 'Auto Accident' },
	                   { label: 'Workers Comp', value: 'Workers Comp' }
	                 ];
	/* Information Page end*/
	
	/* Demographics Page start*/
	$scope.genders = [
	                   { label: 'Male', value: 'Male'},
	                   { label: 'Female', value: 'Female' },
	                   { label: 'Other', value: 'Other' }
	                 ]; 
	
	$scope.races = [
		                   { label: 'American Indian or Alaska Native', value: 'indian'},
		                   { label: 'Asian', value: 'asian' },
		                   { label: 'Black or African American', value: 'black' },
		                   { label: 'Native Hawaiian or Other Pacific Islander', value: 'hawaiian' }
		                 ];
	
	$scope.ethnicities = [
	                       { label: 'Hispanic or Latino', value: 'hispanic'},
		                   { label: 'Not Hispanic or Latino', value: 'not_hispanic' },
		                   { label: 'Unknown', value: 'unknown' },
		                   { label: 'other', value: 'other' }
	                      ];
	
	$scope.preferLanguages = [
	                       { label: 'Chinese', value: 'chinese'},
		                   { label: 'English', value: 'english' },
		                   { label: 'French', value: 'french' },
		                   { label: 'Italian', value: 'italian' }
	                      ];
	
	$scope.stdstatuses = [
		                       { label: 'Employed', value: 'E'},
			                   { label: 'Full-time student', value: 'F' },
			                   { label: 'Not a Student', value: 'N' },
			                   { label: 'Part-time Student', value: 'P' }
		                      ];
	
	$scope.maritalStatuses = [
	                       { label: 'Single', value: 'Single'},
		                   { label: 'Married', value: 'Married' },
		                   { label: 'Widowed', value: 'Widowed' },
		                   { label: 'Divorce', value: 'Divorce' },
		                   { label: 'Other', value: 'Other' }
	                      ];

	$scope.epsdtservices = [
	                       { label: '1 - Children', value: 1},
		                   { label: '2 - Family Planning', value: 2},
		                   { label: '3 - Children / Family Planning', value: 3 },
		                   { label: '4 - Pregnancy', value: 4 }
	                      ];

	
	/* Demographics Page end*/
})