<%-- 
    Document   : second
    Created on : Dec 10, 2018, 10:04:17 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% 
           String name = (String) session.getAttribute("n");
           out.print("Hello " + name);
        %>
    </body>
</html>
