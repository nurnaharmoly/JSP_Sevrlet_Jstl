<%-- 
    Document   : StudentResult
    Created on : Jan 3, 2019, 8:00:07 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
    <%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
    <f:view>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>
        <body>
            <h1>Student Data</h1>
            ID:<h:outputText value="#{std.stdu.id}"></h:outputText><br><br>
        Name:<h:outputText value="#{std.stdu.name}"></h:outputText><br><br>
        Gender:<h:outputText value="#{std.stdu.gender}"></h:outputText><br><br>
        Education:<h:outputText value="#{std.stdu.education}"></h:outputText><br><br>
        Round:<h:outputText value="#{std.stdu.round}"></h:outputText><br><br>
        Email:<h:outputText value="#{std.stdu.email}"></h:outputText><br><br>
        Password:<h:outputText value="#{std.stdu.password}"></h:outputText><br><br>
        </body>
    </f:view>
</html>
