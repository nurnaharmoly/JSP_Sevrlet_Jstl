<%-- 
    Document   : logout
    Created on : Jan 11, 2019, 10:04:21 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% session.removeAttribute("loginUser");%>
        <a href="index.jsp">Logout</a>
    </body>
</html>
