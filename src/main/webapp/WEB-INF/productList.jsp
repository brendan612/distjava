<%-- 
    Document   : productList
    Created on : Feb 27, 2018, 12:34:44 PM
    Author     : Bren
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Woah</title>
    </head>
    <body>
        <table>
            <c:forEach var="product" items="${productList}">
                <tr>
                    <td>
                        <c:out value="${product.name}"/>
                    </td>
                    <td>
                        <a href="?id=<c:out value='${product.id}'/>">
                            <c:out value='${product.price}'/>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
