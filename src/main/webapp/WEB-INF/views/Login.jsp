<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<html>
<head>
<title>Login</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"></link>
<link href="<c:url value="/resources/css/bootstrap-theme.min.css" />"  rel="stylesheet"></link>
<link href="<c:url value="/resources/css/style.css" />"></link>
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
				<a class="navbar-brand" href="#"><img src='<c:url value="/resources/images/fordon_small.png"/>'/>&nbsp;Locomate</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="./register">Registration</a></li>					
				</ul>
			</div>
		</div>
	
	</nav>
	<br /><br /><br />
	<div class="container main">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
			<br/>
			<h3>Login</h3>			
			<hr>
				<%-- <form:form  commandName="userform" action="./submitLogin" method="post"> --%>
				<form action="./loginform" method="post" name="" role="form">
					<%-- <form:errors path="*" cssClass="errorblock" element="div" /> --%>
					<div class="form-group">
						<label for="UserName">Username</label> 
						<input type="text" class="form-control" id="UserName" name="UserName"
							placeholder="Enter Username">
					</div>
					<div class="form-group">
						<label for="Password">Password</label> 
						<input type="password" class="form-control" id="Password"
							name="Password" placeholder="Enter Password">
					</div>
					<a href="./forgotPassword">Forgot Password?</a>
					<br/>
					<br/>
					<button id="" class="btn btn-primary pull-left" formaction="./submitLogin">Login</button> <!--   <input type="submit"/> -->
					<button value="Register" class="btn btn-primary pull-right" formaction="./register">Register</button>										
				</form>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
	<footer>
		<div class="container">
			<hr/>
			<p>Copyrights &copy; ${year} | <cite title="Source Title">Locomate</cite>
				<span class="pull-right">
					<a href="adout.jsp" target="_blank">About US</a>&nbsp;
					<a href="terms.jsp" target="_blank">Terms of Use</a> &nbsp;
					<a href="privacy.jsp" target="_blank">Privacy Policy</a> &nbsp;								
					<a href="team.jsp" target="_blank">Team</a> &nbsp;
					<a href="Careers.jsp" target="_blank">Careers</a>					
				</span>
			</p>
		</div>
	</footer>
</body>
</html>