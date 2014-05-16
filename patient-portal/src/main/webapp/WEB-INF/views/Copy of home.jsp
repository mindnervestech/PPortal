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
    </style>
  </head>
  <body id="patientDashboardPage" ng-app="home-app" ng-controller="HomeController">
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
                            <li><a href="#"><b class="fa fa-sign-out"> </b> Logout</a></li>
                        </ul>
		    </li>
                </ul>
            </div><!-- navRight -->
        </nav>
	</header><!-- header -->
	
	<header class="lowerHeader">
    	<div  class="container">
            <section id="stats">
            	<div class="statsLeft col-sm-6">
	                <div class="col-xs-4">
	               		<a class="panel panel1" data-toggle="modal" href="#appointmentsModal">
	                        <h1>APPOINTMENTS</h1>
	                        <p><b>28</b> Due to 21 days</p>
	                    </a>
	                </div>
	                <div class="col-xs-4">
	                	<a class="panel panel2" data-toggle="modal" href="#remindersModal">
	                        <h1>REMINDERS</h1>
	                        <p><b>14</b> Recent reminders</p>
	                    </a>
	                </div>
	                <div class="col-xs-4">
	                	<a class="panel panel3" data-toggle="modal" href="#notesModal">
	                        <h1>CHARTS / NOTES</h1>
	                        <p><b>17</b> New notes today</p>
	                    </a>
	                </div>
             </div><!-- statsLeft -->
             
             <div class="statsRight col-sm-6">
	                <div class="col-xs-4">
	               		<a class="panel panel4" data-toggle="modal" href="#patientModal">
	                        <h1>PATIENT</h1>
	                        <p>Register on 21 March</p>
	                    </a>
	                </div>
	                <div class="col-xs-4">
	                	<a class="panel panel5" data-toggle="modal" href="#billingModal">
	                        <h1>BILLING</h1>
	                        <p>Next due on 19 April 2014</p>
	                    </a>
	                </div>
	                <div class="col-xs-4">
	                	<a class="panel panel6" data-toggle="modal" href="#reportsModal">
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
	
    <section class="container"><!--container section!-->
    	
        <aside class="sideLinks col-sm-2">
        	<a class="panel" href="#/make-appointment">
	            <h2>Appointments</h2>
	            <p class="col-sm-9">Lullam tincidunt dapibus nisi. Aenean porttitor lengths egestas.</p>
	            <b class="col-sm-3 fa fa-clock-o"></b>
	            <br class="clear">
	        </a>
	        <a class="panel" href="#">
	            <h2>Medical History</h2>
	            <p class="col-sm-9">Lullam tincidunt dapibus nisi. Aenean porttitor lengths egestas.</p>
	            <b class="col-sm-3 fa fa-hospital-o"></b>
	            <br class="clear">
	        </a>
	        <a class="panel" href="#">
	            <h2>Request Refills</h2>
	            <p class="col-sm-9">Lullam tincidunt dapibus nisi. Aenean porttitor lengths egestas.</p>
	            <b class="col-sm-3 fa fa-medkit"></b>
	            <br class="clear">
	        </a>
	        <a class="panel" href="#">
	            <h2>Lab Reports</h2>
	            <p class="col-sm-9">Lullam tincidunt dapibus nisi. Aenean porttitor lengths egestas.</p>
	            <b class="col-sm-3 fa fa-bar-chart-o"></b>
	            <br class="clear">
	        </a>
	        <a class="panel" href="#">
	            <h2>Messages</h2>
	            <p class="col-sm-9">Lullam tincidunt dapibus nisi. Aenean porttitor lengths egestas.</p>
	            <b class="col-sm-3 fa fa-envelope-o"></b>
	            <br class="clear">
	        </a>
	        <a class="panel" href="#">
	            <h2>Health Records</h2>
	            <p class="col-sm-9">Lullam tincidunt dapibus nisi. Aenean porttitor lengths egestas.</p>
	            <b class="col-sm-3 fa fa-pencil-square-o"></b>
	            <br class="clear">
	        </a>
        </aside>
        
        <section class="col-sm-10" ng-view=""><!--right section!-->

  		</section><!--right section!-->
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
    
    <script src="${pageContext.request.contextPath}/resources/app/scripts/home-app.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app/scripts/controllers/home-controller.js"></script>
	<script src="${pageContext.request.contextPath}/resources/app/scripts/controllers/appoitment-controller.js"></script>
