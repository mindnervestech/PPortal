<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Portal</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/app/bower_components/ng-file-upload/css/file-upload.css" />
  	<link  href="${pageContext.request.contextPath}/resources/app/bower_components/angular-xeditable/dist/css/xeditable.css" rel="stylesheet">
  	<link  href="${pageContext.request.contextPath}/resources/app/bower_components/angular-bootstrap-datetimepicker/src/css/datetimepicker.css" rel="stylesheet"/>
  	<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css">
    <script src="${pageContext.request.contextPath}/resources/SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script>
    <link href="${pageContext.request.contextPath}/resources/SpryAssets/SpryTabbedPanels.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/jquery.ui.all.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/wemblo.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/app/custom-css/mnt.css" rel="stylesheet">
	<style type="text/css">
        .tooltip
        {
            display: none;
            position: absolute;
            border: 1px solid #333;
            background-color: #161616;
            border-radius: 5px;
            padding: 2px;
            color: #fff;
            font-size: 6px Arial;
        }
        #imgTop
        {
            left: 17px;
            position: absolute;
        }
        
        .custom-panel {
			margin: 10px 0px 0 6px !important;
		}
		.lowerHeader1 {
			padding: 0 0 10px 0 !important;
		}
    </style>
  </head>
  <body id="patientDashboardPage" ng-app="patientPortal">
  <span us-spinner spinner-key="loading..." ></span>
  		<header id="top" class="navbar-fixed-top">
    	<nav class="container nav" role="navigation">
            <div id="navHeaderLeft" class="navbar-header">
            	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navLeft">
                	<span class="sr-only">Toggle navigation</span>
                    <span><b class="fa fa-list-ul"></b>MENU</span>
                </button>
            </div>
            <div id="navHeaderRight" class="navbar-header">
            	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navRight">
                	<span class="sr-only">Toggle navigation</span>
                    <span><b class="fa fa-tasks"></b>DASHBOARD</span>
                </button>
            </div>
            <div class="leftGap hidden-lg"></div>
            <div id="navLeft" class="collapse navbar-collapse navbar-left">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#">Tips &amp; Tolls</a></li>
                    <li><a href="#">Allergies</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Vaccines <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Menu Name Here</a></li>
                            <li><a href="#">Menu Name Here</a></li>
                            <li><a href="#">Menu Name Here</a></li>
                            <li><a href="#">Menu Name Here</a></li>
                            <li><a href="#">Menu Name Here</a></li>
                            <li><a href="#">Menu Name Here</a></li>
                            <li><a href="#">Menu Name Here</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Diet</a></li>
                    <li><a href="#">Test Lab</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Vaccines <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Menu Name Here</a></li>
                            <li><a href="#">Menu Name Here</a></li>
                            <li><a href="#">Menu Name Here</a></li>
                            <li><a href="#">Menu Name Here</a></li>
                            <li><a href="#">Menu Name Here</a></li>
                            <li><a href="#">Menu Name Here</a></li>
                            <li><a href="#">Menu Name Here</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Immunization</a></li>
                    <li><a href="#">Medication</a></li>
                </ul>
            </div><!-- navLeft -->
            
            <div id="navRight" class="collapse navbar-collapse navbar-right">
                <ul class="nav navbar-nav">
                    <li><a href="#" data-toggle="tooltip" data-placement="bottom" title="Messages"><b class="fa fa-envelope"><span class="badge pull-right">5</span></b></a></li>
                    <li><a href="#" data-toggle="tooltip" data-placement="bottom" title="Alerts"><b class="fa fa-bell"><span class="badge pull-right">8</span></b></a></li>
                    <li class="tasks"><a href="#" data-toggle="tooltip" data-placement="bottom" title="Dashboard"><b class="fa fa-tachometer"></b></a></li>
                    <li class="tasks"><a href="#" data-toggle="tooltip" data-placement="bottom" title="Settings"><b class="fa fa-cog"></b></a></li>
                    <li class="username active dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="${pageContext.request.contextPath}/resources/images/icomale.png" alt="Username">Doctor Name <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                   	    	<li><a href="#"><b class="fa fa-pencil-square"> </b> Edit Profile</a></li>
                            <li><a href="#"><b class="fa fa-cog"> </b> Settings</a></li>
                            <li class="divider"></li>
                            <li><a href="/logout"><b class="fa fa-sign-out"> </b> Logout</a></li>
                        </ul>
		    </li>
                </ul>
            </div><!-- navRight -->
        </nav>
	</header><!-- header -->
	
	<header class="lowerHeader lowerHeader1">
    	<div  class="container">
            <section id="stats" >
            	<div class="statsLeft col-sm-6">
	                <div class="col-xs-4">
	               		<a class="panel panel1 custom-panel" data-toggle="modal" href="#appointmentsModal">
	                        <h1>APPOINTMENTS</h1>
	                        <p><b>28</b> Due to 21 days</p>
	                    </a>
	                </div>
	                <div class="col-xs-4">
	                	<a class="panel panel2 custom-panel" data-toggle="modal" href="#remindersModal">
	                        <h1>REMINDERS</h1>
	                        <p><b>14</b> Recent reminders</p>
	                    </a>
	                </div>
	                <div class="col-xs-4">
	                	<a class="panel panel3 custom-panel" data-toggle="modal" href="#notesModal">
	                        <h1>CHARTS / NOTES</h1>
	                        <p><b>17</b> New notes today</p>
	                    </a>
	                </div>
             </div><!-- statsLeft -->
             
             <div class="statsRight col-sm-6">
	                <div class="col-xs-4">
	               		<a class="panel panel4 custom-panel" ng-href="/patient/">
	                        <h1>PATIENT</h1>
	                        <p>Register on 21 March</p>
	                    </a>
	                </div>
	                <div class="col-xs-4">
	                	<a class="panel panel5 custom-panel" data-toggle="modal" href="#billingModal">
	                        <h1>BILLING</h1>
	                        <p>Next due on 19 April 2014</p>
	                    </a>
	                </div>
	                <div class="col-xs-4">
	                	<a class="panel panel6 custom-panel" data-toggle="modal" href="#reportsModal">
	                        <h1>REPORTS</h1>
	                        <p>Last checked at 5:34</p>
	                    </a>
	                </div>
             </div><!-- statsRight -->
            </section>
            <div class="clearfix visible-xs" ></div>

            
            <!-- modals for stats panels -->
            <section class="modal fade" id="appointmentsModal" role="dialog">
            	<div class="modal-dialog"><div class="modal-content">
                    <header class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h1>This is Appointments Modal Box</h1>
                    </header>
                    <div class="modal-body">
                        <p>We'll show content of Tests, Please provide demonstration what will be displayed on this popup box.</p><br><br><br><br><br>
                    </div>
                    <footer class="modal-footer">
                        <button class="btn btn-primary" data-dismiss="modal">Close</button>
                    </footer>
                </div></div>
            </section><!-- appointmentModal -->
            <section class="modal fade" id="remindersModal" role="dialog">
            	<div class="modal-dialog"><div class="modal-content">
                    <header class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h1>This is Reminders Modal Box</h1>
                    </header>
                    <div class="modal-body">
                        <p>We'll show content of Emails, Please provide demonstration what will be displayed on this popup box.</p><br><br><br><br><br>
                    </div>
                    <footer class="modal-footer">
                        <button class="btn btn-primary" data-dismiss="modal">Close</button>
                    </footer>
                </div></div>
            </section><!-- remindersModal -->
            <section class="modal fade" id="notesModal" role="dialog">
            	<div class="modal-dialog"><div class="modal-content">
                    <header class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h1>This is Charts / Notes Modal Box</h1>
                    </header>
                    <div class="modal-body">
                        <p>We'll show content of Reports, Please provide demonstration what will be displayed on this popup box.</p><br><br><br><br><br>

                    </div>
                    <footer class="modal-footer">
                        <button class="btn btn-primary" data-dismiss="modal">Close</button>
                    </footer>
                </div></div>
            </section><!-- notesModal -->
            <section class="modal fade" id="patientModal" role="dialog">
            	<div class="modal-dialog"><div class="modal-content">
                    <header class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h1>This is Patient Modal Box</h1>
                    </header>
                    <div class="modal-body">
                        <p>We'll show content that will be searched via Search field, Please provide demonstration what will be displayed on this popup box.</p><br><br><br><br><br>

                    </div>
                    <footer class="modal-footer">
                        <button class="btn btn-primary" data-dismiss="modal">Close</button>
                    </footer>
                </div></div>
            </section><!-- patientModal -->
            <section class="modal fade" id="billingModal" role="dialog">
            	<div class="modal-dialog"><div class="modal-content">
                    <header class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h1>This is Billing Modal Box</h1>
                    </header>
                    <div class="modal-body">
                        <p>We'll show content that will be searched via Search field, Please provide demonstration what will be displayed on this popup box.</p><br><br><br><br><br>

                    </div>
                    <footer class="modal-footer">
                        <button class="btn btn-primary" data-dismiss="modal">Close</button>
                    </footer>
                </div></div>
            </section><!-- patientModal -->
            <section class="modal fade" id="reportsModal" role="dialog">
            	<div class="modal-dialog"><div class="modal-content">
                    <header class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h1>This is Reports Modal Box</h1>
                    </header>
                    <div class="modal-body">
                        <p>We'll show content that will be searched via Search field, Please provide demonstration what will be displayed on this popup box.</p><br><br><br><br><br>

                    </div>
                    <footer class="modal-footer">
                        <button class="btn btn-primary" data-dismiss="modal">Close</button>
                    </footer>
                </div></div>
            </section><!-- reportsModal -->
        </div><!-- container -->
    </header><!-- topLower -->
	
    <section class="container" style="width: 100%;"><!--container section!-->
    	
        <aside class="sideLinks col-sm-2">
        	<a class="panel" href="#/make-appointment">
	            <h2>Appointments</h2>
	            <p class="col-sm-12">Lullam tincidunt dapibus nisi. Aenean porttitor lengths egestas.</p>
	            <b class="col-sm-3 fa fa-clock-o"></b>
	            <br class="clear">
	        </a>
	        <a class="panel" href="#">
	            <h2>Medical History</h2>
	            <p class="col-sm-12">Lullam tincidunt dapibus nisi. Aenean porttitor lengths egestas.</p>
	            <b class="col-sm-3 fa fa-hospital-o"></b>
	            <br class="clear">
	        </a>
	        <a class="panel" href="#">
	            <h2>Request Refills</h2>
	            <p class="col-sm-12">Lullam tincidunt dapibus nisi. Aenean porttitor lengths egestas.</p>
	            <b class="col-sm-3 fa fa-medkit"></b>
	            <br class="clear">
	        </a>
	        <a class="panel" href="#">
	            <h2>Lab Reports</h2>
	            <p class="col-sm-12">Lullam tincidunt dapibus nisi. Aenean porttitor lengths egestas.</p>
	            <b class="col-sm-3 fa fa-bar-chart-o"></b>
	            <br class="clear">
	        </a>
	        <a class="panel" href="#">
	            <h2>Messages</h2>
	            <p class="col-sm-12">Lullam tincidunt dapibus nisi. Aenean porttitor lengths egestas.</p>
	            <b class="col-sm-3 fa fa-envelope-o"></b>
	            <br class="clear">
	        </a>
	        <a class="panel" href="#">
	            <h2>Health Records</h2>
	            <p class="col-sm-12">Lullam tincidunt dapibus nisi. Aenean porttitor lengths egestas.</p>
	            <b class="col-sm-3 fa fa-pencil-square-o"></b>
	            <br class="clear">
	        </a>
        </aside>
        
        <div id="content" class="col-sm-10" ng-view="" >
    	
  		</div>	
        <div class="clr"></div>
    </section>	
    
        
  </body>


