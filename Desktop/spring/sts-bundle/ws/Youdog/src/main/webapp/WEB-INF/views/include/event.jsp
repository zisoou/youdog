<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="false"%>

    
<!DOCTYPE html>
<html lang="kor">

<head>
<meta charset="utf-8">
<title>home</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=PT+Serif:wght@400;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="/youdog/resources/assets/lib/animate/animate.min.css"
	rel="stylesheet">
<link href="/youdog/resources/assets/lib/lightbox/css/lightbox.min.css"
	rel="stylesheet">
<link
	href="/youdog/resources/assets/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">


<!-- Customized Bootstrap Stylesheet -->
<link href="/youdog/resources/assets/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Template Stylesheet /youdog  -->
<link href="/youdog/resources/assets/css/style.css" rel="stylesheet">
</head>

<body>

	<!-- Navbar start -->
	<jsp:include page="nav.jsp" />
	<!-- Navbar End -->

	<!-- Modal Search Start -->
	<jsp:include page="modalsearch.jsp" />
	<!-- Modal Search End -->

	
	<!-- Header Start -->
	<div class="container-fluid bg-breadcrumb py-5">
		<div class="container text-center py-5">
			<h3 class="text-white display-3 mb-4">
				이벤트
				</h1>
				<ol class="breadcrumb justify-content-center mb-0">
					<li class="breadcrumb-item"><a class="text-darkpink--"
						href="<c:url value='/'/>">Home</a></li>
					<li class="breadcrumb-item"><a class="text-pink--" href="#">Pages</a></li>
					<li class="breadcrumb-item active text-white">Event</li>
				</ol>
		</div>
	</div>
	<!-- Header End -->





    