<script type="text/javascript">
        var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
    </script>
    <script  type="text/javascript">
        //**********Front*********************
        function Reload() {
            $("#area27").trigger("mouseover");
            setTimeout(heighlightAre, 200);
        }
        function heighlightAre() {
            $("#area27").trigger("mouseout");
            $("#area26").trigger("mouseover");
            setTimeout(heighlightAre1, 200);
        }

        function heighlightAre1() {
            $("#area26").trigger("mouseout");
            $("#area25").trigger("mouseover");
            setTimeout(heighlightAre2, 200);
        }
        function heighlightAre2() {
            $("#area25").trigger("mouseout");
            $("#area9").trigger("mouseover");
            setTimeout(heighlightAre3, 200);
        }
        function heighlightAre3() {
            $("#area9").trigger("mouseout");
            $("#area4").trigger("mouseover");
            $("#area7").trigger("mouseover");
            setTimeout(heighlightAre11, 200);
        }
        function heighlightAre11() {
            $("#area7").trigger("mouseout");
            $("#area4").trigger("mouseout");
            $("#area28").trigger("mouseover");
            $("#area29").trigger("mouseover");
            setTimeout(heighlightAre4, 200);
        }
        function heighlightAre4() {
            $("#area28").trigger("mouseout");
            $("#area29").trigger("mouseout");
            $("#area15").trigger("mouseover");
            $("#area20").trigger("mouseover");
            setTimeout(heighlightAre5, 500);
        }
        function heighlightAre5() {
            $("#area15").trigger("mouseout");
            $("#area20").trigger("mouseout");
            $("#area16").trigger("mouseover");
            $("#area21").trigger("mouseover");
            setTimeout(heighlightAre6, 200);
        }
        function heighlightAre6() {
            $("#area16").trigger("mouseout");
            $("#area21").trigger("mouseout");
            $("#area17").trigger("mouseover");
            $("#area22").trigger("mouseover");
            setTimeout(heighlightAre7, 200);
        }
        function heighlightAre7() {
            $("#area17").trigger("mouseout");
            $("#area22").trigger("mouseout");
            $("#area18").trigger("mouseover");
            $("#area23").trigger("mouseover");
            setTimeout(heighlightAre8, 200);
        }
        function heighlightAre8() {
            $("#area18").trigger("mouseout");
            $("#area23").trigger("mouseout");
            $("#area19").trigger("mouseover");
            $("#area24").trigger("mouseover");
            setTimeout(heighlightAre9, 200);
        }
        function heighlightAre9() {
            $("#area19").trigger("mouseout");
            $("#area24").trigger("mouseout");
            $("#area8").trigger("mouseover");
            setTimeout(heighlightAre10, 200);
        }
        function heighlightAre10() {
            $("#area8").trigger("mouseout");
            $("#area10").trigger("mouseover");
            setTimeout(heighlightAre17, 200);
        }

        function heighlightAre17() {
            $("#area10").trigger("mouseout");
            $("#area11").trigger("mouseover");
            setTimeout(heighlightAre18, 200);
        }
        function heighlightAre18() {
            $("#area11").trigger("mouseout");
            $("#area13").trigger("mouseover");
            $("#area14").trigger("mouseover");
            setTimeout(heighlightAre12, 200);
        }
        function heighlightAre12() {
            $("#area13").trigger("mouseout");
            $("#area14").trigger("mouseout");
            $("#area30").trigger("mouseover");
            $("#area31").trigger("mouseover");
            setTimeout(heighlightAre19, 200);
        }
        function heighlightAre19() {
            $("#area30").trigger("mouseout");
            $("#area31").trigger("mouseout");
            setTimeout(heighlightAre20, 200);
        }

        function heighlightAre20() {
            $("#area1234").trigger("mouseover");
            IsTooltip = "True";
        }

        //********Back*************
        function ReloadBack() {
            $("#area62").trigger("mouseover");
            setTimeout(heighlightAre21, 200);
        }
        function heighlightAre21() {
            $("#area62").trigger("mouseout");
            $("#area42").trigger("mouseover");
            setTimeout(heighlightAre22, 200);
        }

        function heighlightAre22() {
            $("#area42").trigger("mouseout");
            $("#area35").trigger("mouseover");
            $("#area39").trigger("mouseover");
            setTimeout(heighlightAre23, 200);
        }
        function heighlightAre23() {
            $("#area35").trigger("mouseout");
            $("#area39").trigger("mouseout");
            $("#area36").trigger("mouseover");
            $("#area40").trigger("mouseover");
            setTimeout(heighlightAre24, 200);
        }
        function heighlightAre24() {
            $("#area36").trigger("mouseout");
            $("#area40").trigger("mouseout");
            $("#area34").trigger("mouseover");
            $("#area44").trigger("mouseover");
            setTimeout(heighlightAre25, 200);
        }
        function heighlightAre25() {
            $("#area34").trigger("mouseout");
            $("#area44").trigger("mouseout");
            $("#area37").trigger("mouseover");
            $("#area45").trigger("mouseover");
            setTimeout(heighlightAre26, 200);
        }
        function heighlightAre26() {
            $("#area37").trigger("mouseout");
            $("#area45").trigger("mouseout");
            $("#area38").trigger("mouseover");
            $("#area50").trigger("mouseover");
            setTimeout(heighlightAre27, 500);
        }
        function heighlightAre27() {
            $("#area38").trigger("mouseout");
            $("#area50").trigger("mouseout");
            $("#area41").trigger("mouseover");
            $("#area51").trigger("mouseover");
            setTimeout(heighlightAre28, 200);
        }
        function heighlightAre28() {
            $("#area41").trigger("mouseout");
            $("#area51").trigger("mouseout");
            $("#area43").trigger("mouseover");
            $("#area52").trigger("mouseover");
            setTimeout(heighlightAre29, 200);
        }
        function heighlightAre29() {
            $("#area43").trigger("mouseout");
            $("#area52").trigger("mouseout");
            $("#area32").trigger("mouseover");
            setTimeout(heighlightAre30, 200);
        }
        function heighlightAre30() {
            $("#area32").trigger("mouseout");
            $("#area33").trigger("mouseover");
            setTimeout(heighlightAre31, 200);
        }
        function heighlightAre31() {
            $("#area33").trigger("mouseout");
            $("#area24").trigger("mouseout");
            $("#area46").trigger("mouseover");
            $("#area48").trigger("mouseover");
            setTimeout(heighlightAre32, 200);
        }
        function heighlightAre32() {
            $("#area46").trigger("mouseout");
            $("#area48").trigger("mouseout");
            $("#area47").trigger("mouseover");
            $("#area49").trigger("mouseover");
            setTimeout(heighlightAre33, 200);
        }

        function heighlightAre33() {
            $("#area47").trigger("mouseout");
            $("#area49").trigger("mouseout");

        }


        $(document).ready(function () {
            $('.mapZooom').maphilight({ fade: true, stroke: false, fillColor: 'b84949', fillOpacity: 0.3 });
        });
      
    </script>

