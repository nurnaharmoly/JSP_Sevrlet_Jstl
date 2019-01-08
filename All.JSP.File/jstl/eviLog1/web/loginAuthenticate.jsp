<%-- 
    Document   : loginAuthenticate
    Created on : Jan 5, 2019, 2:24:53 AM
    Author     : Asus
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${empty param.username or empty param.password}">
            <c:redirect url="login.jsp">
                <c:param name="errMsg" value="Please Enter Username and password"/>
            </c:redirect>
        </c:if>
        
        <c:if test="${not empty param.username and not empty param.password}">
            <s:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
                             url="jdbc:mysql://localhost:3306/jstllogin"
                             user="root" password="1234"/>
            <s:query dataSource="${ds}" var="selectQ">
                select count(*) as kount from users
                where username='${param.username}'
                and password='${param.password}'
            </s:query>
                <c:forEach items="${selectQ.rows}" var="r">
                    <c:choose>
                        <c:when test="${r.kount gt 0}">
                            <c:set scope="session"
                                   var="loginUser"
                                   value="${param.username}"/>
                                <c:redirect url="index.jsp"></c:redirect>
                            
                        </c:when>
                        <c:otherwise>
                             <c:redirect url="login.jsp">
                                 <c:param name="errMsg" value=" Username/password does not match"></c:param>
                             </c:redirect>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
        </c:if>
    </body>
</html>
