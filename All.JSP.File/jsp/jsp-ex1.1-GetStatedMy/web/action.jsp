<%-- 
    Document   : action
    Created on : Dec 10, 2018, 9:23:14 AM
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
        <h1>Data Read from Index page Form</h1>
        <%= "Name: "+request.getParameter("fName") %>
    </body>
</html>
