<%@page import="com.office.youdog.admin.member.AdminMemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


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
<link href="/youdog/resources/assets/css/style.css" rel="stylesheet2">
</head>

<body>

	<!-- Navbar start -->
	<div class="container-fluid sticky-top px-0">
		<div class="container-fluid bg-pink-- py-2 d-none d-lg-block">
			<div class="container px-0">
				<div class="row align-items-center">
					<div class="col-lg-8">
						<div class="d-flex flex-wrap">
							<a href="#" class="me-4 text-light"><i
								class="fas fa-map-marker-alt text-secondary-- me-2"></i>Find A
								Location</a> <a href="#" class="me-4 text-light"><i
								class="fas fa-phone-alt text-secondary-- me-2"></i>+01234567890</a>
							<a href="#" class="text-light"><i
								class="fas fa-envelope text-secondary-- me-2"></i>youdog@gmail.com</a>
						</div>

					</div>
					<div class="col-lg-4">
						<div class="d-flex align-items-center justify-content-end">
						<a href="/youdog"
                        class="me-3 btn-square border rounded-circle nav-fill text-secondary--">U</a>
							<a href="#"
								class="me-3 btn-square border rounded-circle nav-fill text-secondary--"><i
								class="fab fa-facebook-f text-secondary--"></i></a> <a href="#"
								class="me-3 btn-square border rounded-circle nav-fill text-secondary--"><i
								class="fab fa-twitter"></i></a> <a href="#"
								class="me-3 btn-square border rounded-circle nav-fill text-secondary--"><i
								class="fab fa-instagram"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid bg-light">
			<div class="container px-0">
				<nav class="navbar navbar-light navbar-expand-xl">
					<a href="<c:url value='/admin' />" class="navbar-brand"> <img
						class="logo--" alt="YOUDOG"
						src="/youdog/resources/assets/img/logo.png">
					</a>

					<button class="navbar-toggler py-2 px-3" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
						<span class="fa fa-bars text-primary--"></span>
					</button>

					<div class="collapse navbar-collapse bg-light py-3"
						id="navbarCollapse">
						<div class="navbar-nav mx-auto border-top">
							<a href="<c:url value='/admin/about'/>" class="nav-item nav-link">About Us</a> 
							<a href="<c:url value='/admin/place' />" class="nav-item nav-link">Place</a>
							<a href="<c:url value='/admin/event' />" class="nav-item nav-link">Event</a>
							<a href="<c:url value='/admin/bulletin'/>" class="nav-item nav-link ">Board</a>
							<a href="<c:url value='/admin/contact'/>" class="nav-item nav-link">Contact	Us</a>
						</div>
						<div class="d-flex align-items-center flex-nowrap pt-xl-0">
						

							
									
		<%
		AdminMemberVo loginedAdminMemberVo = (AdminMemberVo) session.getAttribute("loginedAdminMemberVo");
		if (loginedAdminMemberVo != null) {
		%>
							<div class="btn btn-primary-- btn-primary-outline-0 rounded-pill  px-4 ms-4 nav-item dropdown">
								<a href="#" class="nav-link dropdown-toggle text-white"
									data-bs-toggle="dropdown">${loginedAdminMemberVo.admin_name}님</a>
								<div class="dropdown-menu m-0 btn-secondary-- rounded-0">
									<a href="<c:url value='/admin/member/modifyAccountForm'/>" class="text-center  dropdown-item">회원정보 수정</a>
									<a href="<c:url value='/user/place/listupWishList'/>" class="text-center dropdown-item">찜목록</a>
									<a href="<c:url value='/404'/>" class="text-center  dropdown-item"> </a>
									<a href="<c:url value='/admin/member/logoutConfirm'/>" class="text-center dropdown-item">로그아웃</a>
								</div>
							</div>
								
		<%
		} else {
		%>
								<div style="width: 7rem;" class="btn btn-primary-- btn-primary-outline-0 rounded-pill">
									<a href="<c:url value='/admin/member/loginForm'/>" class="text-white">로그인</a>
								</div>
								<div style="width: 7rem;" class="btn btn-primary-- btn-primary-outline-0 rounded-pill mx-3">								
									<a href="<c:url value='/admin/member/createAccountForm'/>" class="text-white"> 회원가입 </a>
								</div>
		
		
		<%
		}
		%>

		
		
						</div>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<!-- Navbar End -->

	<!-- Back to Top -->
	<a href="#"
		class="btn btn-primary-- btn-primary-outline-0 btn-md-square rounded-circle back-to-top"><i
		class="fa fa-arrow-up"></i></a>

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