'use strict';

angular.module('home-app', [
  'infinite-scroll',
  'ngResource',
  'ngRoute',
  'xeditable',
  'ngAnimate',
  'ui.bootstrap',
  'ui.bootstrap.tpls',
  'angularFileUpload',
  'ui.bootstrap.datetimepicker',
  'validator',
  'validator.rules',
  'angularSpinner',
  'truncate',
  'ui.tinymce',
  'ui.utils',
  'ngSanitize'
])
 .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'resources/app/views/pain-selection.html'
      })
      .when('/make-appointment', {
    	  templateUrl: 'resources/app/views/make-appointment.html',
    	  
      });
  })
  .run(function(editableOptions) {
  editableOptions.theme = 'bs3'; // bootstrap3 theme. Can be also 'bs2', 'default'
});

