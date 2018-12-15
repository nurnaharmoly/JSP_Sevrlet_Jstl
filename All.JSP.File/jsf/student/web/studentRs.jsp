<%-- 
    Document   : studentRs
    Created on : Dec 15, 2018, 11:19:14 AM
    Author     : User
--%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <f:view>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <h:outputText value="#{studentController.stu.name}"></h:outputText>
        
    </body>
    </f:view>
</html>
