<%-- 
    Document   : second
    Created on : Dec 11, 2018, 9:48:19 AM
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
          String name = (String) pageContext.getAttribute("user", pageContext.SESSION_SCOPE);
          out.print("Hello " + name);
        %>
    </body>
</html>
