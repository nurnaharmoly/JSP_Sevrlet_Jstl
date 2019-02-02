<%-- 
    Document   : searchForm
    Created on : Jan 2, 2019, 8:41:31 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
    <%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
    <f:view>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Results</title>
        </head>
        <body>
            <h4>Your Search Results</h4>
            <P>Leaving From: <h:outputText value="#{flight.origination}"/><br/>
            <P>Going to: <h:outputText value="#{flight.destination}"/><br/>
            <P>Depart Date: <h:outputText value="#{flight.departDate}"/><br/>
            <P>Depart Time: <h:outputText value="#{flight.departTime}"/><br/>
            <P>Return Date: <h:outputText value="#{flight.returnDate}"/><br/>
            <P>Return Time: <h:outputText value="#{flight.returnTime}"/><br/>
        </body>
    </f:view>
</html>
