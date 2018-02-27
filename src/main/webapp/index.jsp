<%-- 
    Document   : index
    Created on : Feb 27, 2018, 11:41:45 AM
    Author     : Bren
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products</title>
        <link rel="stylesheet" href="../css/bootstrap.min.css">         
        <script src="../js/bootstrap.min.js"></script>     
  <body>
        <div class="container">
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">WebSiteName</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#">Page 1</a></li>
                        <li><a href="#">Page 2</a></li>
                    </ul>
                    <form class="navbar-form navbar-left" method="get" action="ProductController">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search..." name="search" />
                        </div>
                        <input type="submit" value="Search" class="btn btn-default" />
                    </form>
                </div>
            </nav>
        </div>

    </body>
</html>
