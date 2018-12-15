<%-- 
    Document   : studentForm
    Created on : Dec 15, 2018, 11:03:37 AM
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
        <h:form >
            <h2> Student Form</h2>
         
               
                <h:inputText value="#{studentController.stu.name}"></h:inputText>
                <h:inputText value="#{studentController.stu.email}"></h:inputText>
                <h:commandButton action="submit" value="Submit"></h:commandButton>
        </h:form>
    </body>
    </f:view>
</html>
