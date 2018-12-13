<%-- 
    Document   : welcome
    Created on : Dec 11, 2018, 9:48:33 AM
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
           String name = request.getParameter("uname");
           out.print("welcome " + name);
           
           pageContext.setAttribute("user", name, pageContext.SESSION_SCOPE);
        %>
        <a href="second.jsp"> second jsp page</a>
        
    </body>
</html>
