<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="pethouse.dao.Pet"%>
<%@page import="pethouse.dao.userdetails"%>
<%Pet p=(Pet)session.getAttribute("p"); %>
<%userdetails user=(userdetails)session.getAttribute("user"); %>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>

<html lang="en">
  <head>
<jsp:useBean id="p1" class="petehouse.operation.Pethouseoperation"></jsp:useBean>
<jsp:useBean id="p2" class="petehouse.operation.Pethouseoperation"></jsp:useBean>
  <link rel="icon" type="image/gif/png/ico" href="title.ico" >
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    

    <title>3e's Pet Shop Thanks Page</title>
  </head>
  <style>
  
 <jsp:include page="include/style.jsp"></jsp:include>
 
  </style>
  <body>

<div class="container-fluid" style="background-color:rgb(0,0,0,0.05);">
<h3 style="margin-left:5%;margin-top:1.5%;margin-bottom:1.5%"><a href="dashboard.jsp"><img src="dogprint.png" width="3%" height="3.5%" style="float:left;margin-top:0.3%"></a>3e's Pet House</h3> 
</div>
<br><br><center><h1>Thanks for making purchase from 3e's Pet House</h1>
<br><br>
<a href="dashboard.jsp"><h3><font color="black">Click here Return to main page</h3></font></a>
</center>

  <footer class="footerx"  style="width=100%;align-content: center;z-index:5">
Build By - 3e's associates <br>
<h6>2019 All copyrights &copy reserved</h6> 

</footer>
</body>


