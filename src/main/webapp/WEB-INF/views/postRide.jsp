<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
				<a class="navbar-brand" href="#"><img src='<c:url value="/resources/images/logosmall.png"/>'/>&nbsp;Locomate</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="./postride">Post Ride</a></li>
					<li><a href="./">My Records</a></li>
					<li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown">${name}<b class="caret"></b></a>
			          <ul class="dropdown-menu">
			            <li><a href="#">Edit Account</a></li>
			            <li><a href="#">Change Password</a></li>
			            <li class="divider"></li>
			            <li><a href="./logout">Logout</a></li>
			          </ul>
			        </li>				
				</ul>
			</div>
		</div>
	</nav><br/><br/><br/>
	<div class="container main">
		<div class="row well blackbg">
	  		<div class="gridster">
	  		<div class="form-group">
						<label for="" >Type of Offer </label>&nbsp &nbsp &nbsp
						<select  style="width:120px">
             <option value="regular" class="form-control">Regular</option>
           <option value="freelance" class="form-control">FreeLancer</option>
</select>
                      
					</div>
					<div class="form-group" >
					<label for="">From</label>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
					<input type="text" class="" style="width:120px" >&nbsp &nbsp &nbsp
					<label for="">To</label>
					<input type="text" style="width:120px" >
					</div>
					<div class="form-group">
					<label>Trip Type</label>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
					<%-- <form:radiobutton path="" value="M"/>One way 
                    <form:radiobutton path="" value=""/>Return  --%>
                    <input type="radio" value="One Way">One Way</input>
                    <input type="radio" value="Return"> Return</input>
					</div>
					<div class="form-group">
					<label>Departure Time</label>
					
					<select>
					<%-- <form:option value="${i}"></form:option> --%>
					<c:forEach var="i" begin="1" end="12">
					<option value="${i}">
					<c:out value="${i}"></c:out>
					</c:forEach>
					</select> &nbsp
					<select>
					<%-- <form:option value="${i}"></form:option> --%>
					<c:forEach var="i" begin="00" end="60">
					<option value="${i}">
					<c:out value="${i}"></c:out>
					</c:forEach>
					</select>&nbsp
					<select> 
					<%-- <form:option value="${i}"></form:option> --%>
					<option value="">AM</option>
					<option value="">PM</option>
					</select>&nbsp &nbsp
					<label>Return Time</label>
					
					<select>
					<%-- <form:option value="${i}"></form:option> --%>
					<c:forEach var="i" begin="1" end="12">
					<option value="${i}">
					<c:out value="${i}"></c:out>
					</c:forEach>
					</select> &nbsp
					<select>
					<%-- <form:option value="${i}"></form:option> --%>
					<c:forEach var="i" begin="00" end="60">
					<option value="${i}">
					<c:out value="${i}"></c:out>
					</c:forEach>
					</select>&nbsp
					<select> 
					<%-- <form:option value="${i}"></form:option> --%>
					<option value="">AM</option>
					<option value="">PM</option>
					</select>
					</div>
					<div class="form-group">
					<label>Persistence</label>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
					<%-- <form:radiobutton path="" value="M"/>One way 
                    <form:radiobutton path="" value=""/>Return  --%>
                    <input type="radio" value="">Every Day</input>
                    <input type="radio" value=""> Week Days</input>
                     <input type="radio" value=""> Week Days</input> 	
					</div>
	  		</div>
	  		<button type="submit">Post it ..</button>
	  		</div></div>
	  		
</body>
</html>