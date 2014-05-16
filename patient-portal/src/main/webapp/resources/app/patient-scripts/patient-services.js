'use strict';

var patientPortal = angular.module('patientPortal');


patientPortal.service('MetadataService',function($resource){
	this.GetMetadata = $resource(
			'/get-metadata',
			{alt:'json',callback:'JSON_CALLBACK'},
			{
				get: {method:'GET'}
			}
	);
});