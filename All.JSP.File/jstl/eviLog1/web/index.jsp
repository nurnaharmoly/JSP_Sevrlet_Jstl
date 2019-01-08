<%-- 
    Document   : index
    Created on : Jan 5, 2019, 2:25:48 AM
    Author     : Asus
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:if test="${empty sessionScope['loginUser']}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        
        <a href="login.jsp">Logout
            <c:out value="${sessionScope['loginUser']}"></c:out>
        </a>
    </body>
</html>
