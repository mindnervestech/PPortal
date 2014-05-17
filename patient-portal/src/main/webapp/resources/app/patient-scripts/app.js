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
      templateUrl: '/resources/app/patient-views/patient-form.html'
    });
}).run(function(editableOptions) {
	editableOptions.theme = 'bs3'; // bootstrap3 theme
});