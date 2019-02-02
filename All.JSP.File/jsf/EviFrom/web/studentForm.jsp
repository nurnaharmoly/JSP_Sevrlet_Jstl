<%-- 
    Document   : studentForm
    Created on : Jan 3, 2019, 7:09:40 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
    <%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
    <f:view>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>
        <body>
            <h1>Student Form</h1>
        <h:form>
            <table>
                <tr>
                    <td>ID:</td>
                    <td><h:inputText value="#{std.stdu.id}"></h:inputText></td>
                </tr>

                <tr>
                    <td>Name:</td>
                    <td><h:inputText value="#{std.stdu.name}"></h:inputText></td>
                </tr>

                <tr>
                    <td>Gender:</td>
                    <td><h:selectOneRadio layout="lineDirection"value="#{std.stdu.gender}">
                    <f:selectItem itemValue="Male" itemLabel="Male"></f:selectItem>
                    <f:selectItem itemValue="Female" itemLabel="Female"></f:selectItem>
                </h:selectOneRadio></td>
                </tr>

                <tr>
                    <td>Education:</td>
                    <td><h:selectManyCheckbox value="#{std.stdu.education}">
                    <f:selectItem itemValue="SSC" itemLabel="SSC"></f:selectItem> 
                    <f:selectItem itemValue="HSC" itemLabel="HSC"></f:selectItem> 
                    <f:selectItem itemValue="Honours" itemLabel="Honours"></f:selectItem> 
                    <f:selectItem itemValue="Masters" itemLabel="Masters"></f:selectItem> 
                </h:selectManyCheckbox></td>
                </tr>

                <tr>
                    <td>Round:</td>
                    <td><h:selectOneMenu value="#{std.stdu.round}">
                    <f:selectItem itemValue="" itemLabel="Select The Round"></f:selectItem>
                    <f:selectItem itemValue="Round_37" itemLabel="Round_37"></f:selectItem>
                    <f:selectItem itemValue="Round_38" itemLabel="Round_38"></f:selectItem>
                    <f:selectItem itemValue="Round_39" itemLabel="Round_39"></f:selectItem>
                </h:selectOneMenu>></td>
                </tr>

                <tr>
                    <td>Email:</td>
                    <td><h:inputText value="#{std.stdu.email}"></h:inputText></td>
                </tr>

                <tr>
                    <td>Password:</td>
                    <td><h:inputSecret value="#{std.stdu.password}"></h:inputSecret>t></td>
                </tr>

                <tr>
                    <td></td>
                    <td><h:commandButton value="Submit" action="submit"></h:commandButton>
                <h:commandButton action="#{std.reset()}" value="Reset"></h:commandButton>
                </td>
                </tr>
            </table>
        </h:form>
    </body>
</f:view>
</html>
