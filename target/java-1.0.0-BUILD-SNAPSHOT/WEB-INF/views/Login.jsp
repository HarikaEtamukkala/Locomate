<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Spring </title>
</head>
<body>
    <%-- <form:form id="login" action="loginform.do" method="post"
        commandName=""> --%>
        <form action="./loginform" method="post">
        <table>
            <tr>
                <td colspan="3"><h3> Login</h3></td>
            </tr>
            <tr>
                <td><label>UserName</label></td>
                <td><%-- <form:input path="userName"></form:input> --%>
                <input type="text" id="userName" name="loginuserName">
                </td>
                <td><%-- <font color="red"><form:errors path="userName"></form:errors> --%></font></td>
            </tr>
            <tr>
                <td><label>Password</label></td>
                <td><%-- <form:input path="password" type="password"></form:input> --%>
                <input type="password" id="password" name="userPassword">
                </td>
                <td><%-- <font color="red"><form:errors path="password"></form:errors> --%></font></td>
            </tr>
            <tr>
                <!-- <td colspan="1" align="center" ><input type="submit"
                    value="Login" /></td> -->
            <td><button id="" formaction="./submitLogin">Login</button></td>
                <td colspan="1" align="center">
                <button value="Register" formaction="./register">Register</button></td>
                <td></td>
            </tr>
            <tr>
                <td colspan="3" align="center"><font color="red"><form:errors /></font></td>
            </tr>
        </table>
        </form>
   <%--  </form:form> --%>
</body>
</html>