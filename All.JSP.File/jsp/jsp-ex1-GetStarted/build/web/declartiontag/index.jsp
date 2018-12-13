<%-- 
    Document   : index
    Created on : Dec 11, 2018, 11:58:35 AM
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
        <%! int x=10; %>    
        <%= "Welcome to JSP" + x%>
        
        <%= "Name: " + request.getParameter("n")%>
        <%= "Email: " + request.getParameter("email")%>
        <%= "Age: " + request.getParameter("age")%>
        <%= "Gender: " + request.getParameter("gender")%>
        <%= "Hobby: " + request.getParameter("hobby")%>
        <%= "Country: " + request.getParameter("country")%>
                
        
    </body>
</html>
