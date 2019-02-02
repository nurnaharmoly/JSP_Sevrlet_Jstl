<%-- 
    Document   : searchForm
    Created on : Dec 17, 2018, 10:44:30 PM
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
        <h:form>
        <h2>Search Flights</h2>
        <table>
            <tr><td colspan="4">Where and when do you want to travel?</td></tr>
            <tr>
                <td colspan="2">Leaving form</td>
                <td colspan="2">Going to</td>
            </tr>
            <tr>
                <td>
                  <h:inputText value="#{flightSearchController.flight.origination}" size="35"></h:inputText>
                </td>
                <td>
                  <h:inputText value="#{flightSearchController.flight.destination}" size="35"></h:inputText>
                </td>
            </tr>
            <tr>
                <td colspan="2">Departing</td>
                <td colspan="2">Returning</td>
            </tr>
            <tr>
                <td>
                <h:inputText value="#{flightSearchController.flight.departDate}"></h:inputText>
                </td>
                <td>
                <h:inputText value="#{flightSearchController.flight.departTime}"></h:inputText>
                </td>
                <td>
                <h:inputText value="#{flightSearchController.flight.returnDate}"></h:inputText>
                </td>
                <td>
                <h:inputText value="#{flightSearchController.flight.returnTime}"></h:inputText>
                </td>
            </tr>
        </table>
                <p>
                <h:commandButton value="Search" action="submit"></h:commandButton>
                </p>
        </h:form>
    </body>
    </f:view>
</html>
