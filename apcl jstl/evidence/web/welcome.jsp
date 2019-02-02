<%-- 
    Document   : welcome
    Created on : Dec 18, 2018, 4:10:39 PM
    Author     : l2pc203e
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>WELCOME ${sessionScope["userinfo"]}</h1><br>
        <a href="index.jsp">Logout
            <c:remove var="userinfo" scope="session"/>
        </a>
    </body>
</html>
