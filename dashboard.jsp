<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="pethouse.dao.userdetails"%>
<%@page import="petehouse.operation.Pethouseoperation"%>
<%userdetails user=(userdetails)session.getAttribute("user"); %>
<!doctype html>
<html lang="en">
  <head>
  <jsp:useBean id="c1" class="petehouse.operation.Pethouseoperation"></jsp:useBean>
  
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
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
.dropbtn {
  background-color: rgb(0,0,0,0.9);
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  border-radius:30px;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  font-size: 16px;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;

}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  
}

.dropdown-content a:hover {background-color: black;color:white;transition:0.5s}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #f1f1f1;color:black;transition:0.5s}

  <jsp:include page="include/style.jsp"></jsp:include>
  
 </style>
  <body>
    
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
  <div class="container-fluid">
  <div style="margin-left:-10%">  <a class="navbar-brand"><h1><a href="dashboard.jsp"><img src="dogprint.png" width="5%" height="3.5%" style="float:left;margin-top:0.5%"></a><div style="margin-top:1.5%">3e's PET HOUSE</div></h1>
    </div>
    <div >
    
    <div class="dropdown" >
  <button class="dropbtn" >Quick Search&nbsp&nbsp&nbsp<i class="fa fa-search"></i></button>
  <div class="dropdown-content">
    <a href="#dog">Dogs</a>
    <a href="#cat">Cats </a>
    <a href="#horse">Horses </a>
    <a href="#bird">Birds</a>
    <a href="#snake">Snakes </a>
    <a href="#rabbit">Rabbits </a>
    <a href="#tiger">Tigers</a>
    <a href="#mouse">Mice </a>
    <a href="#fish">Aquatics </a>
    
  </div>
</div>
    
    </div>
    <h3>
    
</h3>
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
    {
    	out.print(name);
    }
  }
    catch(Exception e)
    {
    	e.printStackTrace();
    }
    %></h3>  
  <% try{
    String name=user.getFname();
    if(name!=null)
    {
    	%>
    	
    	<li class="nav-item">
    	          <a class="nav-link" href="cart.jsp?id=<%=user.getUid() %>"><h4><font color="black">Cart</h4></font></a>
    	        </li>
    	        
    	      
    	<% 
    }
  }
    catch(Exception e)
    {
    	e.printStackTrace();
    }
    %>
    <li class="nav-item">
    	          <a class="nav-link" href="login.jsp"><h4><font color="black">Login</h4></font></a>
    	        </li>

</nav>

<!-- slide show and footer  -->
<jsp:include page="include/slideshow.jsp"></jsp:include>



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
    <div style="margin-right:9%"><h1 class="mb-4 p-4 text-secondary" align="center">Get them close</h1></div>
<div style="margin-left:5%">
      <div class="row">

   <div class="card-columns">
 <a href="display.jsp?category=Cat"> 
<div class="flip-card">
<div class="flip-card-inner">
<div class="flip-card-front">

      <img class="card-img-top" src="catcard.jpg" alt="Card image cap" height="68%">
    <div class="card-body">
      <h5 class="card-title">Cats</h5>
      <p class="card-text">Description.</p>
    </div>
    </div>
    <div class="flip-card-back">
    <h3 class="card-title">
    <br>
    </h3>
    <h5><b>TOP CAT BREEDS</b><br><br>
1)Siamese<br>2)Persian<br>
3)Maine Coon<br>4)Rag Doll<br>4)Rag Doll<br>6)Abyssinian<br>
7)Birman<br>8)Jungli billi<br>9)Pussy cat</h5>
    </div>
    </div>
    </div>       
  </a>
<a name="dog"></a>  
 <a href="display.jsp?category=dog"> 
    <div class="flip-card">
<div class="flip-card-inner">
<div class="flip-card-front">

      <img class="card-img-top" src="dogcard.jpg" alt="Card image cap" height="68%">
    <div class="card-body">
      <h5 class="card-title">Dogs</h5>
      <p class="card-text">Description.</p>
    </div>
    </div>
    <div class="flip-card-back">
    <h3 class="card-title">
   <br>
    </h3>
    <h5><b>TOP DOG BREEDS</b><br><br>
1)Germen Shepherd<br>2)Lebrador retreiver<br>3)Rottweiler<br>4)Pomerian<br>5)Husky<br>5)Mayank sharma<br>6)Alaskan Malamutes<br>7)Pitbull<br>8)BullDog
</h5>
    </div>
    </div>
    </div>
       </a>
       
<a href="display.jsp?category=Rabbit">
  <a name="rabbit"></a>
     <a href="display.jsp?category=rabbit">
  <div class="flip-card">
<div class="flip-card-inner">
<div class="flip-card-front">

    <img class="card-img-top" src="bunnycard.jpg" alt="Card image cap" >
    <div class="card-body">
      <h5 class="card-title">Rabbits</h5>
      <p class="card-text">Description.</p>
    </div>
  </div>
   <div class="flip-card-back">
    <h3 class="card-title">
    <br>
    </h3>
    <h5><b>TOP RABBIT'S BREED</b><br><br>
