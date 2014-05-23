<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Set New Password</title>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
		<form class="form-horizontal" action="/updatePassword" method="post">
			<h3 class="text-danger">Set New Password</h3>
			
			<div class="form-group">
				<label class="col-sm-offset-1 col-sm-2">Enter New Password</label>
				<div class="col-sm-4">
					<input required="required" type="password" class="form-control" name="newPassword">
					<div class="help-inline"></div>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-offset-1 col-sm-2">Confirm New Password</label>
				<div class="col-sm-4">
					<input required="required" type="password" class="form-control">
					<div class="help-inline"></div>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-offset-1 col-sm-2"></label>
				
				<div class="col-sm-4">
					<button type="submit" class="btn btn-primary">
						Set Password
					</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Set New Password</title>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<script src='${pageContext.request.contextPath}/resources/app/bower_components/jquery/jquery.min.js' type="text/javascript"></script>
<script src='${pageContext.request.contextPath}/resources/js/jquery.validate.js'></script>
<script src='${pageContext.request.contextPath}/resources/js/bootstrap.min.js'></script>

</head>
<body>
	<div class="container">
		<div class="heading">
			<form class="form-horizontal" action="updatePassword" method="POST" id="changePassword">
				<legend></legend>
				<br>
				<br>
				<br>
				<div class="row">
					<div class="well" style="width: 45%">
						<h4>Please Set a New Password</h4>
						<div class="form-group">
							<label class="col-sm-offset-1 col-sm-5">Enter New Password</label>
							<div class="col-sm-6">
								<input required="required" type="password" id="password" class="form-control" name="newPassword">
								<div class="help-inline"></div>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-offset-1 col-sm-5">Confirm New Password</label>
							<div class="col-sm-6">
								<input required="required" type="password" name="cpassword" class="form-control">
								<div class="help-inline"></div>
							</div>
						</div>
						<button type="submit" class="btn btn-success">Set Password</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#changePassword").validate({
				rules : {
					newPassword : {
						required : true,
						passwordCheck : true,
						minlength : 6
					},
					cpassword : {
						required : true,
						equalTo : "#password"
					}
			},
			messages : {
				newPassword : {
					required : "Enter your password",
					passwordCheck : "Password must contain atleast one A-Z and 0-9",
					minlength : "Password must be minimum 6 characters"
				},
				cpassword : {
					required : "Enter confirm password",
					equalTo : "Password and Confirm Password must match"
				}
			},
	
			errorClass : "help-inline",
			errorElement : "span",
			highlight: function (element) {
			    $(element).closest('.control-group').removeClass('success').addClass('error');
			},
			success: function(element) {
			     element
			        .addClass('valid')
			        .closest('.control-group').removeClass('error').addClass('success');
			}
			});
			
		});
	</script>

	<script>
	$(document).ready(function(){
		jQuery.validator.addMethod("passwordCheck", function(value, element) {
			var pattern = /^[A-Za-z0-9]*?([A-Za-z][0-9]|[0-9][A-Za-z])[A-Za-z0-9]*$/;
			var pwd = value;
			 if (pattern.test(pwd)) {
				 return true;
			 }
			 else
			 {	 
				 return false;
			 } 
			},"");
		
	});
	
	</script>	
	
</body>
</html>

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
