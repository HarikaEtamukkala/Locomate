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
				<a class="navbar-brand" href="./">Locomate</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="./register">Registration</a></li>
					<li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login <b class="caret"></b></a>
			          <div class="dropdown-menu login">	
			        <form:form action="./register" modelAttribute="RegistrationPO" commandName="registrationPO" method="post">
			          <%-- 	<form action="./loginform" method="post" name="" role="form"> --%>
							<%-- <form:errors path="*" cssClass="errorblock" element="div" /> --%>
							<%-- <c:out value="${RegistrationPO.referrer}====="></c:out>
							<c:if test="${RegistrationPO.referrer eq frmregister}">
							<div>
							please Login...!!!!
							</div>
							</c:if> --%>
							<div class="form-group">
								<label for="exampleInputEmail1">Username</label> 
								<input type="text" class="form-control" id="userName" name="userName"
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
							<button value="Register" class="btn btn-primary pull-right" type="submit">Register</button>		
						<%-- </form> --%>
						</form:form>
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
			<h3>Login</h3>			
			<hr>
				<%-- <form:form  commandName="userform" action="./submitLogin" method="post"> --%>
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
					<button id="" class="btn btn-primary pull-left" formaction="./submitLogin">Login</button> <!--   <input type="submit"/> -->
					<button value="Register" class="btn btn-primary pull-right" formaction="./register">Register</button>										
				</form>
			</div>
			<div class="col-md-4"></div>
			<!-- <table>
				<tr>
					<td colspan="3"><h3>Login</h3></td>
				</tr>
				<tr>
					<td><label>UserName</label></td>
					<td>
						<%-- <form:input path="userName"></form:input>  --%> <input
						type="text" id="userName" name="userName">
					</td>
					<td>
						<%-- <font color="red"><form:errors path="userName"></form:errors> </font> --%>
					</td>
				</tr>
				<tr>
					<td><label>Password</label></td>
					<td>
						<%-- <form:input path="password" type="password"></form:input> --%>
						<input type="password" id="password" name="password">
					</td>
					<td>
						<%-- <font color="red"><form:errors path="password"></form:errors> --%>
						</font>
					</td>
				</tr>
				<tr>

					<td>
					</td>
					<td colspan="1" align="center">
						
					</td>
					<td></td>
				</tr>
				<tr>
					<td colspan="3" align="center"><font color="red"><form:errors /></font></td>
				</tr>
			</table> -->

			<%-- </form:form> --%>
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