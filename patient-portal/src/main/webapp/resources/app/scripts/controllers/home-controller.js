'use strict';

var app = angular.module('home-app');

///////////////////////// Search Service Start //////////////////////////////////

app.controller('HomeController',function($scope, $location, $filter, usSpinnerService ,AppointmentService, AppointmentSlotService, 
							BodyPartsService,MetaDataService, DoctorsDataService, VisitTypeDataService){
	
	$scope.symptomFormArray = [];
	$scope.currentSymptomFormIndex = 0;
	
	$scope.loggedUserGender = gender;
	
	$scope.levelOneOption = BodyPartsService.GetData.get(); 
	console.log($scope.levelOneOption);
		/*[
		                        {text:"Head" , value:4},
	                            {text:"Scalp" , value:7},
	                            {text:"Fore Head" , value:8},
	                            {text:"Right Eye" , value:9},
	                            {text:"Left Eye" , value:10},
	                            {text:"Nose" , value:6},
	                            {text:"Right Ear" , value:11},
	                            {text:"Left Ear" , value:12},
	                            {text:"Mouth" , value:5},
	                            {text:"Jaws" , value:13},
	                            {text:"Chin" , value:14},
	                            {text:"Right Face" , value:15},
	                            {text:"Left Face" , value:16},
	                            {text:"Neck(Front)" , value:20},
                                {text:"Throat" , value:18},
                                {text:"Neck" , value:19},
	                            {text:"Chest" , value:21},
                                {text:"Left Chest" , value:22},
	                            {text:"Right Chest" , value:23},
	                            {text:"Right Upper Arm" , value:1},
	                            {text:"Left Upper  Arm" , value:30},
	                            {text:"Abdomen" , value:25},
	                            {text:"Right Lower Arm" , value:21},
	                            {text:"Left Lower Arm" , value:22},
	                            {text:"Pelvis" , value:23},
	                            {text:"Right Thigh Area" , value:24},
	                            {text:"Left Thigh Area" , value:31},
		                        {text:"Right Calf Area" , value:32},
		                        {text:"Left Calf Area" , value:28}
		                     ];*/
	
	
	$scope.symptomForm = {
			levelOneArea : '',
			levelTwoArea : 1,
			painArea: 1,
			whenThisHappen : 1,
			painLastsUnit: "seconds" 
	};
	
	// this DS will be part of POST Data
	$scope.symptomFormArray.push($scope.symptomForm);
	
	
	$scope.updateLevelTwo = function() {
		angular.forEach($scope.levelOneOption, function(item){
	        if(item.value == $scope.symptomFormArray[$scope.currentSymptomFormIndex].levelOneArea) {
	        	$scope.levelTwoOption = item.sub;
	        	$scope.symptomFormArray[$scope.currentSymptomFormIndex].selectedLevelOneText = item.text;
	        }
	      });
		
		
		$scope.$apply;
	};
	
	$scope.removeThisSymptom = function(index) {
		$scope.symptomFormArray.splice(index, 1);
		$scope.currentSymptomFormIndex = 0;
	};
	
	$scope.setLevelOne = function(id) {
		$scope.symptomFormArray[$scope.currentSymptomFormIndex].levelOneArea = id;
		console.log($scope.symptomFormArray[$scope.currentSymptomFormIndex].levelOneArea);
		//$scope.updateLevelTwo();
		/*if($scope.levelTwoOption != undefined) {
			$scope.setLevelTwo($scope.levelTwoOption[0].value,$scope.symptomFormArray[$scope.currentSymptomFormIndex].levelOneArea);
		}*/
		getMetadata(id);
	};
	
	$scope.setLevelTwo = function(id, p_id) {
		$scope.symptomFormArray[$scope.currentSymptomFormIndex].levelTwoArea = id;
		$scope.symptomFormArray[$scope.currentSymptomFormIndex].levelOneArea = p_id;
		$scope.updateLevelTwo();
		
		
		angular.forEach($scope.levelTwoOption, function(item){
	        if(item.value == $scope.symptomFormArray[$scope.currentSymptomFormIndex].levelTwoArea) {
	        	$scope.symptomFormArray[$scope.currentSymptomFormIndex].selectedLevelTwoText = item.text;
	        }
	      });
		
		getMetadata(id);
	};
	
	/*$scope.setLevelTwoSelectedText= function() {
		angular.forEach($scope.levelTwoOption, function(item){
	        if(item.value == $scope.symptomFormArray[$scope.currentSymptomFormIndex].levelTwoArea) {
	        	$scope.symptomFormArray[$scope.currentSymptomFormIndex].selectedLevelTwoText = item.text;
	        }
	      });
	};*/
	
	$scope.setWhenThisHappenSelectedText = function() {
		angular.forEach($scope.symptomFormArray[$scope.currentSymptomFormIndex].metadata.whenThisHappen, function(item){
			if(item.id == $scope.symptomFormArray[$scope.currentSymptomFormIndex].whenThisHappen) {
	        	$scope.symptomFormArray[$scope.currentSymptomFormIndex].selectedWhenThisHappenText = item.description;
	        }
	      });
	};
	
	$scope.setDescribePainSelectedText = function() {
		angular.forEach($scope.symptomFormArray[$scope.currentSymptomFormIndex].metadata.painArea, function(item){
			if(item.id == $scope.symptomFormArray[$scope.currentSymptomFormIndex].painArea) {
	        	$scope.symptomFormArray[$scope.currentSymptomFormIndex].selectedPainAreaText = item.description;
	        }
	      });
	};
	
	$scope.setRelievedBySelectedText = function() {
		angular.forEach($scope.symptomFormArray[$scope.currentSymptomFormIndex].metadata.relievedBy, function(item){
			if(item.id == $scope.symptomFormArray[$scope.currentSymptomFormIndex].relievedBy) {
	        	$scope.symptomFormArray[$scope.currentSymptomFormIndex].selectedRelievedByText = item.description;
	        }
	      });
	};
	
	$scope.setMadeWorseBySelectedText = function() {
		angular.forEach($scope.symptomFormArray[$scope.currentSymptomFormIndex].metadata.worseBy, function(item){
			if(item.id == $scope.symptomFormArray[$scope.currentSymptomFormIndex].worseBy) {
	        	$scope.symptomFormArray[$scope.currentSymptomFormIndex].selectedWorseByText = item.description;
	        }
	      });
	};
	
	$scope.setAssociatedSymptomsSelectedText = function() {
		angular.forEach($scope.symptomFormArray[$scope.currentSymptomFormIndex].metadata.associatedSymptoms, function(item){
			if(item.id == $scope.symptomFormArray[$scope.currentSymptomFormIndex].associatedSymptoms) {
	        	$scope.symptomFormArray[$scope.currentSymptomFormIndex].selectedAssociatedSymptomsText = item.description;
	        }
	      });
	};
	
	$scope.choosePrimaryDoctor = function() {
		$scope.appointmentForm.appointmentDate = '';
		$scope.appointmentForm.slot.length=0;
		
		angular.forEach($scope.primaryDoctorOption, function(item){
			if(item.value == $scope.appointmentForm.primaryDoctor) {
	        	$scope.appointmentForm.selectedprimaryDoctorText = item.text;
	        }
	      });
	};
	
	$scope.chooseSpecialty = function() {
		angular.forEach($scope.specialtiesOption, function(item){
			if(item.value == $scope.appointmentForm.specialty) {
	        	$scope.appointmentForm.selectedSpecialtyText = item.text;
	        }
	      });
	};
	
	$scope.chooseDoctor = function() {
		angular.forEach($scope.doctorsOption, function(item){
			if(item.value == $scope.appointmentForm.doctor) {
	        	$scope.appointmentForm.selectedDoctorText = item.text;
	        }
	      });
	};
	
	$scope.metadata = {
			painArea : [] 
	};
	function getMetadata(subid){
		usSpinnerService.spin('loading...');
		if($scope.symptomFormArray[$scope.currentSymptomFormIndex].levelOneArea != undefined){
			MetaDataService.GetMetaDataByLocation.get({
				location:$scope.symptomFormArray[$scope.currentSymptomFormIndex].levelOneArea,
				sublocation: subid}, function(data){
				$scope.symptomFormArray[$scope.currentSymptomFormIndex].metadata = data;
				$scope.$apply;
				usSpinnerService.stop('loading...');
			});
		}
		else {
			$scope.symptomFormArray[$scope.currentSymptomFormIndex].metadata = {};
			$scope.$apply;
			usSpinnerService.stop('loading...');
		}
	}
	
	$scope.addOtherSymptom = function() {
		$scope.symptomFormArray.push({});
		$scope.currentSymptomFormIndex++;
		$scope.symptomFormArray[$scope.currentSymptomFormIndex].severity = 0;
		$("#imgZoomOutButton").click();
		console.log($scope.symptomFormArray);
	};
	
	$scope.setcurrentSymptomFormIndex = function(index) {
		$scope.currentSymptomFormIndex = index;
		$scope.$apply;
		console.log($scope.symptomFormArray[$scope.currentSymptomFormIndex]);
	};
	
	$scope.primaryDoctorOption = DoctorsDataService.GetData.get();
	
	
	$scope.specialtiesOption = [  {text:"Pediatrician", value:1},
	                              {text:'Cardiology', value:2},
	                              {text:'Neurology', value:3},
	                              {text:'Radiology', value:4}];
	
	$scope.doctorsOption = DoctorsDataService.GetData.get();
	
	$scope.visitTypes = VisitTypeDataService.GetData.get();
	
	// this DS will be part of POST Data
	$scope.appointmentForm = {
			appointmentDate : '',
			slot : [],
			primaryDoctor: 1,
			specialty : 1,
			doctor : 1
	}; 
	
	$scope.slots = [];
	$scope.checkAvailability = function() {
		AppointmentSlotService.GetAppointmentSlots.get({date:$filter('date')($scope.appointmentForm.appointmentDate,'yyyyMMdd'),
												doctor_id: $scope.appointmentForm.primaryDoctor},function(data) {
			$scope.slots = data;
		});
	};
	
	var isMutipleSlotSelectionAllowed = true; 
	$scope.markAppoitment = function(slot) {
		if(isMutipleSlotSelectionAllowed == false) {
			if(slot.status == 'REQUESTED') {
				slot.status = 'AVAILABLE';
			} else if(slot.status == 'AVAILABLE') {
				slot.status = 'REQUESTED';
			}
		} else {
			angular.forEach($scope.slots,  function(_slot) {
				if(_slot.status == 'REQUESTED') {
					_slot.status = 'AVAILABLE';
				}
			});
			slot.status = 'REQUESTED';
		}
	};
	
	$scope.chooseDate = function(dateValue) {
		if(dateValue!=undefined || dateValue!=new Date()) {
			AppointmentSlotService.GetAppointmentSlots.get({date:$filter('date')(dateValue,'yyyyMMdd'),
				doctor_id: $scope.appointmentForm.primaryDoctor},function(data) {
					$scope.slots = data;
			});
		}
	};
	
	$scope.bookAppoitment = function () {
		$scope.appointmentForm.slot = $filter('filter')($scope.slots,{status:"REQUESTED"});
		$scope.appointmentForm.appointmentWith = $scope.appointmentForm.primaryDoctor; // hardcodded for now
		
		angular.forEach($scope.symptomFormArray, function(data){
			data.metadata = ''; 
		});
		
		AppointmentSlotService.BookAppointmentSlot.save({
			appointment : $scope.appointmentForm,
			symptoms : $scope.symptomFormArray
		}, function(response) {
			$scope.step = 4;
			$scope.appointmentId = response.appointmentId;
			

			$scope.appointmentList = AppointmentService.GetAllApps.get({}, function(responce) {
				console.log(responce);
			});
			console.log(response);
		});
	};
	
	
	$scope.step = 1;
	
	$scope.doneSymptomSelection = function () {
		$scope.step = 2;
		
	};
	
	$scope.gotoSymptomSelection = function () {
		$scope.step = 1;
	};
    

	$scope.gotoConfirmationPage = function () {
		$scope.step = 3;
	};
	
	$scope.gotoAppointmentPage = function () {
		$scope.step = 2;
	};
	
	$scope.today = function() {
	    $scope.appointmentForm.appointmentDate = new Date();
	  };
	  $scope.today();

	  $scope.toggleWeeks = function () {
	    $scope.showWeeks = ! $scope.showWeeks;
	  };

	  $scope.clear = function () {
	    $scope.appointmentDate = null;
	  };
	  var myDate = new Date();
	  myDate.setDate(myDate.getDate() + 3);
	  // Disable weekend selection
	  $scope.disabled = function(date, mode) {
	    return ( mode === 'day' && ( date.getDay() === 0 || date.getDay() === 6 ) );
	  };

	  $scope.toggleMin = function() {
	    $scope.minDate = ( $scope.minDate ) ? null : myDate;
	  };
	  $scope.toggleMin();

	  $scope.open = function() {
	    $timeout(function() {
	      $scope.opened = true;
	    });
	  };

	  $scope.dateOptions = {
	    'year-format': "'yy'",
	    'starting-day': 1
	  };
		  
	
	$scope.severityFormatting = function(value) { 
		$("span.innerBar").css('width', value+'%');
		return value + " %" ;
	};
	
	$scope.painLastsOptions = [{ text:1, value:1 }, { text:2, value:2 }, { text:3, value:3 },
	                           { text:4, value:4 }, { text:5, value:5 }, { text:6, value:6 },
	                           { text:7, value:7 }, { text:8, value:8 }, { text:9, value:9 },
	                           { text:10, value:10 }, { text:11, value:11 }, { text:12, value:12 },
	                           { text:13, value:13 }, { text:14, value:14 }, { text:15, value:15 },
	                           { text:16, value:16 }, { text:17, value:17 }, { text:18, value:18 },
	                           { text:19, value:19 }, { text:20, value:20 }, { text:21, value:21 },
	                           { text:22, value:22 }, { text:23, value:23 }, { text:24, value:24 },
	                           { text:25, value:25 }, { text:26, value:26 }, { text:27, value:27 },
	                           { text:28, value:28 }, { text:29, value:29 }, { text:30, value:30 }
	                           ];
	
});

app.controller('AppointmentListController',function($scope, $location, $filter, AppointmentService) {
	$scope.appointmentList = AppointmentService.GetAllApps.get({}, function(responce) {
		console.log(responce);
	});
	
	
	$scope.ViewDetails= function(aptId) {
		console.log(aptId);
		AppointmentService.GetAppointmentsDetails.get({'appointmentId': aptId}, function(data) {
			console.log(data);
		$scope.details = data;	
		
		
		});
		
	};
	
	
	
	
	
});

