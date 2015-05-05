<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="edu.neu.cs5200.rest.client.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Homepage</title>


</head>
<body ng-app="MovieApp">
    <div ng-controller="MovieController" class="container">
        <h1>Recipe Advisor</h1>
        <h1>Help you to decide your daily recipe</h1>
        <form action="Result.jsp" method="GET">
        <input type="text" name="keyword" class="form-control" ng-model="searchByTitle">
        <input type="submit" value="Submit" class="btn btn-primary" ng-click="searchMovies()">Search</button>
        </form>

<table id="pangbo" border="1">


<tr>

<td>
first row first column
</td>

<td>
first row second column
</td>



</tr>


<tr>

<td>
second row first column
</td>

<td>
second row second column
</td>



</tr>


</table>




</body>
</html>

