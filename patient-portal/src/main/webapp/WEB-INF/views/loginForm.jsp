<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<title>Patient Portal</title>

	<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <meta name="description" content="Fullscreen Background Image Slideshow with CSS3 - A Css-only fullscreen background image slideshow" />
    <meta name="keywords" content="css3, css-only, fullscreen, background, slideshow, images, content" />
    <meta name="author" content="Codrops" />
    <link rel="shortcut icon" href="../favicon.ico"> 
    <link rel="stylesheet"  href='${pageContext.request.contextPath}/resources/css/demo.css'>
    <link rel="stylesheet"  href='${pageContext.request.contextPath}/resources/css/style1.css'>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modernizr.custom.86080.js"></script>

	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Bootstrap -->
	<script src='${pageContext.request.contextPath}/resources/app/bower_components/jquery/jquery.min.js' type="text/javascript"></script>
	<link rel="stylesheet" media="screen" href='${pageContext.request.contextPath}/resources/css/bootstrap.css'>
	<link rel="stylesheet" href='${pageContext.request.contextPath}/resources/css/bootstrap.min.css'>
	<link rel="stylesheet"  type="text/css" media="all" href='${pageContext.request.contextPath}/resources/css/jquery.pnotify.default.css' />
	<link rel="stylesheet"  type="text/css" media="all" href='${pageContext.request.contextPath}/resources/css/jquery.pnotify.default.icons.css' />
	<script src='${pageContext.request.contextPath}/resources/js/jquery.pnotify.js' type="text/javascript"></script> 
</head>

<body id="page">

		 <ul class="cb-slideshow">
            <li><span>Image 01</span>
            <li><span>Image 02</span>
            <li><span>Image 03</span>
            <li><span>Image 04</span>
            <li><span>Image 05</span>
            <li><span>Image 06</span>
        </ul> 
	<div class="container">
		<div class="heading">
			
			<h1>Patient Portal</h1>
			<br> <br> <br>
			
			<%-- <br> <br>
			<h1>${emailPart}</h1>
			<c:if test="${not empty error}">
				<p class="error" style="color: red;">${error}</p>
			</c:if>

			<c:if test="${not empty success}">
				<p class="success">${success}</p>
			</c:if>

			<c:if test="${not empty registered}">
				<p class="registered" class="serif" style="color: #00ff00;">
					${registered}</p>
			</c:if>
			 --%>
			<form class="form-horizontal" action="/validate_user" method="post">
				<fieldset id="login_field">
					<div class="well" style="width: 350px;background-color: rgba(0, 0, 0, 0.2);">
						<p>
							<input type="text" name="patientCode"
								placeholder="Patient Code" rel="popover" required="required"
								data-content="What is your Code?">
						</p>

						<p>
							<input type="password" name="patientPassword" placeholder="Password"
								rel="popover" required="required"
								data-content="What is your Password?">
						</p>
						<p>
							<button type="submit" class="btn btn-success">Login</button>
						</p>
					</div>
				</fieldset>
			</form>

			<div class="forgotPass" style="float: left;margin-left: 1%;">
				<a href="forgot">Forgot Password?</a>
			</div>
			<div class="registration" style="margin-top: 5%;margin-right: 38%;">
				<h2>
					Don't have an account yet? <a href="registration"
						class="btn btn-large btn-warning">Register Now</a>
				</h2>
			</div>

			<footer style="margin-top: 17%;">
				<p>
					&copy; 2014 MindNerves Technologies.
				</p>
			</footer>
		</div>
	</div>
	
	<script src='${pageContext.request.contextPath}/resources/js/bootstrap.min.js'></script>
	<script src='${pageContext.request.contextPath}/resources/js/jqBootstrapValidation.js'></script>
	<script type="${pageContext.request.contextPath}/resources/js/jquery.validate.js"></script>
</body>
	
