'use strict';

angular.module('patientPortal', 
				['ui.bootstrap',
				 'ngRoute',
				 'ngResource',
				 'ui.utils',
				 'ui.bootstrap.datetimepicker']
).config(function ($routeProvider) {
    $routeProvider
    .when('/', {
      templateUrl: '/resources/app/patient-views/patient-form.html'
    });
});