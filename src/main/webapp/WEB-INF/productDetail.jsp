<%-- 
    Document   : productDetail
    Created on : Feb 27, 2018, 12:34:50 PM
    Author     : Bren
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><c:out value="${product.name}"/></title>
    </head>
    <body>
        <table>
            <tr>
                <td>Name</td>
                <td><c:out value="${product.name}"/></td>
            </tr>
            <tr>
                <td>Id</td>
                <td><c:out value="${product.id}"/></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><c:out value="${product.price}"/></td>
            </tr>
        </table>
    </body>
</html>
