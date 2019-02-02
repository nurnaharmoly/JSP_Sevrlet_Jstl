<%-- 
    Document   : process
    Created on : Dec 18, 2018, 3:35:52 PM
    Author     : l2pc203e
--%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:if test="${empty param.user and empty param.pass}">
            <c:redirect url="index.jsp">
                <c:param name="errM" value="User name and password is empty"/>
            </c:redirect>
        </c:if>
        <c:if test="${empty param.user}">
            <c:redirect url="index.jsp">
                <c:param name="errM" value="User name is empty"/>
            </c:redirect>
        </c:if>
        <c:if test="${empty param.pass}">
            <c:redirect url="index.jsp">
                <c:param name="errM" value=" password is empty"/>
            </c:redirect>
        </c:if>
        <c:if test="${not empty param.user and not empty param.pass}">
            <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" 
                               url="jdbc:mysql://localhost:3306/login_db" user="root" password="apcl123456"/>
            <sql:query var="squery" dataSource="${ds}">
                SELECT count(*) as aa FROM login_table WHERE user_name="${param.user}" and password="${param.pass}"
            </sql:query>  
            <c:forEach var="r" items="${squery.rows}">
                <c:choose>
                    <c:when test="${r.aa gt 0}">
                        <c:set var="userinfo" value="${param.user}" scope="session"/>
                        <c:redirect url="welcome.jsp"/>
                    </c:when>
                    <c:otherwise>
                        <c:redirect url="index.jsp">
                            <c:param name="errM" value="User name or password not correct"/>
                        </c:redirect>
                    </c:otherwise>
                </c:choose>
            </c:forEach>   
        </c:if>
    </body>
</html>
