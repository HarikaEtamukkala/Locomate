<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Spring </title>
</head>
<body>
    <%-- <form:form  commandName="userform" action="./submitLogin" method="post"
        > --%>
      <form action="./loginform" method="post" name="">
        <%-- <form:errors path="*" cssClass="errorblock" element="div" /> --%>
        <table>
            <tr>
                <td colspan="3"><h3> Login</h3></td>
            </tr>
            <tr>
                <td><label>UserName</label></td>
                <td> <%-- <form:input path="userName"></form:input>  --%>
                <input type="text" id="userName" name="userName" >
                </td>
                <td> <%-- <font color="red"><form:errors path="userName"></form:errors> </font> --%></td>
            </tr>
            <tr>
                <td><label>Password</label></td>
                <td> <%-- <form:input path="password" type="password"></form:input> --%>
                <input type="password" id="password" name="password" >
                </td>
                <td> <%-- <font color="red"><form:errors path="password"></form:errors> --%> </font></td>
            </tr>
            <tr>
               
            <td><button id=""  formaction="./submitLogin">Login</button>
          <!--   <input type="submit"/> -->
            </td>
                <td colspan="1" align="center">
                <button value="Register" formaction="./register">Register</button></td>
                <td></td>
            </tr>
            <tr>
                <td colspan="3" align="center"><font color="red"><form:errors /></font></td>
            </tr>
        </table>
        </form>
    <%-- </form:form> --%>
</body>
</html>