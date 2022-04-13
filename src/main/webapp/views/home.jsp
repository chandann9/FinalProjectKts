<%@page import="org.apache.jasper.tagplugins.jstl.core.Redirect"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>super market project</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body >

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="/">Home page</a></li>
      <li><a href="/list">list page</a></li>
      <li><a href="/add">add  item page </a></li>
      <li><a href="/delete">delete page</a></li>
    </ul>
  </div>
</nav>
  

<form action="home" method="post">

<p style="color: green;" >${message} </p>


<h1 style="color: red;">Project of super market</h1>




<p >select 1 to list down all item</p>
<p >select 2 to add new item</p>
<p >select 3 to delete an item</p>
  <label style="color: green;" for="choice">choice (between 1 and 3):</label>
  <input type="number" id="choice" name="choice" min="1" max="3">
  <input type="submit"/> 
</form>
</body>
</html>