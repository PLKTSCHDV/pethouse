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
    

    <title>3e's Pet Shop Payment Page</title>
  </head>
  <style>
 
 <jsp:include page="include/style.jsp"></jsp:include>
  input[type=text],input[type=month], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
 
 </style>
  <body>

<div class="container-fluid" style="background-color:rgb(0,0,0,0.05);">
<h3 style="margin-left:5%;margin-top:1.5%;margin-bottom:1.5%"><a href="dashboard.jsp"><img src="dogprint.png" width="3%" height="3.5%" style="float:left;margin-top:0.3%"></a>3e's Pet House</h3> 
</div>
<center><h1>Make Your Payment</h1></center>

<div>
  <form action="thanks.jsp">
 <%  
int uid=user.getUid();
 int sum=0;
ResultSet r=p1.total(uid);
while(r.next())
{
	sum=sum+r.getInt("price");
	
}
%>
<center>
	<label for="lname">Your total</label>
    <input type="text" id="cn" name="cn" placeholder="Enter Card Number.." value="Rs.<%=sum %>" style="width:30%;text-align:center" disabled>

<br>
    <label for="cardtype">Card Type</label>
    <select id="cardtype" name="cardtype" style="width:30%;">
      <option value="Visa">Visa</option>
      <option value="Master card">Master card</option>
      <option value="American Express">American Express</option>
      <option value="Rupay">Rupay</option>
    </select>
 
 <br>
    <label for="lname">Card Number</label>
    <input type="text" id="cn" name="cn" placeholder="Enter Card Number.." style="width:50%;">
  
  	<center><label for="lname">CVV</label>
    <input type="text" id="cvv" name="cvv" placeholder="Enter CVV Number.." 			style="width:30%"></center>
    
  <center>
  	<label for="lname">Expiry</label>
    <input type="month" style="width:30%" id="exp" name="exp" placeholder="Enter Expiry.." value="2020-01">
  </center>
  
  	<label for="lname">Card Holder's Name</label>
    <input type="text" id="name" name="name" placeholder="Enter Card Holder's Name.." style="width:50%;">
  
  <br>
  <a href="thanks.jsp"><input type="submit" value="Submit" style="width:30%;"></a>
  </center>>
  </form>
</div>
<footer class="footerx"  style="width=100%;align-content: center;z-index:5">
Build By - 3e's associates <br>
<h6>2019 All copyrights &copy reserved</h6> 

</footer>
</body>
