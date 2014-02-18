<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Sign Up</h2>
<form action="./submitForm" id="" method="post" onsubmit="return ValidateForm(this);" >
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
<table border="0" cellpadding="5" cellspacing="0" width="600">
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
<
<br />
* - required fields. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<input id="skip_Submit" name="skip_Submit" type="submit" value="Submit" />
</td>
</tr>
</table>
<br />
</form>

</body>
</html>