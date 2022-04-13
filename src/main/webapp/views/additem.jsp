<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add item page</title>

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
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



<h1>Add new item</h1>



 
<form action="saveitem" method="post"  >

<div class="md-form">
<input  type="text" required="true" placeholder="enter name"  id="name" name="name" class="form-control" />
  <label  for="name">Item name</label>
   
</div>




<div class="md-form">
<input type="number" required="true" placeholder="enter quantity (integer value)"  id="quantity" name="quantity" class="form-control">
  <label for="quantity">item Quantity</label>
</div>


<div class="md-form">
  <input type="date" required="true" id="date"  name="date" class="form-control">
  <label for="date">Choose your date</label>
</div>


<button type="submit">Submit</button>       
      </form>


</body>
</html>