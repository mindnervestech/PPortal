'use strict';

angular.module('patientPortal', 
				['ui.bootstrap',
				 'ngRoute',
				 'ngResource',
				 'ui.utils',
				 'ui.bootstrap.datetimepicker',
				 'xeditable']
).config(function ($routeProvider) {
    $routeProvider
    .when('/', {
      templateUrl: urlContext + '/resources/app/patient-views/patient-form.html',
      controller: 'MenuBarController'
    }).when('/medHistory', {
      templateUrl: urlContext + '/resources/app/patient-views/history-main.html',
      controller: 'MenuBarController'
    }).otherwise({
        redirectTo: '/'
    });
    
}).run(function(editableOptions) {
	editableOptions.theme = 'bs3'; // bootstrap3 theme
});