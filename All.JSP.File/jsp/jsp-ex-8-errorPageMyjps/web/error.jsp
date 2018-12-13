<%-- 
    Document   : error
    Created on : Dec 9, 2018, 11:56:37 PM
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
        <h1>Hello World!</h1>
        <%@page isErrorPage="true" %>
        <h3>Sorry an exception occured!</h3>
<div>        Exception is: <%= exception%>
</div>    </body>
</html>
