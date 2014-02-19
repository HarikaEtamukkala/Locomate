<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Registration</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap-theme.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.11.0.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="./">Locomate</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="./register">Registration</a></li>
					<li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login <b class="caret"></b></a>
			          <div class="dropdown-menu login">			            
			          	<form action="./loginform" method="post" name="" role="form">
							<%-- <form:errors path="*" cssClass="errorblock" element="div" /> --%>
							<div class="form-group">
								<label for="exampleInputEmail1">Username</label> 
								<input type="email" class="form-control" id="userName" name="userName"
									placeholder="Enter Username">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> 
								<input type="password" class="form-control" id="password"
									name="password" placeholder="Enter Password">
							</div>
							<a href="./forgotPassword">Forgot Password?</a>
							<br/>
							<br/>
							<button id="" class="btn btn-primary pull-left" formaction="./submitLogin">Login</button>
							<button value="Register" class="btn btn-primary pull-right" formaction="./register">Register</button>										
						</form>
			          </div>
			        </li>
				</ul>
			</div>
		</div>
	</nav>
	<br /><br /><br />
	<div class="container">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
			<br/>
			<h3>Sign Up</h3>
			<hr>
				<form action="./submitForm" id="" method="post" onsubmit="return ValidateForm(this);" role="form">
					<input id="SnapHostID" name="SnapHostID" type="hidden" value="YN7YBJ7YDWGH" />
					<script type="text/javascript">
						function ValidateForm(frm) {
						if (frm.FirstName.value == "") {alert('First Name is required.');frm.FirstName.focus();return false;}
						if (frm.LastName.value == "") {alert('Last Name is required.');frm.LastName.focus();return false;}
						if (frm.Organization.value == "") {alert('Organization is required.');frm.Organization.focus();return false;}
						if (frm.FromEmailAddress.value == "") {alert('Email address is required.');frm.FromEmailAddress.focus();return false;}
						if (frm.FromEmailAddress.value.indexOf("@") < 1 || frm.FromEmailAddress.value.indexOf(".") < 1) {alert('Please enter a valid email address.');frm.FromEmailAddress.focus();return false;}
						if (frm.StreetAddress1.value == "") {alert('Address is required.');frm.StreetAddress1.focus();return false;}
						if (frm.City.value == "") {alert('City is required.');frm.City.focus();return false;}
						if (frm.Country.value == "") {alert('Country is required.');frm.Country.focus();return false;}
						if (frm.CaptchaCode.value == "") {alert('Enter web form code.');frm.CaptchaCode.focus();return false;}
						return true; }
						function ReloadCaptchaImage(captchaImageId) {
						var obj = document.getElementById(captchaImageId);
						var src = obj.src;
						var date = new Date();
						var pos = src.indexOf('&rad=');
						if (pos >= 0) { src = src.substr(0, pos); }
						obj.src = src + '&rad=' + date.getTime();
						return false; }
					</script>
					
					<div class="form-group">
						<label for="UserName">UserName*:</label> 
						<input type="text" class="form-control" id="UserName" name="UserName"
							placeholder="Enter Username">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password:</label> 
						<input type="password" class="form-control" id="password"
							name="password" placeholder="Enter Password">
					</div>
					<div class="form-group">
						<label for="FirstName">FirstName*:</label> 
						<input type="text" class="form-control" id="FirstName"
							name="FirstName" placeholder="Enter First Name">
					</div>
					<div class="form-group">
						<label for="LastName">LastName*:</label> 
						<input type="text" class="form-control" id="LastName"
							name="LastName" placeholder="Enter Last Name">
					</div>
					<div class="form-group">
						<label for="LastName">Occupation*:</label> 
						<input type="text" class="form-control" id="Occupation"
							name="Occupation" placeholder="Enter Occupation">
					</div>
					<div class="form-group">
						<label for="email">Email address*:</label> 
						<input type="text" class="form-control" id="email"
							name="email" placeholder="Enter Email Address">
					</div>
					<div class="form-group">
						<label for="email">Cell Phone*:</label> 
						<input type="text" class="form-control" id="mobileNumber"
							name="mobileNumber" placeholder="Enter Mobile Number">
					</div>
					<br/>
					<label>* - required fields.</label> <input id="skip_Submit" name="skip_Submit" type="submit"  class="btn btn-primary pull-right" value="Submit" />
					
					<!--  <table border="0" cellpadding="5" cellspacing="0" width="600">
					<tr>
					<td>UserName:</td><td>
					<input id="UserName" name="UserName" type="text" maxlength="60" style="width:146px; border:1px solid #999999"/>
					</td></tr>
					<tr>
					<tr>
					<td>password:</td><td>
					
					<input id="password" name="password" type="password" maxlength="60" style="width:146px; border:1px solid #999999" />
					</td></tr>
					<tr>
					<td><b>First, Last Name*:</b></td>
					
					<td>
					<input id="FirstName" name="FirstName" type="text" maxlength="60"  style="width:146px; border:1px solid #999999" />
					<form:errors path="name" cssclass="error"></form:errors>
					<input id="LastName" name="LastName" type="text" maxlength="60" style="width:146px; border:1px solid #999999" />
					<form:errors path="name" cssclass="error"></form:errors>
					</td>
					</tr><tr>
					<td><b>Occupation*:</b></td>
					<td><input id="Occupation" name="Occupation" type="text" maxlength="60" style="width:300px; border:1px solid #999999" /></td>
					</tr><tr>
					<td><b>Email address*:</b></td>
					<td><input id="FromEmailAddress" name="email" type="text" maxlength="60" style="width:300px; border:1px solid #999999" /></td>
					
					<td><b>Cell Phone:</b></td>
					<td><input id="mobileNumber" name="mobileNumber" type="text" maxlength="43" style="width:250px; border:1px solid #999999" /></td>
					</tr><tr>
					<td colspan="2" align="center">
					<br />
					<br />
					* - required fields. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
					<input id="skip_Submit" name="skip_Submit" type="submit" value="Submit" />
					</td>
					</tr>
					</table>-->
					<br />
				</form>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
	<footer>
		<div class="container">
			<hr/>
			<p>Copyrights &copy; ${year} | <cite title="Source Title">Locomate</cite></p>
		</div>
	</footer>
</body>
</html>