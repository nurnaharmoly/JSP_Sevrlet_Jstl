<%-- 
    Document   : login
    Created on : Dec 26, 2018, 11:31:37 PM
    Author     : Asus
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Please login</h1>
        <form action="loginAuthenticate.jsp">
            Username: <input type="text" name="username"><br>
            Password: <input type="password" name="password"><br>
            <input type="submit" value="Login">
        </form>
        <font color="red">
        <c:if test="${not empty param.errMsg}">
        <c:out value="${param.errMsg}"/>
        </c:if>
        </font>
    </body>
</html>
