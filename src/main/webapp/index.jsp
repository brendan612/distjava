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
        <link href="content/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">   
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>    
    <body>

        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">Brendan's Store</a>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="../WEB-INF/productList.jsp">Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Cart</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact Us</a>
                    </li>
                </ul>

                <form class="form-inline" method="get" action="ProductController">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search..." name="search">
                    <input class="btn btn-success" type="submit" value="Search">
                </form>
            </div>

        </nav>
        <div class="container">
            <div class="jumbotron" style='background-color: transparent'>
                <h1>Welcome to Brendan's Store!</h1>
                <p class="lead">
                    We have the best prices and selection of high quality foods & beverages on the
                    Planet.
                </p>
                <label>Start searching for the perfect product for you:</label>
                <form class="form-inline" method="get" action="ProductController">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search..." name="search">
                    <input class="btn btn-success" type="submit" value="Search">
                </form>
            </div>
        </div>
    </body>
</html>