<script type="text/javascript">
	$('#login_field input').on('mouseenter',function() {
		$(this).popover('show')
	});
	$('#login_field input').on('mouseleave',function() {
		$(this).popover('hide')
	});
	$(document).ready(function(){
		if(localStorage.getItem("notification_mesg")){
			
			$.pnotify({
				history:false,
		        
		        text: localStorage.getItem("notification_mesg")
		    });
			localStorage.removeItem("notification_mesg")
		}
	});
</script>

<style>
body {
	padding-bottom: 40px;
	color: #5a5a5a;
}

h1 {
	margin: 10px 0;
	font-family: walkaway;
	font-weight: bold;
	line-height: 20px;
	color: black;
	text-rendering: optimizelegibility;
	font-style: italic;
}

.copy{
padding-left:60px;
color: grey;

}

.heading {
	padding-top: 40px;
}

.content {
	padding-top: 100px;
	border-color: black;
	border-style: solid;
	border-width: 2px;
}

/* CUSTOMIZE THE NAVBAR
    -------------------------------------------------- */

/* Special class on .container surrounding .navbar, used for positioning it into place. */
.navbar-wrapper {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	z-index: 10;
	margin-top: 20px;
	margin-bottom: -90px;
	/* Negative margin to pull up carousel. 90px is roughly margins and height of navbar. */
}

.navbar-wrapper .navbar {
	
}

/* Remove border and change up box shadow for more contrast */
.navbar .navbar-inner {
	border: 0;
	-webkit-box-shadow: 0 2px 10px rgba(0, 0, 0, .25);
	-moz-box-shadow: 0 2px 10px rgba(0, 0, 0, .25);
	box-shadow: 0 2px 10px rgba(0, 0, 0, .25);
}

#navbar-inner-scroll {
	border: 0;
	-webkit-box-shadow: 0 2px 10px rgba(0, 0, 0, .25);
	-moz-box-shadow: 0 2px 10px rgba(0, 0, 0, .25);
	box-shadow: 0 2px 10px rgba(0, 0, 0, .25);
	position: relative;
	top: 10px;
}

/* Downsize the brand/project name a bit */
.navbar .brand {
	font-size: 20px;
	font-family: apple chancery;
	font-weight: bold;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, .5);
	padding: 14px 20px 16px;
}

.navbar-inverse .brand,.navbar-inverse .nav>li>a {
	color: #F87217;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}

/* Navbar links: increase padding for taller navbar */
.navbar .nav>li>a {
	padding: 15px 20px;
}

/* Offset the responsive button for proper vertical alignment */
.navbar .btn-navbar {
	margin-top: 10px;
}

/* MARKETING CONTENT
    -------------------------------------------------- */

/* Center align the text within the three columns below the carousel */
.marketing .span4 {
	text-align: center;
}

.marketing h2 {
	font-weight: normal;
	color: #F87217;
}

.marketing .span4 p {
	margin-left: 10px;
	margin-right: 10px;
}
</style>

<%-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="heading">
			<legend></legend>
			<a href=""><img alt="" src="${pageContext.request.contextPath}/resources/images/custom/logo.png"></a>
			<form class="form-horizontal" action="/validate_user" method="post">
				<h3 class="text-danger">LOGIN PAGE</h3>
				<fieldset class="well col-sm-6" >
					<div class="form-group">
					<label class="col-sm-offset-1 col-sm-5">Patient Code</label>
					<div class="col-sm-6">
						<input required="required" type="text" class="form-control" name="patientCode">
						<div class="help-inline"></div>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-offset-1 col-sm-2">Password</label>
					<div class="col-sm-4">
						<input required="required" type="password" class="form-control" name="patientPassword">
						<div class="help-inline"></div>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-offset-1 col-sm-2"></label>
					
					<div class="col-sm-4">
						<button type="submit" class="btn btn-primary">
							Login
						</button>
					</div>
				</div>
				</fieldset>
			</form>
		</div>
	</div>
</body>
</html>

 --%>