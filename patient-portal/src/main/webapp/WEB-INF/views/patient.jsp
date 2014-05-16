<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html ng-app="patientPortal">
	
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/app/patient-dependency/bootstrap-3.1.1/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/app/patient-dependency/bootstrap-3.1.1/css/bootstrap-theme.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/app/patient-dependency/angular-bootstrap-datetimepicker/src/css/datetimepicker.css"/>
		<title>Form Screens</title>
	</head>
	
	<body>
	<!-- Add dependency js here -->
		<script src="${pageContext.request.contextPath}/resources/app/patient-dependency/jquery/jquery.min.js"></script>
		
		<script src="${pageContext.request.contextPath}/resources/app/patient-dependency/angular/angular.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/app/patient-dependency/angular-route/angular-route.js"></script>
		<script src="${pageContext.request.contextPath}/resources/app/bower_components/angular-resource/angular-resource.js"></script>
		<script src="${pageContext.request.contextPath}/resources/app/patient-dependency/angular-bootstrap/ui-bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/app/patient-dependency/angular-bootstrap/ui-bootstrap-tpls.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/app/patient-dependency/bootstrap-3.1.1/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/app/patient-dependency/moment/moment.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/app/patient-dependency/angular-ui-utils/ui-utils.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/app/patient-dependency/angular-bootstrap-datetimepicker/src/js/datetimepicker.js"></script>
	<!-- End dependency js here -->
		<div id="content" ng-view="">
    	
  		</div>		

	<!-- Add custom js here -->
		<script src="${pageContext.request.contextPath}/resources/app/patient-scripts/app.js"></script>
		<script src="${pageContext.request.contextPath}/resources/app/patient-scripts/patient-services.js"></script>
		<script src="${pageContext.request.contextPath}/resources/app/patient-scripts/main.js"></script>
	<!-- End custom js here -->
	</body>
</html>