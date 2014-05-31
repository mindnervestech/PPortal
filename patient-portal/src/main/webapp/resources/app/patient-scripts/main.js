'use strict';

var patientPortal = angular.module('patientPortal');



function tenant($scope){
    $scope.name = '';
  
    $scope.contacts = [ {  } ];
    
    
		
    $scope.newContact = function($event){
        $scope.contacts.push( {  } );
        $event.preventDefault();
    };
    
    $scope.submitSearch1 = function (set) {
		  $scope.setText = set;
		};

}


patientPortal.controller('MenuBarController', function($scope,MetadataService, PatientInfo) {
	
	$scope.initial = {};
	
	$scope.tabs = [
	               { title:'Important',active: true, content: urlContext + '/resources/app/patient-views/important.html' },
	               { title:'Demographics', content:urlContext +'/resources/app/patient-views/demographics.html'},
	               { title:'Insurances', content: urlContext +'/resources/app/patient-views/insurance-main.html'}
	             ];
	
	$scope.tabs.insurances = [
	               { title:'Primary Insurance',active: true, content: urlContext + '/resources/app/patient-views/primary-insurances.html' },
	               { title:'Secondary Insurance', content: urlContext + '/resources/app/patient-views/secondary-insurances.html' }
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
	
	$scope.resetSubscriberForm = function() {
		console.log($scope.insurance.subscriberForm);
		angular.copy($scope.initial, $scope.insurance.subscriberForm);
		console.log($scope.insurance.subscriberForm);
	};
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

patientPortal.controller('HistoryController', function($scope,MetadataService, PatientHistory) {

	$scope.initial = {};
	$scope.tabsHistories=[
	   	               { title:'medical history',active: true, content:'/resources/app/patient-views/medical-History.html'},
	   	               { title:'family history', content:'/resources/app/patient-views/family-History.html' }             
	   	                       ];
	$scope.metadataHistorys = PatientHistory.getHisMetadata.get(function(data) {
		console.log($scope.metadataHistorys);
	});
	
	PatientHistory.getHistoryDetails.get( function(response) {
		$scope.patientHistory = response;
	});


$scope.savePatHistory = function() {
	$scope.importantForm={};
	console.log($scope.patientHistory);
	PatientHistory.saveHistory.save({historyForm : $scope.patientHistory}, function() {
		console.log("Commited_JAi");
	});
};
/* harshad */

	
	 $scope.activeSmokers = 'activeSmokers';
	 $scope.passiveSmokers = 'none';
	 
	 $scope.nonePassiveExpo='nonePassiveExpo';
	 $scope.inPastPassiveExpo='inPastPassiveExpo';
	 
	 $scope.no='no';
	 $scope.yes='yes';
	 
	 $scope.noAlcohol='noAlcohol';
	 $scope.advancedDirective='setEnabled';
	 $scope.familyhistory = {};
	 
	 $scope.livewith = [{name: "Mom", status:false},
	                     {name: "Dad",status:false},
	                     {name: "Uncle",status:false},
	                     {name: "Aunt",status:false},
	                     {name: "cousen",status:false},
	                     {name: "granny",status:false},
	                     {name: "grandFather",status:false},
	                     {name: "Brother",status:false}];
	 
	 
	  $scope.isShown = function(activeSmokers) {
		       var isShow = (activeSmokers === $scope.activeSmokers);
		       if(isShow){
		    	   return isShow;
		       }
		       else{
		    	   return false;
		       }
    };
    
    	$scope.historymetadatas = PatientHistory.GetHistoryMetadata.get(function(data) {
	console.log(data);
	});
    
    	PatientHistory.getFamilyDetails.get( function(response) {
		$scope.familyhistory = response;
	});
    
    	$scope.saveFamilyDetails = function() {
		console.log($scope.familyhistory);
		PatientHistory.saveFamily.save({familyhistory : $scope.familyhistory}, function() {
			console.log("Commited");
		});
	};
    
    
	$scope.isShownExposure = function(active) {
	       var isShow = (active !== $scope.nonePassiveExpo);
	       var notToShow=(active !== $scope.inPastPassiveExpo);
	       if(isShow){
	    	   return isShow;
	       }
	       else if(notToShow){
	    	   return false;
	       }
	};
		$scope.isShownDrugs = function(active) {
	       var isShow = (active ===$scope.yes);
	       var notToShow=(active === $scope.no);
	       if(isShow){
	    	   return isShow;
	       }
	       else if(notToShow){
	    	   return false;
	       }
	};
	$scope.isShownAlcohol = function(active) {
	       var notToShow=(active ==='noAlcohol');
	       if(notToShow){
	    	   return false;
	       }
	      return true; 
	};
	

	
	$scope.disableDates = function(advancedDirective) {
			 if(advancedDirective ==='true') {
               return false;
          } else {
        	  return true;
          }
	};
	$scope.recentClicked = function(travelDetails) {
		if(travelDetails==='recent'){
			return false;
		}else {
      	  return true;
        }
	};
	$scope.pastClicked = function(travelDetails) {
		if(travelDetails==='past'){
			return false;
		}else {
      	  return true;
        }
	};
	$scope.diseaseExpoClicked = function(travelDetails) {
		if(travelDetails==='diseaseExpo'){
			return false;
		}else {
      	  return true;
        }
	};
	$scope.markMyAppoitment = function(slot) {
		 if(slot.status == true) {
	        slot.status = false;
	  } else if(slot.status == false) {
	        slot.status = true;
	  }
	};
});

