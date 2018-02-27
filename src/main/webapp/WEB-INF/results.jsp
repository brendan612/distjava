<%-- 
    Document   : results.jsp
    Created on : Feb 27, 2018, 11:55:27 AM
    Author     : Bren
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results</title>
    </head>
    <body>
        <table>
            <c:forEach var="name" items="${nameList}">
                <tr>
                    <td>
                        <c:out value="${name.first}"/>
                    </td>
                    <td>
                        <a href="?id=<c:out value='${name.id}'/>">
                            <c:out value='${name.last}'/>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
