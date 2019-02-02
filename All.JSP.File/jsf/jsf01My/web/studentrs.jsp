<%-- 
    Document   : studentrs
    Created on : Dec 17, 2018, 11:16:27 PM
    Author     : Asus
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
        <h:outputText value="#{studentCon.student.name}"></h:outputText>
    </body>
    </f:view>
</html>
