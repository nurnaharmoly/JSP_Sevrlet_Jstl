<%-- 
    Document   : searchResults
    Created on : Dec 17, 2018, 11:05:07 PM
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
        <h3>You entered these search parameters</h3>
        <p>origination: <h:outputText value="#{flightSearchController.flight.origination}"></h:outputText> </p>
        <p>origination: <h:outputText value="#{flightSearchController.flight.departDate}"></h:outputText> </p>
        <p>origination: <h:outputText value="#{flightSearchController.flight.departTime}"></h:outputText> </p>
        <p>origination: <h:outputText value="#{flightSearchController.flight.destination}"></h:outputText> </p>
        <p>origination: <h:outputText value="#{flightSearchController.flight.returnDate}"></h:outputText> </p>
        <p>origination: <h:outputText value="#{flightSearchController.flight.returnTime}"></h:outputText> </p>
    </body>
    </f:view>
</html>