<!-- ////////////////////////////////////////////// -->
	<!-- EventSlide start -->
	<c:if test="${fn:length(eventList1row) > 0}">
		<!-- Pricing Start -->
		<div class="container-fluid pricing pt-5">
			<div class="logo-lg-- m-auto">
				<img src="/youdog/resources/assets/img/logo2.png" class="img-fluid my-2" alt=""> 
			</div>
			<div class="container py-5">
				<div class="owl-carousel pricing-carousel">
					<c:forEach items="${eventList1row}" var="item">
						<div class="pricing-item">
							<div class="rounded pricing-content ">
								<div class="bg-light rounded-top border-3 border-bottom border-primary-- p-2">
									<h5 class="text-primary-- text-uppercase m-0 text-center ">Hot Event</h5>
								</div>
								<div class="p-4 bg-white-- rounded-bottom">
									<div class="">
										<img src="<c:url value="/youdogUploadImg/${item.event_thumbnail}"/>"
											class="img-fluid rounded" alt="">
									</div>
									<div class="pt-3 d-flex align-items-center justify-content-between ">
										<div class="text-darkgray--">
											<p>${item.event_title}</p>
										</div>
										<div>
											<a class="btn btn-primary-- btn-primary-outline-0 rounded-pill px-4"
												href="${item.event_link}" target="_blank">
												more
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<!-- Pricing End -->
	</c:if>


 	<c:if test="${fn:length(eventList2row) > 0}">
		<!-- Pricing Start -->
		<div class="container-fluid pricing "
			style="background: var(- -bs-primary--);">
			<div class="container py-5">
				<div class="owl-carousel pricing-carousel">
					<c:forEach items="${eventList2row}" var="item">
						<div class="pricing-item">
							<div class="rounded pricing-content ">
								<div class="bg-light rounded-top border-3 border-bottom border-primary-- p-2">
									<h5 class="text-primary-- text-uppercase m-0 text-center ">former Event</h5>
								</div>
								<div class="p-4 bg-white-- rounded-bottom">
									<div class="">
										<img src="<c:url value="/youdogUploadImg/${item.event_thumbnail}"/>"
											class="img-fluid rounded" alt="">
									</div>
									<div class="pt-3 d-flex align-items-center justify-content-between ">
										<div class="text-darkgray--">
											<p>${item.event_title}</p>
										</div>
										<div>
											<a class="btn btn-primary-- btn-primary-outline-0 rounded-pill px-4"
												href="${item.event_link}" target="_blank">
												more
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<!-- Pricing End -->
	</c:if>

	<c:if test="${fn:length(eventList3row) > 0}">
		<!-- Pricing Start -->
		<div class="container-fluid pricing "
			style="background: var(- -bs-primary--);">
			<div class="container py-5">
				<div class="owl-carousel pricing-carousel">
					<c:forEach items="${eventList3row}" var="item">
						<div class="pricing-item">
							<div class="rounded pricing-content ">
								<div class="bg-light rounded-top border-3 border-bottom border-primary-- p-2">
									<h5 class="text-primary-- text-uppercase m-0 text-center ">former Event</h5>
								</div>
								<div class="p-4 bg-white-- rounded-bottom">
									<div class="">
										<img src="<c:url value="/youdogUploadImg/${item.event_thumbnail}"/>"
											class="img-fluid rounded" alt="">
									</div>
									<div class="pt-3 d-flex align-items-center justify-content-between ">
										<div class="text-darkgray--">
											<p>${item.event_title}</p>
										</div>
										<div>
											<a class="btn btn-primary-- btn-primary-outline-0 rounded-pill px-4"
												href="${item.event_link}" target="_blank">
												more
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</c:if>
	<!-- Pricing End -->




	<!-- Topsetting start -->
	<jsp:include page="topsetting.jsp" />
	<!-- topsetting End -->

	<!-- Footer Start -->
	<div class="container-fluid footer py-5">
		<div class="container py-5">
			<div class="row g-5">
				<div class="col-md-6 col-lg-6 col-xl-3">
					<div class="footer-item">
						<h4 class="mb-4 text-white">Newsletter</h4>
						<p class="text-white">Dolor amet sit justo amet elitr clita
							ipsum elitr est.Lorem ipsum dolor sit amet, consectetur
							adipiscing elit. Nullam in tempor dui, non consectetur enim.</p>
						<div class="position-relative mx-auto rounded-pill">
							<input
								class="form-control rounded-pill border-0 w-100 py-3 ps-4 pe-5"
								type="text" placeholder="Enter your email">
							<button type="button"
								class="btn btn-primary-- btn-primary-outline-0 rounded-pill position-absolute top-0 end-0 py-2 mt-2 me-2">SignUp</button>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-6 col-xl-3">
					<div class="footer-item d-flex flex-column">
						<h4 class="mb-4 text-white">Our Services</h4>
						<a href=""><i class="fas fa-angle-right me-2"></i> Facials</a> <a
							href=""><i class="fas fa-angle-right me-2"></i> Waxing</a> <a
							href=""><i class="fas fa-angle-right me-2"></i> Message</a> <a
							href=""><i class="fas fa-angle-right me-2"></i> Minarel baths</a>
						<a href=""><i class="fas fa-angle-right me-2"></i> Body
							treatments</a> <a href=""><i class="fas fa-angle-right me-2"></i>
							Aroma Therapy</a> <a href=""><i class="fas fa-angle-right me-2"></i>
							Stone Spa</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-6 col-xl-3">
					<div class="footer-item d-flex flex-column">
						<h4 class="mb-4 text-white">Schedule</h4>
						<p class="text-muted mb-0">
							Monday: <span class="text-white"> 09:00 am â 10:00 pm</span>
						</p>
						<p class="text-muted mb-0">
							Saturday: <span class="text-white"> 09:00 am â 08:00 pm</span>
						</p>
						<p class="text-muted mb-0">
							Sunday: <span class="text-white"> 09:00 am â 05:00 pm</span>
						</p>
						<h4 class="my-4 text-white">Address</h4>
						<p class="mb-0">
							<i class="fas fa-map-marker-alt text-primary-- me-2"></i> 123
							ranking street North tower New York, USA
						</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-6 col-xl-3">
					<div class="footer-item d-flex flex-column">
						<h4 class="mb-4 text-white">Follow Us</h4>
						<a href=""><i class="fas fa-angle-right me-2"></i> Faceboock</a> <a
							href=""><i class="fas fa-angle-right me-2"></i> Instagram</a> <a
							href=""><i class="fas fa-angle-right me-2"></i> Twitter</a>
						<h4 class="my-4 text-white">Contact Us</h4>
						<p class="mb-0">
							<i class="fas fa-envelope text-primary-- me-2"></i>
							info@example.com
						</p>
						<p class="mb-0">
							<i class="fas fa-phone text-primary-- me-2"></i> (+012) 3456 7890
							123
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer End -->



	<!-- Copyright Start -->
	<div class="container-fluid copyright py-4">
		<div class="container">
			<div class="row g-4 align-items-center">
				<div class="col-md-4 text-center text-md-start mb-md-0">
					<span class="text-light"><a href="#" class="text-primary--"><i
							class="fas fa-copyright text-light me-2 text-primary--"></i>Your Site Name</a>, All
						right reserved.</span>
				</div>
				<div class="col-md-4">
					<div class="d-flex justify-content-center">
						<a href=""
							class="btn btn-light btn-light-outline-0 btn-sm-square rounded-circle me-2 text-secondary--"><i
							class="fab fa-facebook-f"></i></a> <a href=""
							class="btn btn-light btn-light-outline-0 btn-sm-square rounded-circle me-2 text-secondary--"><i
							class="fab fa-twitter"></i></a> <a href=""
							class="btn btn-light btn-light-outline-0 btn-sm-square rounded-circle me-2 text-secondary--"><i
							class="fab fa-instagram"></i></a> <a href=""
							class="btn btn-light btn-light-outline-0 btn-sm-square rounded-circle me-0 text-secondary--"><i
							class="fab fa-linkedin-in"></i></a>
					</div>
				</div>
				<div class="col-md-4 text-center text-md-end text-white">
					<!--/*** This template is free as long as you keep the below authorâs credit link/attribution link/backlink. ***/-->
					<!--/*** If you'd like to use the template without the below authorâs credit link/attribution link/backlink, ***/-->
					<!--/*** you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". ***/-->
					Designed By <a class="border-bottom text-primary--" href="https://htmlcodex.com">HTML
						Codex</a> Distributed By <a class="border-bottom text-primary--"
						href="https://themewagon.com">ThemeWagon</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Copyright End -->


    <!-- Back to Top -->
	<a href="#"
		class="btn btn-primary-- btn-primary-outline-0 btn-md-square rounded-circle back-to-top"><i
		class="fa fa-arrow-up"></i></a>


	<!-- JavaScript Libraries -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="<c:url value = "/resources/assets/lib/wow/wow.min.js"/>"></script>
	<script
		src="<c:url value = "/resources/assets/lib/easing/easing.min.js"/>"></script>
	<script
		src="<c:url value = "/resources/assets/lib/waypoints/waypoints.min.js"/>"></script>
	<script
		src="<c:url value = "/resources/assets/lib/counterup/counterup.min.js"/>"></script>
	<script
		src="<c:url value = "/resources/assets/lib/lightbox/js/lightbox.min.js"/>"></script>
	<script
		src="<c:url value = "/resources/assets/lib/owlcarousel/owl.carousel.min.js"/>"></script>

	<!-- Template Javascript -->
	<script src="<c:url value = "/resources/assets/js/main.js"/>"></script>
</body>

</html>