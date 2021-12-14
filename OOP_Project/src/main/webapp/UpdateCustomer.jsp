<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UpdateBooking</title>
	<link rel="stylesheet" type="text/css"  href="CSS/MyStyles.css">

</head>
<body>

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
                        <a href="index.html" class="nav-item nav-link">Home</a>
                        <a href="about.html" class="nav-item nav-link active">Booking</a>
                        <a href="service.html" class="nav-item nav-link">About</a>
                        <a href="pricing.html" class="nav-item nav-link">Payment</a>
                        <a href="service.html" class="nav-item nav-link">Service</a>
                        <a href="pricing.html" class="nav-item nav-link">Profile</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu border-0 rounded-0 m-0">
                                <a href="blog.html" class="dropdown-item">Blog Grid</a>
                                <a href="single.html" class="dropdown-item">Blog Detail</a>
                            </div>
                        </div>
                        <a href="contact.html" class="nav-item nav-link">Contact</a>
                    </div>
                </div>
            </nav>
        </div>
    </div>


	<!-- to catch passed existing data through parameters -->
	<%
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String paymemt = request.getParameter("payment");
		String clothes = request.getParameter("clothes");
	
	%>

	<!-- display existing data -->
	<center>
	
	<table id="table2"  border="4" color="blue" width="400" height="600"  >
	<th>
	<section id="contain">
	<div class="container">
	<h1><i><b><span class="content-header" data-wow-delay="0.2s" data-wow-duration="2s">Update Your Booking In Here</span></b></i></h1></br></br>
	<form action="update" method="post">
		
	<lable>Customer ID:</lable>
	<input type="text" name="id" value="<%= id %>" readonly></br></br>
	<lable>Customer Frist Name:</lable>
	<input type="text" name="fname" value="<%= fname %>"></br></br>
	<lable>Customer Last Name:</lable>
	<input type="text" name="lname" value="<%= lname %>"></br></br>
	<lable>Customer Address:</lable>
	<input type="text" name="address" value="<%= address %>"></br></br>
	<lable>Customer Mobile No:</lable>
	<input type="text" name="phone" value="<%=phone %>"></br></br>
	<lable>Customer E-mail:</lable>
	<input type="text" name="email" value="<%= email %>"></br></br>
	<lable>Payment Method:</lable>
	<input type="text" name="payment" value="<%= paymemt %>"></br></br>
	<lable>Number Of Clothes:</lable>
	<input type="text" name="clothes" value="<%= clothes %>"></br></br>
	
	
	<input type="submit" name="submit" value="Update My Booking"></br>
	
	</form>
	</div>
	</section>
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