1)The Miniature Lop-eared Rabbit<br>
2)The Dutch Rabbit<br>3)The Harlequin<br>4)The Chinchilla<br>5)The Himalayan<br></h5>
    </div>
    </div>
    </div>
    </a>
    
  
  
</div>
</div>
</a>

      <a name="fish"></a>
<div class="row" style="margin-top:2%">

   <div class="card-columns">
      <a href="display.jsp?category=Fish">
  <div class="flip-card">
<div class="flip-card-inner">
<div class="flip-card-front">

    <img class="card-img-top" src="fish.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Aquatics</h5>
      <p class="card-text">Description.</p>
    </div>
  </div>
<div class="flip-card-back">
    <h3 class="card-title">
    <br>
    </h3>
    <h5><b>TOP FISH BREED</b><br><br>
1)Guppies<br>2)Mollies
<br>3)Platys<br>4)Swordtails<br>5)Anableps<br>6)Mosquitofish<br>7)Convict Cichlids<br>8)Killifish<br>9)mayank sharma
</h5>
    </div>
    </div>
    </div>
    </a>
    
      
  <a name="tiger"></a>
  <a href="display.jsp?category=lion">
  <div class="flip-card">
<div class="flip-card-inner">
<div class="flip-card-front">

    <img class="card-img-top" src="tigercard.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Lions</h5>
      <p class="card-text">Description.</p>
    </div>
  </div>
  <div class="flip-card-back">
    <h3 class="card-title">
    <br>
    </h3>
    <h5><b>TOP LIONS BREED</b><br><br>
l. persica (Asiatic lion)<br>2. leo (Barbary lion)<br>3. senegalensis (West African lion)<br>4. azandica (Northeast Congo Lion)<br>5. bleyenberghi (Southwest African or Katanga lion)
<br>6. krugeri (Southeast African or Transvaal lion)<br>7. melanochaita (Cape lion)</h5>
    </div>
    </div>
    </div>
    </a>
    
  <a name="horse"></a>
  <a href="display.jsp?category=Horse">
  <div class="flip-card">
<div class="flip-card-inner">
<div class="flip-card-front">

    <img class="card-img-top" src="horsecard.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Horses</h5>
      <p class="card-text">Description.</p>
      <p class="card-text"><small class="text-muted">descrition</small></p>
    </div>
  </div>
    <div class="flip-card-back">
    <h3 class="card-title">
    <br>
    </h3>
    <h5><b>TOP HORSE BREED</b><br>
1. Arabian<br>2. Quarter Horse<br>3. Thoroughbred<br>4. Tennessee Walker<br>5. Morgan<br>6. Paint<br>7. Appaloosa<br>8. Miniature Horse<br>9. mayank sharma</h5>>
    </div>
    </div>
    </div>
    </a>
    
</div>
</div>
   <a name="snake"></a>
      <div class="row" style="margin-top:2%">

   <div class="card-columns">
   <a href="display.jsp?category=Snake">
  <div class="flip-card">
<div class="flip-card-inner">
<div class="flip-card-front">

    <img class="card-img-top" src="snakecard.jpg" alt="Card image cap" height="67%">
    <div class="card-body">
      <h5 class="card-title">Snakes</h5>
      <p class="card-text">Description.</p>
    </div>
  </div>
<div class="flip-card-back">
    <h3 class="card-title">
    <br>
    </h3>
    <h5><b>TOP SNAKES BREED</b><br><br>
1)Corn Snake<br>2)California Kingsnake<br>3)Rosy Boa<br>4)Gopher Snake<br>5)kala naag<br>6)Ball Python<br>7)mayank sharma</h5>
    </div>
    </div>
    </div> 
    </a>
     
  <a name="mouse"></a>
  <a href="display.jsp?category=Mouse">
  <div class="flip-card">
<div class="flip-card-inner">
<div class="flip-card-front">

    <img class="card-img-top" src="mouse.jpg" alt="Card image cap" height="67%">
    <div class="card-body">
      <h5 class="card-title">Mice</h5>
      <p class="card-text">Description.</p>
    </div>
  </div>
  <div class="flip-card-back">
    <h3 class="card-title">
    <br>
    </h3>
    <h5><b>TOP MICE BREEDS</b><br><br>1)House mouse<br>2)Wood mouse<br>3)Deer mouse<br>4)Africa pygmy mouse<br>5)Mani mouse<br>6)Sable<br>White-footed mouse</h5>
    </div>
    </div>
    </div></a>
  
  <a name="bird"></a>
  <div class="flip-card">
  <a href="display.jsp?category=Bird">
<div class="flip-card-inner">
<div class="flip-card-front">

    <img class="card-img-top" src="birdcard.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Birds</h5>
      <p class="card-text">Description.</p>
      <p class="card-text"><small class="text-muted">Description</small></p>
    </div>
  </div>
    <div class="flip-card-back">
    <h3 class="card-title">
    <br>
    </h3>
    <h5><b>Top BIRDS BREED</b><br><br>
1)Parakeets/Budgies<br>2)Cockatiels <br>3)Finches and canaries<br>4)Lovebirds<br>5)African Grey birds<br>6)mayankandmehak </h5>
    </div>
    </div>
    </a>
    </div>
    
</div>
</div>



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