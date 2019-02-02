<%-- 
    Document   : login
    Created on : Jan 7, 2019, 10:30:39 AM
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
        <form action="loginAuthe.jsp">
            Username: <input type="text" name="username"><br>
            Password: <input type="password" name="password"><br>
            <input type="submit" value="Login"><br>
            <font color="red"><c:if test="${not empty param.errMsg}">
                <c:out value="${param.errMsg}"></c:out>
            </c:if>
            </font>
        </form>
    </body>
</html>
