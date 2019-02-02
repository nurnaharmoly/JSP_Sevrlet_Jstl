<%-- 
    Document   : index
    Created on : Jan 7, 2019, 10:30:12 AM
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
        <c:if test="${empty sessionScope['loginUser']}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        
        <a href="login.jsp">Logout
            <c:out value="${sessionScope['loginUser']}"></c:out>
        </a>
    </body>
</html>
