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
            <title>Form</title>
        </head>
        <body>
            <h:form>
                <h3>Search Flights</h3><br/>
                Leaving From: <h:inputText value="#{flight.origination}"/><br/>
                Going to: <h:inputText value="#{flight.destination}"/><br/>
                Depart Date: <h:inputText value="#{flight.departDate}"/><br/>
                Depart Time: <h:inputText value="#{flight.departTime}"/><br/>
                Return Date: <h:inputText value="#{flight.returnDate}"/><br/>
                Return Time: <h:inputText value="#{flight.returnTime}"/><br/>
                <h:commandButton value="Search" action="submit"/>
            </h:form>
            
        </body>
    </f:view>
</html>
