<%-- 
    Document   : index
    Created on : Dec 18, 2018, 3:24:28 PM
    Author     : l2pc203e
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="process.jsp">
            <table>
                <tr>
                    <td>User Name: </td>
                    <td><input type="text" name= "user"/></td>
                </tr>
                <tr>
                    <td>User Pass:</td>
                    <td><input type="password" name= "pass"/></td>
                </tr>
               
            </table>

            <input type="submit" value="Send"/>
        </form>
        <c:if   test="${not empty param.errM}">
            <c:out value="${param.errM}"/>
        </c:if>
    </body>
</html>
