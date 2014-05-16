'use strict';

var app = angular.module('home-app');

///////////////////////// Search Service Start //////////////////////////////////

app.controller('HomeController',function($scope, $filter, AppointmentSlotService, MetaDataService){
	
	$scope.symptomFormArray = [];
	$scope.currentSymptomFormIndex = 0;
	
	$scope.levelOneOption = [
	                         {text:"Head" , value:1, sub:[
	                                                        {text:"Scalp" , value:21},
	                                                        {text:"Fore Head" , value:22},
	                                                        {text:"Right Eye" , value:23},
	                                                        {text:"Left Eye" , value:24},
	                                                        {text:"Nose" , value:25},
	                                                        {text:"Right Ear" , value:31},
	                                                        {text:"Left Ear" , value:32},
	                                                        {text:"Mouth" , value:30},
	                                                        {text:"Jaws" , value:28},
	                                                        {text:"Chin" , value:29},
	                                                        {text:"Right Face" , value:26},
	                                                        {text:"Left Face" , value:27}]},
	                         {text:"Neck(Front)" , value:2, sub:[
	                                                         {text:"Throat" , value:14},
	                                                         {text:"Neck" , value:15}]},
	                         {text:"Chest" , value:3, sub:[
	                                                         {text:"Left Chest" , value:16},
	                                                         {text:"Right Chest" , value:17}]},
	                         {text:"Right Upper Arm" , value:4, sub:[{text:"" , value:""}]},
	                         {text:"Left Upper  Arm" , value:5, sub:[{text:"" , value:""}]},
	                         {text:"Abdomen" , value:6, sub:[{text:"" , value:""}]},
	                         {text:"Right Lower Arm" , value:7, sub:[{text:"" , value:""}]},
	                         {text:"Left Lower Arm" , value:8, sub:[{text:"" , value:""}]},
	                         {text:"Pelvis" , value:9, sub:[{text:"" , value:""}]},
	                         {text:"Right Thigh Area" , value:10, sub:[{text:"" , value:""}]},
	                         {text:"Left Thigh Area" , value:11, sub:[{text:"" , value:""}]},
	                         {text:"Right Calf Area" , value:12, sub:[{text:"" , value:""}]},
	                         {text:"Left Calf Area" , value:13, sub:[{text:"" , value:""}]}
	                         ];
	
	
	$scope.symptomForm = {
			levelOneArea : 1,
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
	        }
	      });
		$scope.setLevelTwo($scope.levelTwoOption[0].value);
		$scope.$apply;
	};
	
	$scope.removeThisSymptom = function(index) {
		$scope.symptomFormArray.splice(index, 1);
		$scope.currentSymptomFormIndex = 0;
	};
	
	$scope.setLevelOne = function(id) {
		$scope.symptomFormArray[$scope.currentSymptomFormIndex].levelOneArea = id;
		$scope.updateLevelTwo();
		
	};
	
	$scope.setLevelTwo = function(id) {
		$scope.symptomFormArray[$scope.currentSymptomFormIndex].levelTwoArea = id;
		getMetadata(id);
	};
	$scope.metadata = {
			painArea : [] 
	};
	function getMetadata(subid){
		MetaDataService.GetMetaDataByLocation.get({
						location:$scope.symptomFormArray[$scope.currentSymptomFormIndex].levelOneArea,
						sublocation: subid}, function(data){
			
						$scope.symptomFormArray[$scope.currentSymptomFormIndex].metadata = data;
						$scope.$apply;
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
	
	$scope.primaryDoctorOption = [{text:"Dr Gary", value:1},
	                              {text:'Dr James', value:2},
	                              {text:'Dr Jagbir', value:3},
	                              {text:'Dr Amit', value:4}];
	
	
	$scope.specialtiesOption = [  {text:"Pediatrician", value:1},
	                              {text:'Cardiology', value:2},
	                              {text:'Neurology', value:3},
	                              {text:'Radiology', value:4}];
	
	$scope.doctorsOption = [{text:"Dr Gary", value:1},
	                        {text:'Dr James', value:2},
	                        {text:'Dr Jagbir', value:3},
	                        {text:'Dr Amit', value:4}];
	
	
	
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
		AppointmentSlotService.GetAppointmentSlots.get({date:$filter('date')($scope.appointmentForm.appointmentDate,'yyyyMMdd')},function(data) {
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
	
	
	$scope.bookAppoitment = function () {
		$scope.appointmentForm.slot = $filter('filter')($scope.slots,{status:"REQUESTED"});
		$scope.appointmentForm.appointmentWith = 1; // hardcodded for now
		AppointmentSlotService.BookAppointmentSlot.save({
			appointment : $scope.appointmentForm,
			symptoms : $scope.symptomFormArray
		});
	};
	
    
	
	
	
	
	
});
