<%-- 
    Document   : welcome
    Created on : Dec 10, 2018, 10:05:05 AM
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
           out.print("Welcome " + request.getParameter("uname"));
           session.setAttribute("n", request.getParameter("uname"));
           String driver = config.getInitParameter("dname");
           out.print("driver name is=" + driver);
           
           String byName = config.getServletName();
           out.print("driver name is=" + byName);
        %>
        <a href="second.jsp">second jsp page</a>
    </body>
</html>
