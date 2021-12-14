<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CustomerBooking</title>
	<link rel="stylesheet" type="text/css"  href="CSS/MyStyles.css">
</head>
<body >

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

	<center>
	<script>
	var i = 0; // Start point
	var images = [];
	var time = 1000;

	// Image List
	images[0] = 'images/Jag4ZvbJfwJCxBDRdcqvp4.jpg';
	images[1] = 'images/images.jpg';
	images[2] = 'images/images (1).jpg';
	images[3] = 'images/samsung-addwash-frontloadwasher-large.jpg';
	images[4] = 'images/download.jpg';
	images[5] = 'images/about.jpg';
	images[6] = 'images/Professional-Laundry-Services.jpg';
	images[7] = 'images/Dry-Cleaning-Business.jpg';
	images[8] = 'images/Cleaner.jpg';

	// Change Image
	function changeImg(){
		document.slide.src = images[i];

		if(i < images.length - 1){
			i++;
		} else {
			i = 0;
		}

		setTimeout("changeImg()", time);
	}

	window.onload = changeImg;

</script>
<img name="slide" width="800" height="300">
</center>
	
	<center>
	<table id="table2" border="4">
	<c:forEach var="cus" items="${cusDetails}">
	
	<!-- load displayed to UpdateCustomer.jsp page -->
	<c:set var="id" value="${cus.id}"/>
	<c:set var="fname" value="${cus.fname}"/>
	<c:set var="lname" value="${cus.lname}"/>
	<c:set var="address" value="${cus.address}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="payment" value="${cus.paymentMethod}"/>
	<c:set var="clothes" value="${cus.clothes}"/>
	
	
	
	<h1><i><b><span class="content-header" data-wow-delay="0.2s" data-wow-duration="2s">Customer Booking Details</span></b></i></h1></br>
	
	<tr>
		<td>Customer ID:</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>Customer First Name:</td>
		<td>${cus.fname}</td>
	</tr>
	<tr>
		<td>Customer Last Name:</td>
		<td>${cus.lname}</td>
	</tr>
	<tr>
		<td>Customer Address:</td>
		<td>${cus.address}</td>
	</tr>
	<tr>
		<td>Customer Phone:</td>
		<td>${cus.phone}</td>
	</tr>
	<tr>
		<td>Customer E-mail:</td>
		<td>${cus.email}</td>
	</tr>
	<tr>
		<td>Payment Method:</td>
		<td>${cus.paymentMethod}</td>
	</tr>
	<tr>
		<td>Number of Clothes:</td>
		<td>${cus.clothes}</td>
	</tr>
	
	</c:forEach>
	</table>
	
	</br></br>
	
	<!-- pass existing data through url to UpdateCustomer.jsp -->
	<c:url value="UpdateCustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="fname" value="${fname}"/>
		<c:param name="lname" value="${lname}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>                                                         
		<c:param name="payment" value="${payment}"/>
		<c:param name="clothes" value="${clothes}"/>
	</c:url>
	
	<!-- go to UpdateCustomer.jsp page with existing values -->
	<a href="${cusupdate}">
	<input type="button" name="update" value="Update Booking">
	</a>
	
	
	
	<!-- pass existing data through url to deletecustomer.jsp -->
	<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="fname" value="${fname}"/>
		<c:param name="lname" value="${lname}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>                                                         
		<c:param name="payment" value="${payment}"/>
		<c:param name="clothes" value="${clothes}"/>
	</c:url>
	
	<!-- go to deletecustomer.jsp page with existing values -->
	<a href="${cusdelete}">
	<input type="button" name="delete" value="Delete Booking">
	</a>
	
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
                    <a class="text-white" href="#"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
                <h4 class="text-white mb-4"  font-family: "'Oleo Script', cursive">Customer Login</h4>
                
                        <button class="btn btn-lg btn-secondary btn-block border-0" type="submit">Login Now</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
   

</body>
</html>