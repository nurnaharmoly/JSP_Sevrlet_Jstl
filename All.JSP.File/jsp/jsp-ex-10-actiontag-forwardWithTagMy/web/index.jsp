<%-- 
    Document   : index
    Created on : Dec 10, 2018, 9:42:16 AM
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
        <jsp:forward page="forwardWithTag.jsp">
            <jsp:param name="name" value="coderbd.com"/>
        </jsp:forward>
    </body>
</html>
