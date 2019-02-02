<%-- 
    Document   : logout
    Created on : Jan 10, 2019, 12:57:07 AM
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