<script src="${pageContext.request.contextPath}/resources/app/bower_components/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    
    <script src="${pageContext.request.contextPath}/resources/app/bower_components/ng-file-upload/angular-file-upload-shim.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app/bower_components/angular/angular.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app/bower_components/angular-resource/angular-resource.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app/bower_components/angular-route/angular-route.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app/bower_components/ngInfiniteScroll/ng-infinite-scroll.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app/bower_components/angular-route/angular-route.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app/bower_components/angular-animate/angular-animate.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app/bower_components/angular-bootstrap/ui-bootstrap.js"></script>
	<script src="${pageContext.request.contextPath}/resources/app/bower_components/angular-bootstrap/ui-bootstrap-tpls.js"></script> 
	<script src="${pageContext.request.contextPath}/resources/app/bower_components/ng-file-upload/angular-file-upload.min.js"></script> 
	<script src="${pageContext.request.contextPath}/resources/app/bower_components/angular-xeditable/dist/js/xeditable.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app/bower_components/moment/moment.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app/bower_components/angular-validator/dist/angular-validator.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app/bower_components/angular-validator/dist/angular-validator-rules.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app/bower_components/spin.js/spin.js"></script>
	<script src="${pageContext.request.contextPath}/resources/app/bower_components/angular-spinner/angular-spinner.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app/bower_components/angular-truncate/dist/angular-truncate.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app/bower_components/tinymce/tinymce.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app/bower_components/angular-ui-tinymce/src/tinymce.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/app/bower_components/angular-ui-utils/ui-utils.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/app/bower_components/angular-sanitize/angular-sanitize.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app/bower_components/angular-bootstrap-datetimepicker/src/js/datetimepicker.js"></script>
    <script src="${pageContext.request.contextPath}/resources/wemblo/js/minified/jquery.ui.effect.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/wemblo/js/minified/jquery.ui.effect-slide.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.ui.core.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.ui.mouse.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.ui.slider.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.nicescroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/wemblo.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.maphilight.min.js"></script>
    
    <script src="${pageContext.request.contextPath}/resources/app/patient-scripts/app.js"></script>
	<script src="${pageContext.request.contextPath}/resources/app/patient-scripts/patient-services.js"></script>
	<script src="${pageContext.request.contextPath}/resources/app/patient-scripts/main.js"></script>
		
<script type="text/javascript">
        var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
    </script>

    
    


</html>

    