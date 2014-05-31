'use strict';

var app = angular.module('home-app');

///////////////////////// Search Service Start //////////////////////////////////

app.controller('HomeController',function($scope, $location, $filter, usSpinnerService ,AppointmentService, AppointmentSlotService, MetaDataService, DoctorsDataService, VisitTypeDataService){
	
	$scope.symptomFormArray = [];
	$scope.currentSymptomFormIndex = 0;
	
	$scope.levelOneOption = [
	                         {text:"Head" , value:4, sub:[
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
	                                                        {text:"Left Face" , value:16}]},
	                         {text:"Neck(Front)" , value:20, sub:[
	                                                         {text:"Throat" , value:18},
	                                                         {text:"Neck" , value:19}]},
	                         {text:"Chest" , value:21, sub:[
	                                                         {text:"Left Chest" , value:22},
	                                                         {text:"Right Chest" , value:23}]},
	                         {text:"Right Upper Arm" , value:1, sub:[{text:"" , value:""}]},
	                         {text:"Left Upper  Arm" , value:30, sub:[{text:"" , value:""}]},
	                         {text:"Abdomen" , value:25, sub:[{text:"" , value:""}]},
	                         {text:"Right Lower Arm" , value:21, sub:[{text:"" , value:""}]},
	                         {text:"Left Lower Arm" , value:22, sub:[{text:"" , value:""}]},
	                         {text:"Pelvis" , value:23, sub:[{text:"" , value:""}]},
	                         {text:"Right Thigh Area" , value:24, sub:[{text:"" , value:""}]},
	                         {text:"Left Thigh Area" , value:31, sub:[{text:"" , value:""}]},
	                         {text:"Right Calf Area" , value:32, sub:[{text:"" , value:""}]},
	                         {text:"Left Calf Area" , value:28, sub:[{text:"" , value:""}]}
	                         ];
	
	
	$scope.symptomForm = {
			levelOneArea : '',
			levelTwoArea : 1,
			painArea: 1,
			whenThisHappen : 1
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
		$scope.updateLevelTwo();
		if($scope.levelTwoOption != undefined) {
			$scope.setLevelTwo($scope.levelTwoOption[0].value,$scope.symptomFormArray[$scope.currentSymptomFormIndex].levelOneArea);
		}
		
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
		MetaDataService.GetMetaDataByLocation.get({
						location:$scope.symptomFormArray[$scope.currentSymptomFormIndex].levelOneArea,
						sublocation: subid}, function(data){
						$scope.symptomFormArray[$scope.currentSymptomFormIndex].metadata = data;
						$scope.$apply;
						usSpinnerService.stop('loading...');
		});
	}
	
	$scope.addOtherSymptom = function() {
		$scope.symptomFormArray.push({});
		$scope.currentSymptomFormIndex++;
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