<script type="text/javascript">
    	
        var IsTooltip = "False";
        $(document).ready(function () {
        	
        	$('.map').maphilight({ fade: true, stroke: false, fillColor: 'b84949', fillOpacity: 0.5 });
            $('.map1').maphilight({ fade: true, stroke: false, fillColor: 'b84949', fillOpacity: 0.5 });
            $('.map3').maphilight({ fade: true, stroke: false, fillColor: 'b84949', fillOpacity: 0.5 });
        	
            $(".carousel-control area").click(function () {
            	$("#instructions").hide( "slide", {}, 500);
		$("#step1").show( "slide", {}, 500);
		var id = $(this).attr('id');
                
                $("#imgZoomOutButton").css({ 'visibility': 'visible' });
                var img = $("#div1 img");
                var div = $("#div2 .map1");
                var img2 = $("#div2 img");
                var div2 = $("#div2");
                var ZoomImage = $("#ImgMan");
                var div2Big = $("#DivBig");
                $("#divZoomImage .map1").css({ 'position': 'relative' });
                $("#divFront").css({ 'background-color': '#dbdbdb' });
                div.css({ width: "300px", height: "50px" });
                $("#div1").css({ visibility: 'hidden' });
                $("#divarrows").css({ visibility: 'visible' });

                if (id == "area7" || id == "BRightElbow" || id == "BRightShoulder" || id == "BRightArmpit" || id == "BRightUpperarm") {
                    //*****Right Upper Arm ******
                    $("#ImgMan").stop().animate({
                        'top': '-331px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-641px'
                    });
                    $("#divZoomImage").stop().animate({
                        'top': '-331px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-241px'
                    });
                }
                if (id == "area29" || id == "BRightForearm" || id == "BRightPalm" || id == "BRightWrist" || id == "BRightPinkyFinger" || id == "BRightRingFinger" || id == "BRightMiddleFinger" || id == "BRightIndexFinger" || id == "BRightThumb") {
                    //*****Right Lower Arm ******
                    $("#ImgMan").stop().animate({
                        'top': '-651px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-820px'
                    });
                    $("#divZoomImage").stop().animate({
                        'top': '-700px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-35px'
                    });
                }
                if (id == "area27" || id == "area9" || id == "BJaw" || id == "BNeck(Front)" || id == "BThroat" || id == "BScalp" || id == "BForeHead" || id == "BRightEye" || id == "BLeftEye" || id == "BNose" || id == "BRightFace" || id == "BLeftFace" || id == "BChin" || id == "BMouth" || id == "BLeftEar" || id == "BRightEar") {
                    //*****area27:- "HEAD"******area9:- Neck******
                    $("#ImgMan").stop().animate({
                        'top': '-19px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-440px'
                    });
                    $("#divZoomImage").stop().animate({
                        'top': '-19px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-380px'
                    });
                }
                if (id == "area10" || id == "BUpperAbdomen" || id=="BLateralChest" || id=="BLowerAbdomen") {
                    //*****Abdomen ******
                    $("#ImgMan").stop().animate({
                        'top': '-450px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-445px'
                    });

                    $("#divZoomImage").stop().animate({
                        'top': '-450px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-389px'
                    });
                    
                }
                if (id == "area4" || id == "BLeftElbow" || id == "BLeftUpperarm" || id == "BLeftArmpit" || id == "BLeftShoulder") {
                    //*****Left Upper Arm ******
                    $("#ImgMan").stop().animate({
                        'top': '-331px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-310px'
                    });
                    $("#divZoomImage").stop().animate({
                        'top': '-361px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-554px'
                    });
                }
                if (id == "area28" || id == "BLeftForearm" || id == "BLeftPalm" || id == "BLeftWrist" || id == "BLeftThumb" || id == "BLeftPinkyFinger" || id == "BLeftRingFinger" || id == "BLeftMiddleFinger" || id == "BLeftIndexFinger") {

                    //*****Left Lower Arm ******
                    $("#ImgMan").stop().animate({
                        'top': '-651px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-96px'
                    });
                    $("#divZoomImage").stop().animate({
                        'top': '-661px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-754px'
                    });
                }
                if (id == "area8" || id == "BRightChest" || id == "BLeftChest" || id == "BSternum") {
                    //*****Chest ******
                    $("#ImgMan").stop().animate({
                        'top': '-260px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-436px'
                    });
                    $("#divZoomImage").stop().animate({
                        'top': '-260px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-375px'
                    });
                }

                if (id == "area13" || id == "BLeftKnee" || id == "BLeftThigh") {
                    //*****Left Upper Leg ******
                    $("#ImgMan").stop().animate({
                        'top': '-957px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-300px'
                    });
                    $("#divZoomImage").stop().animate({
                        'top': '-957px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-539px'
                    });
                }
                if (id == "area30" || id == "BLeftShin" || id == "BLeftAnkle" || id == "BLeftFoot" || id == "BLeftToes" || id == "BLeftBigToes") {
                    //*****Left Lower Leg ******
                    $("#ImgMan").stop().animate({
                        'top': '-1472px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-299px'
                    });
                    $("#divZoomImage").stop().animate({
                        'top': '-1472px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-539px'
                    });
                }
                if (id == "area14" || id == "BRightKnee" || id == "BRightThigh") {
                    //*****Right Upper Leg ******
                    $("#ImgMan").stop().animate({
                        'top': '-937px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-591px'
                    });
                    $("#divZoomImage").stop().animate({
                        'top': '-1037px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-221px'
                    });
                }
                if (id == "area31" || id == "BRightShin" || id == "BRightAnkle" || id == "BRightFoot" || id == "BRightBigToe" || id == "BRightToes") {
                    //*****Right Lower Leg ******
                    $("#ImgMan").stop().animate({
                        'top': '-1476px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-590px'
                    });
                    $("#divZoomImage").stop().animate({
                        'top': '-1472px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-238px'
                    });
                }
                if (id == "area11" || id == "BRightHip" || id == "BLeftHip" || id == "BGroin" || id == "BPelvis" || id == "BGenitals") {
                    //*****Pelvis ******
                    $("#ImgMan").stop().animate({
                        'top': '-698px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-439px'
                    });
                    $("#divZoomImage").stop().animate({
                        'top': '-698px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative',
                        'left': '-389px'
                    });
                }


                setTimeout(function () { setImage(id) }, 500);
            });

            $(".carousel-control area").hover(function () {
                var title = $(this).attr('name');
                $(this).data('tipText', title).removeAttr('name');
                if (IsTooltip == "True") {
                    $('<p class="tooltip"></p>')
                .text(title)
                .appendTo('body')
                .fadeIn('slow');
                }
            }, function () {
                // Hover out code
                $(this).attr('name', $(this).data('tipText'));
                $('.tooltip').remove();
            }).mousemove(function (e) {
                var mousex = e.pageX + 20; //Get X coordinates
                var mousey = e.pageY + 10; //Get Y coordinates
                $('.tooltip')
                .css({ top: mousey, left: mousex })
            });

            $(".carousel area").hover(function () {
                var title = $(this).attr('name');
                $(this).data('tipText', title).removeAttr('name');
                if (IsTooltip == "True") {
                    $('<p class="tooltip"></p>')
                .text(title)
                .appendTo('body')
                .fadeIn('slow');
                }
            }, function () {
                // Hover out code
                $(this).attr('name', $(this).data('tipText'));
                $('.tooltip').remove();
            }).mousemove(function (e) {
                var mousex = e.pageX + 20; //Get X coordinates
                var mousey = e.pageY + 10; //Get Y coordinates
                $('.tooltip')
                .css({ top: mousey, left: mousex })

                // $(this).bind('.maphilight');
            });




            //*************************Back View*****************************//

            $(".carousel-controlBack area").click(function () {

                $("#imgZoomOutButton").css({ 'visibility': 'visible' });
                var id = $(this).attr('id');

                $("#divZoomImageBack .map1").css({ 'position': 'relative' });
                $("#ImgManBack").css({ 'position': 'relative' });

                $("#div3").css({ visibility: 'hidden' });
                $("#divarrows").css({ visibility: 'visible' });

                if (id == "area62" || id == "area42" || id == "BBNeck(Back)" || id == "BBLeftEar" || id == "BBRightEar" || id == "BBScalp") {
                    //*****area62:- "HEAD"******area42:- Neck******
                    $("#ImgManBack").stop().animate({
                        'top': '-10px',
                        'left': '-420px',
                        'opacity': '0px',
                        'height': '1920px'
                    });
                    $("#divZoomBackImage").stop().animate({
                        'top': '-10px',
                        'left': '-380px',
                        'opacity': '0px',
                        'height': '1920px'
                    });
                }
                if (id == "area40" || id == "BBRightForearm" || id == "BBRightPalm" || id == "BBRightWrist" || id == "BBRightThumb" || id == "BBRightIndexFinger" || id == "BBRightMiddleFinger" || id == "BBRightRingFinger" || id == "BBRightPinkyFinger") {
                    //*****Right Lower Arm******
                    $("#ImgManBack").stop().animate({
                        'top': '-651px',
                        'left': '-820px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative'
                    });
                    $("#divZoomBackImage").stop().animate({
                        'top': '-651px',
                        'left': '-780px',
                        'opacity': '0px',
                        'height': '1920px',
                        'position': 'relative'
                    });
                }
                if (id == "area36" || id == "BBLeftForearm" || id == "BBLeftPalm" || id == "BBLeftWrist" || id == "BBLeftPinkyFinger" || id == "BBLeftRingFinger" || id == "BBLeftMiddleFinger" || id == "BBLeftIndexFinger" || id == "BBLeftThumb") {
                    //*****Left Lower Arm******
                    $("#ImgManBack").stop().animate({
                        'top': '-651px',
                        'left': '-90px',
                        'opacity': '0px',
                        'height': '1920px'
                    });
                    $("#divZoomBackImage").stop().animate({
                        'top': '-661px',
                        'left': '-30px',
                        'opacity': '0px',
                        'height': '1920px'
                    });
                }
                if (id == "area35" || id == "BBLeftElbow" || id == "BBLeftUpperarm" || id == "BBLeftShoulder") {
                    //*****Left Upper Arm******
                    $("#ImgManBack").stop().animate({
                        'top': '-338px',
                        'left': '-114px',
                        'opacity': '0px',
                        'height': '1920px'
                    });
                    $("#divZoomBackImage").stop().animate({
                        'top': '-338px',
                        'left': '-114px',
                        'opacity': '0px',
                        'height': '1920px'
                    });
                }
                if (id == "area39" || id == "BBRightElbow" || id == "BBRighttShoulder" || id == "BBRightUpperarm") {
                    //*****Right Upper Arm******
                    $("#ImgManBack").stop().animate({
                        'top': '-331px',
                        'left': '-641px',
                        'opacity': '0px',
                        'height': '1920px'
                    });
                    $("#divZoomBackImage").stop().animate({
                        'top': '-331px',
                        'left': '-641px',
                        'opacity': '0px',
                        'height': '1920px'
                    });
                }
                if (id == "area48" || id == "BBLeftBackofKnee" || id == "BBLeftHamString") {
                    //*****Right Upper Leg******
                    $("#ImgManBack").stop().animate({
                        'top': '-1036px',
                        'left': '-585px',
                        'opacity': '0px',
                        'height': '1920px'
                    });
                    $("#divZoomBackImage").stop().animate({
                        'top': '-1036px',
                        'left': '-250px',
                        'opacity': '0px',
                        'height': '1920px'
                    });
                }
                if (id == "area46" || id == "BBRightBackofKnee" || id == "BBRightHamString") {
                    //*****Left Upper Leg******
                    $("#ImgManBack").stop().animate({
                        'top': '-1036px',
                        'left': '-310px',
                        'opacity': '0px',
                        'height': '1920px'
                    });
                    $("#divZoomBackImage").stop().animate({
                        'top': '-1036px',
                        'left': '-520px',
                        'opacity': '0px',
                        'height': '1920px'
                    });
                }
                if (id == "area47" || id == "BBLeftCalf" || id == "BBLeftAnkle" || id == "BBLeftSole") {
                    //*****Left Lower Leg******
                    $("#ImgManBack").stop().animate({
                        'top': '-1480px',
                        'left': '-310px',
                        'opacity': '0px',
                        'height': '1920px'
                    });
                    $("#divZoomBackImage").stop().animate({
                        'top': '-1480px',
                        'left': '-250px',
                        'opacity': '0px',
                        'height': '1920px'
                    });
                }
                if (id == "area49" || id == "BBRightCalf" || id == "BBRightAnkle" || id == "BBRightSole") {
                    //*****Right Lower Leg******
                    $("#ImgManBack").stop().animate({
                        'top': '-1480px',
                        'left': '-610px',
                        'opacity': '0px',
                        'height': '1920px'
                    });
                    $("#divZoomBackImage").stop().animate({
                        'top': '-1480px',
                        'left': '-550px',
                        'opacity': '0px',
                        'height': '1920px'
                    });

                }
                if (id == "area32" || id == "BBLeftBack" || id == "BBRightBack" || id == "BBUpperSpine" || id == "BBLowerSpine") {
                    //*****Back******
                    $("#ImgManBack").stop().animate({
                        'top': '-434px',
                        'left': '-436px',
                        'opacity': '0px',
                        'height': '1920px'
                    });
                    $("#divZoomBackImage").stop().animate({
                        'top': '-434px',
                        'left': '-380px',
                        'opacity': '0px',
                        'height': '1920px'
                    });
                }
                if (id == "area33" || id == "BBLeftHip" || id == "BBButtonLock" || id == "BBRightHip") {
                    //*****ButtonLock******
                    $("#ImgManBack").stop().animate({
                        'top': '-734px',
                        'left': '-436px',
                        'opacity': '0px',
                        'height': '1920px'
                    });
                    $("#divZoomBackImage").stop().animate({
                        'top': '-734px',
                        'left': '-378px',
                        'opacity': '0px',
                        'height': '1920px'
                    });
                }


                setTimeout(function () { setImageBack(id) }, 500);
            });

            $(".carousel-controlBack area").hover(function () {
                var title = $(this).attr('name');
                $(this).data('tipText', title).removeAttr('name');
                if (IsTooltip == "True") {
                    $('<p class="tooltip"></p>')
                .text(title)
                .appendTo('body')
                .fadeIn('slow');
                }
            }, function () {
                // Hover out code
                $(this).attr('name', $(this).data('tipText'));
                $('.tooltip').remove();
            }).mousemove(function (e) {
                var mousex = e.pageX + 20; //Get X coordinates
                var mousey = e.pageY + 10; //Get Y coordinates
                $('.tooltip')
                .css({ top: mousey, left: mousex })
            });
        });
        function setImage(id) {
            if (id == "area10") {
                $("#divZoomImage").css({ top: '-450px', position: 'relative', left: '-385px', height: '1920px' });
            }
            else if (id == "area13") {
                $("#divZoomImage").css({ top: '-957px', position: 'relative', left: '-239px', height: '1920px' });
            }
            else if (id == "area30") {
                $("#divZoomImage").css({ top: '-1472px', position: 'relative', left: '-239px', height: '1920px' });
            }
            else if (id == "area14") {
                $("#divZoomImage").css({ top: '-939px', position: 'relative', left: '-532px', height: '1920px' });
            }
            else if (id == "area31") {
                $("#divZoomImage").css({ top: '-1476px', position: 'relative', left: '-530px', height: '1920px' });
            }
            else if (id == "area27" || id == "area9") {
                $("#divZoomImage").css({ top: '-19px', position: 'relative', left: '-380px', height: '1920px' });
            }
            else if (id == "area8") {
                $("#divZoomImage").css({ top: '-260px', position: 'relative', left: '-376px', height: '1920px' });
            }
            else if (id == "area11") {
                $("#divZoomImage").css({ top: '-698px', position: 'relative', left: '-380px', height: '1920px' });
            }
            else if (id == "area4") {
                $("#divZoomImage").css({ top: '-331px', position: 'relative', left: '-249px', height: '1920px' });
            }
            else if (id == "area28") {

                $("#divZoomImage").css({ top: '-651px', position: 'relative', left: '-36px', height: '1920px' });
            }
            else if (id == "area7") {
                $("#divZoomImage").css({ top: '-331px', position: 'relative', left: '-581px', height: '1920px' });
            }
            else if (id == "area29") {
                $("#divZoomImage").css({ top: '-651px', position: 'relative', left: '-759px', height: '1920px' });
            }
            else {
                //                $("#divZoomImage").css({ top: '-100px', position: 'relative' });
                //                $("#divZoomImage").css({ height: '500px' });
            }
            var ZoomImage = $("#ImgMan");
            ZoomImage.attr({ usemap: "#Map1", useMap: "#Map1" });
            $('.map').maphilight({ fade: true, stroke: true, fillColor: 'b84949', fillOpacity: 0.5 });
            $('.map1').maphilight({ fade: true, stroke: true, fillColor: 'b84949', fillOpacity: 0.5 });
            $('.map3').maphilight({ fade: true, stroke: false, fillColor: 'b84949', fillOpacity: 0.5 });
        }
        function ZoomOut() {
            var alt = $("#imgView").attr('alt');
            $("#divarrows").css({ visibility: 'hidden' });
            if (alt == "Front View") {
                $("#divZoomBackImage").css({ position: '', left: '0', top: '0' });
                $("#divZoomBackImage").html("<img src='${pageContext.request.contextPath}/resources/images/Man_Back.png' id='ImgManBack' border='0' class='map1' style='height: 900px;padding-left:60px;' />");
                $("#ImgManBack").stop().animate({
                    'opacity': '1',
                    'height': '370px',
                    'z-index': '55'

                }, "fast");
            }
            if (alt == "Back View") {
                $("#divZoomImage").css({ position: '', left: '0', top: '0' });
                $("#divZoomImage").html("<img src='${pageContext.request.contextPath}/resources/images/Man_FrontZoomed.png' id='ImgMan' border='0' class='map1' style='height: 900px;padding-left:60px;' />");
                $("#ImgMan").stop().animate({
                    'opacity': '1',
                    'height': '370px',
                    'z-index': '55'
                }, "fast");

            }
            setTimeout(ZoomOutImage, 500);
        }
        function ZoomOutImage() {

            var alt = $("#imgView").attr('alt');
            if (alt == "Front View") {
                $("#imgZoomOutButton").css({ 'visibility': 'hidden' });
                $("#div3").css({ visibility: 'visible' });
            }
            if (alt == "Back View") {
                $("#imgZoomOutButton").css({ 'visibility': 'hidden' });
                $("#div1").css({ visibility: 'visible' });
            }
        }
        function MapHighlight(area) {
            var areaHighlight = $(".carousel area").attr('name');
            if (areaHighlight != area) {

            }
        }
        function BackView() {
            var alt = $("#imgView").attr('alt');
            if (alt == "Back View") {
                $("#imgView").attr("src", "${pageContext.request.contextPath}/resources/images/frontview.png");
                $("#divBack").css({ display: 'block' });
                $("#divFront").css({ display: 'none' });
                $("#imgView").attr('alt', 'Front View');
                ReloadBack();
            }
            if (alt == "Front View") {
                $("#imgView").attr("src", "${pageContext.request.contextPath}/resources/images/backview.png");
                $("#divBack").css({ display: 'none' });
                $("#divFront").css({ display: 'block' });
                $("#imgView").attr('alt', 'Back View');
                Reload();
            }
        }

        function setImageBack(id) {
            if (id == "area62" || id == "area42") {
                $("#divZoomBackImage").css({ top: '-10px', position: 'relative', left: '-360px', height: '1920px' });
            }
            if (id == "area40") {
                $("#divZoomBackImage").css({ top: '-651px', position: 'relative', left: '-760px', height: '1920px' });
            }
            else if (id == "area39") {
                $("#divZoomBackImage").css({ top: '-331px', position: 'relative', left: '-581px', height: '1920px' });
            }
            else if (id == "area36") {
                $("#divZoomBackImage").css({ top: '-651px', position: 'relative', left: '-30px', height: '1920px' });
            }
            else if (id == "area35") {
                $("#divZoomBackImage").css({ top: '-338px', position: 'relative', left: '-54px', height: '1920px' });
            }
            else if (id == "area48") {
                $("#divZoomBackImage").css({ top: '-1036px', position: 'relative', left: '-525px', height: '1920px' });
            }
            else if (id == "area46") {
                $("#divZoomBackImage").css({ top: '-1036px', position: 'relative', left: '-250px', height: '1920px' });
            }
            else if (id == "area47") {
                $("#divZoomBackImage").css({ top: '-1480px', position: 'relative', left: '-250px', height: '1920px' });
            }
            else if (id == "area49") {
                $("#divZoomBackImage").css({ top: '-1480px', position: 'relative', left: '-550px', height: '1920px' });
            }
            else if (id == "area32") {
                $("#divZoomBackImage").css({ top: '-434px', position: 'relative', left: '-376px', height: '1920px' });
            }
            else if (id == "area33") {
                $("#divZoomBackImage").css({ top: '-734px', position: 'relative', left: '-376px', height: '1920px' });
            } else {
                // $("#divZoomBackImage").css({ top: '-10px', position: 'relative', left: '-360px', height: '1920px' });
            }
            var ZoomImage = $("#ImgManBack");
            ZoomImage.attr({ usemap: "#Map3", useMap: "#Map3" });
            $('.map').maphilight({ fade: true, stroke: true, fillColor: 'b84949', fillOpacity: 0.5 });
            $('.map1').maphilight({ fade: true, stroke: true, fillColor: 'b84949', fillOpacity: 0.5 });
            $('.map3').maphilight({ fade: true, stroke: false, fillColor: 'b84949', fillOpacity: 0.5 });
        }
        function MoveLeft() {
            var alt = $("#imgView").attr('alt');
            if (alt == "Front View") {
                $('#divZoomBackImage').animate({
                    left: '+=200'
                });
            }
            if (alt == "Back View") {
                $('#divZoomImage').animate({
                    left: '+=200'
                });
            }
        }
        function MoveRight() {
            var alt = $("#imgView").attr('alt');
            if (alt == "Front View") {
                $('#divZoomBackImage').animate({
                    left: '-=200'
                });
            }
            if (alt == "Back View") {
                $('#divZoomImage').animate({
                    left: '-=200'
                });
            }
        }
        function MoveTop() {
            var alt = $("#imgView").attr('alt');
            if (alt == "Front View") {
                $('#divZoomBackImage').animate({
                    top: '+=200'
                });
            }
            if (alt == "Back View") {
                $('#divZoomImage').animate({
                    top: '+=200'
                });
            }
        }
        function MoveBottom() {
            var alt = $("#imgView").attr('alt');
            if (alt == "Front View") {
                $('#divZoomBackImage').animate({
                    top: '-=200'
                });
            }
            if (alt == "Back View") {
                $('#divZoomImage').animate({
                    top: '-=200'
                });
            }
        }
    </script>
    
    


</html>

