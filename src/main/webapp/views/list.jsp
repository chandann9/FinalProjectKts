<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>list page</title>
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



<table class="table">
  <thead class="thead-light">
    <tr>
   
      <th scope="col">item name</th>
      <th scope="col">quantity item</th>
      <th scope="col">date</th>
    </tr>
  </thead>
  <tbody>
    
  
   <c:forEach  items="${item}" var="l">
        <tr >
            <td style="color: blue;">${l.name}</td>
            <td style="color: navy;">${l.quantity}</td>
            <td style="color:  green;">${l.date}</td>
            
             
        </tr>
        </c:forEach>
 
   
  </tbody>
</table>





</body>
</html>