<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>booking</title>
	<link rel="stylesheet" type="text/css"  href="CSS/MyStyles.css">
	
</head>
<body>
	
	<!-- Header Started -->
    <div class="container-fluid bg-primary py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center text-lg-left mb-2 mb-lg-0">
                    <div class="d-inline-flex align-items-center">
                        <a class="text-white pr-3" href="">FAQs</a>
                        <span class="text-white">|</span>
                        <a class="text-white px-3" href="">Help</a>
                        <span class="text-white">|</span>
                        <a class="text-white pl-3" href="">Support</a>
                    </div>
                </div>
                <div class="col-md-6 text-center text-lg-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="text-white px-3" href="">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a class="text-white px-3" href="">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a class="text-white px-3" href="">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                        <a class="text-white px-3" href="">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a class="text-white pl-3" href="">
                            <i class="fab fa-youtube"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
     <div class="container-fluid position-relative nav-bar p-0">
        <div class="container-lg position-relative p-0 px-lg-3" style="z-index: 9;">
            <nav class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0 pl-3 pl-lg-5">
                <a href="" class="navbar-brand">
                    <h1 class="m-0 text-secondary"><span class="text-primary">CLEAN</span>X</h1>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between px-3" id="navbarCollapse">
                    <div class="navbar-nav ml-auto py-0">
                        <a href="#" class="nav-item nav-link">Home</a>
                        <a href="booking.jsp" class="nav-item nav-link active">Booking</a>
                        <a href="#" class="nav-item nav-link">About</a>
                        <a href="#" class="nav-item nav-link">Payment</a>
                        <a href="#" class="nav-item nav-link">Service</a>
                        <a href="#" class="nav-item nav-link">Profile</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Registration</a>
                            <div class="dropdown-menu border-0 rounded-0 m-0">
                                <a href="blog.html" class="dropdown-item">Blog Grid</a>
                                <a href="single.html" class="dropdown-item">Blog Detail</a>
                            </div>
                        </div>
                        <a href="#" class="nav-item nav-link">Contact</a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- Header End -->
	
	<!-- Customer Booking Forum -->
	<center>
	<table id="table1"  border="4" color="blue" width="500" height="600"  >
	
	<th>
	<section id="content">
	<div class="container" >
	<h3><i><span class="content-header" data-wow-delay="0.2s" data-wow-duration="2s">Customer Booking Form</span></i></h3></br></br>
	<form id="customer"  action="insert"  method="post">
	<lable for="fname">Frist Name:</lable><br>
	<input type="text" id="fname" name="fname" required placeholder="Firstname"><br><br>
	<lable for="lname">Last Name:</lable><br>
	<input type="text" id="lname" name="lname" required placeholder="Lastname"><br><br>
	<lable for="address">Address:</lable><br>
	<input type="text" id="Address" name="address" required placeholder="Address"><br><br>
	<lable for="MobileNo">Phone:</lable><br>
	<input type="int" id="Mobileno" name="Mobileno" required placeholder="Phone"><br><br>
	<lable for="E-mail">E-mail:</lable><br>
	<input type="text" id="E-mail" name="E-mail" required placeholder="E-Mail"><br><br>
	<lable for="payment">Payment Method:</lable><br>
	<input type="text" id="payment" name="payment" required placeholder="Method(Cash/Card)"><br><br>
	<lable for="clothes">Clothes:</lable><br>
	<input type="text" id="clothes" name="clothes" required placeholder="No Of Clothes"><br><br>
	<lable for="user">UserName:</lable><br>
	<input type="text" id="user" name="user" required placeholder="The Username You Like"></br></br>
	<lable for="pass">Password:</lable><br>
	<input type="password" id="pass" name="pass" required placeholder="The Password You Like"></br></br>
	
	
	<center>
	<button  class="log" type="submit">BookNow</button></br></br>
	<a href="login.jsp">Log In</a></center>
	
	</form>
	
	</div>
	</section>
	<a href="#"><div class="arrow">
                <span></span>
                <span></span>
                <span></span>
  
</div></a>
	</th>
	</table>
	
	</center>
	
	 <div class="container-fluid bg-primary text-white mt-5 pt-5 px-sm-3 px-md-5">
        <div class="row pt-5">
            <div class="col-lg-3 col-md-6 mb-5">
                <a href=""><h1 class="text-secondary mb-3"><span class="text-white">CLEAN</span>X</h1></a>
                <p>Volup amet magna clita tempor. Tempor sea eos vero ipsum. Lorem lorem sit sed elitr sit no, sed kasd et ipsum dolor duo dolor</p>
                <div class="d-flex justify-content-start mt-4">
                    <a class="btn btn-outline-light rounded-circle text-center mr-2 px-0" style="width: 38px; height: 38px;" href="#"><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-outline-light rounded-circle text-center mr-2 px-0" style="width: 38px; height: 38px;" href="#"><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-outline-light rounded-circle text-center mr-2 px-0" style="width: 38px; height: 38px;" href="#"><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-outline-light rounded-circle text-center mr-2 px-0" style="width: 38px; height: 38px;" href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
                <h4 class="text-white mb-4">Get In Touch</h4>
                <p>If you have any problem about our service any time contact us...</p>
                <p><i class="fa fa-map-marker-alt mr-2"></i>123 Street, Katubadda, Moratuwa</p>
                <p><i class="fa fa-phone-alt mr-2"></i>+012 345 67890</p>
                <p><i class="fa fa-envelope mr-2"></i>cleanX@gmail.com</p>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
                <h4 class="text-white mb-4">Quick Links</h4>
                <div class="d-flex flex-column justify-content-start">
                    <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Home</a>
                    <a class="text-white mb-2" href="booking.jsp"><i class="fa fa-angle-right mr-2"></i>Booking</a>
                    <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>About</a>
                    <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Payment</a>
                    <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Service</a>
                    <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Profile</a>
                    <a class="text-white" href="#"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
                 <h4 class="text-white mb-4"  font-family: "'Oleo Script', cursive">Customer Login</h4>
                <form action="">
                   
                        <button class="btn btn-lg btn-secondary btn-block border-0" type="submit">Login Now</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
   
	
	
</body>
</html>