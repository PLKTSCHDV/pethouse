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
<jsp:useBean id="p1" class="petehouse.operation.Pethouseoperation"></jsp:useBean>
<jsp:useBean id="p2" class="petehouse.operation.Pethouseoperation"></jsp:useBean>

<html lang="en">
  <head>
  <link rel="icon" type="image/gif/png/ico" href="title.ico" >
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>

    <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    

    <title>3e's Pet Shop</title>
  </head>
  <style>
 
 <jsp:include page="include/style.jsp"></jsp:include>
 
 </style>
  <body>
    <h1>Hello, world!</h1>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
  <div class="container-fluid">
  <div style="margin-left:-10%">  <a class="navbar-brand"><h1><a href="dashboard.jsp"><img src="dogprint.png" width="5%" height="3.5%" style="float:left;margin-top:0.5%"></a><div style="margin-top:1.5%">3e's PET HOUSE</div></h1>
    </DIV>
    <div >
   
    
    </div>
    <!-- 
    
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#"><h4>Home</h4>
                <span class="sr-only">(current)</span>
              </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><h4>Products</h4></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#Team"><h4>Developers</h4></a>
        </li>
        
        <li class="nav-item" style="margin-top:2.7%">
          <font size="3%">+91 01733 222555</font>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login.jsp"><h4>Login</h4></a>
        </li>
      </ul>
    </div>
    -->
  </div>
  <li class="nav-item" style="MARGIN-RIGHT:2%">
    	          <h4><font color="black">Welcome</h4></font>
    	        </li>

  <h3 style="margin-top:1%;MARGIN-RIGHT:5%">
      <%
  try{
	
    String name=user.getFname();
    if(name!=null)
    {%>
   <a href="profile.jsp?id=<%=user.getUid()%>">
   <% 	out.print(name);%></a><%
    }
  }
    catch(Exception e)
    {
    	e.printStackTrace();
    }
    %></h3></font>  
    <li class="nav-item">
    	          <a class="nav-link" href="login.jsp"><h4><font color="black">Login</h4></font></a>
    	        </li>
  

</nav>
<header>
<div class="container-fluid" style="width:70%">
  <h2>Explore</h2>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
      
    <div class="carousel-inner">

       
 
      <div class="item active">
<% String c=request.getParameter("category");
ResultSet rs=p1.showanimal(c);
                
 
                 if(rs.next()){
             %>
             <%String s= rs.getString("img");%>
        <a href="#"><img src="<%=s %>" alt="chitkara" style="width:100%;"></a>
        <h1 style="float:right;position:absolute;top:8px;right:16px"><font color="white">Scroll down for more</font-color></h1>
          
        <div class="carousel-caption">
        <h1><%=rs.getString("category") %></h1>
          <p><%=rs.getString("description") %></p>
          <% System.out.println(s);%>
           </div>
      </div>
<%} %>

    </div>

    <!-- Left and right controls -->
  
  </div>
</div>


<footer class="footerx"  style="width=100%;align-content: center;z-index:5">

Build By - 3e's associates <br>
<h6>2019 All copyrights &copy reserved</h6> 

</footer>
</header>
<!-- Page Content -->
<section class="py-5 text-center">
      <div class="container"> 
        <h2 class="text-center">Our Services</h2>
        <p class="text-muted mb-5 text-center"><font size=2.5px>We deal in providing you and your loved ones that partner of life which they would never regret recieving.</font></p>
        <div class="row">
          <div class="col-sm-6 col-lg-4 mb-3">
            <svg class="lnr text-primary services-icon">
              <use xlink:href="#lnr-magic-wand"></use>
            </svg>
            <h6>Magical Moments</h6>
            <p class="text-muted">Engrose magical memories and memonts in your life with these amazing friends.</p>
          </div>
          <div class="col-sm-6 col-lg-4 mb-3">
            <svg class="lnr text-primary services-icon">
              <use xlink:href="#lnr-heart"></use>
            </svg>
            <h6>Bring them close to heart</h6>
            <p class="text-muted">They are not mean and wont let you walk away from them so easily.</p>
          </div>
          <div class="col-sm-6 col-lg-4 mb-3">
            <svg class="lnr text-primary services-icon">
              <use xlink:href="#lnr-screen"></use>
            </svg>
            <h6>Electronic Gadgets</h6>
            <p class="text-muted">Monitor your pet's growth and problems through our electronic gadgets.</p>
          </div>
        </div>
      </div>
</section>

<section class="main">
<div class="container mt-4" style="margin-left:15%;margin-right:15%">
    <div style="margin-right:9%"><h1 class="mb-4 p-4 text-secondary" align="center">Available pets</h1></div>
<div style="margin-left:5%">

      
<%
String cc=request.getParameter("category");
System.out.println("newcategory "+cc);
ResultSet r=p2.showanimal(cc);

while(r.next())
{
String ss=r.getString("img");
System.out.println("newimg "+ss);
%>
<div class="row" style="margin-top:5%;margin-bottom:10%">
   <div class="card-columns">
  
<div class="flip-card">
<div class="flip-card-inner">
<div class="flip-card-front">

      <img class="card-img-top" src="<%=ss %>" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title"><%=r.getString("breed") %></h5>
      <p class="card-text"><%=r.getString("Description") %>.</p>
    </div>
    </div>
    <div class="flip-card-back">
    <h3 class="card-title">
    AGE:<br>
    <%=r.getString("age") %>
    </h3>
    </div>
    </div>
    </div>       
 
	
<table id="animal" style="margin-top:85%">
  <tr>
    <th>Content</th>
    <th>Details</th>
  </tr>
  <tr>
    <td>Unique no</td>
 	<td><%=r.getString("no")%></td>
 </tr>
  <tr>
    <td>Name</td>
 	<td><%=r.getString("name")%></td>
 </tr>
  <tr>
    <td>Breed</td>
    <td><%=r.getString("breed")%></td>  
  </tr>
  
  <tr>
    <td>Age</td>
    <td><%=r.getString("age")%></td>
    
  </tr>
  <tr>
    <td>Price(in Rs)</td>
    <td><%=r.getString("price")%></td>
    
  </tr>
  </table>

<center>
<form action="buy.jsp?id=<%=r.getInt("no") %>" method="post">
<button type="submit" class="btn btn-success" style="margin-top:5%;padding: 5px;width:100%"><h3>Buy  
</h1></button>
</form>
</center>

</div>
</div>
<br><br><br><br><br><br>

<%} %>


   </div>
   </section>
 </div>
 
 
 <br><br>
 
 
   
   <!-- Header -->
  <header class=" text-center py-5 mb-4" style="background-color:rgba(0,0,0, 0.9)">
  <div class="container" >
    <h1 class="font-weight-light text-white"><a name="Team">Meet the Team</a></h1>
  </div>
</header>

<!-- Page Content -->

<jsp:include page="include/meetteam.jsp"></jsp:include>


  <!-- /.row -->


<br><br><br><br>

<!-- /.container -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
      <script src="https://cdn.linearicons.com/free/1.0.0/svgembedder.min.js"></script>

  </body>
</html>