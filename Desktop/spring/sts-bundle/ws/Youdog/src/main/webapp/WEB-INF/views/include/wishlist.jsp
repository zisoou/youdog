<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<!-- Topsetting start -->
	<jsp:include page="topsetting.jsp" />
	<!-- topsetting End -->

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
				My Wish List
				</h1>
				<ol class="breadcrumb justify-content-center mb-0">
					<li class="breadcrumb-item"><a class="text-darkpink--"
						href="<c:url value='/'/>">Home</a></li>
					<li class="breadcrumb-item"><a class="text-pink--" href="#">Pages</a></li>
					<li class="breadcrumb-item active text-white">wish list</li>
				</ol>
		</div>
	</div>
	<!-- Header End -->


	<!-- Services Start -->
	<div class="container-fluid services py-5">
		<div class="container py-3">
			<div class="row g-4">

				<div class="col-lg-2"></div>
				<div class="col-lg-6">
					<div
						class="services-item bg-light border-4 border-start border-primary-- rounded p-4">
						<div class="row align-items-center">
							<div class="col-4">
								<div
									class="services-img d-flex align-items-center justify-content-center rounded" 
									id="wishListImgSize">
									<img src="/youdog/resources/assets/img/place-1.jpg"
										class="img-fluid rounded" alt="">
								</div>
							</div>
							<div class="col-8">
								<div class="services-content text-start">
									<h3>Ansan</h3>
									<p>Lorem Ipsum is simply dummy text of the printing and
										typesetting industry. Lorem Ipsum has been the industry's
										standard dummy</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-2 d-flex flex-column align-items-center justify-content-center bg-light border-4 rounded py-3 ">
					<div >
						<a 
						href="<c:url value='/place' />"
						id="wishListBtnSize" class=" btn btn-lightprimary-- btn-primary-outline-0 rounded-pill py-2 px-5 my-2">Review</a> 
					</div>
					<div>
						<a 
						href="<c:url value='/place'/>"
						id="wishListBtnSize" class="btn btn-lightprimary-- btn-primary-outline-0 rounded-pill py-2 px-5 my-2">Detail</a> 
					</div>
					<div>
						<a 
						href="#"
						id="wishListBtnSize" class="btn btn-pink-- btn-primary-outline-0 rounded-pill py-2 px-5 my-2">Delete</a>
					</div>
				</div>
				<div class="col-lg-2"></div>

			
			
			
			
			
			
				<div class="col-lg-2"></div>
				<div class="col-lg-6">
					<div
						class="services-item bg-light border-4 border-start border-primary-- rounded p-4">
						<div class="row align-items-center">
							<div class="col-4">
								<div
									class="services-img d-flex align-items-center justify-content-center rounded" 
									id="wishListImgSize">
									<img src="/youdog/resources/assets/img/place-8.jpg"
										class="img-fluid rounded" alt="">
								</div>
							</div>
							<div class="col-8">
								<div class="services-content text-start">
									<h3>Anyang</h3>
									<p>the printing and typesetting industry. Lorem Ipsum has been the industry's
										standard dummy</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-2 d-flex flex-column align-items-center justify-content-center bg-light border-4 rounded py-3 ">
					<div >
						<a 
						href="<c:url value='/place' />"
						id="wishListBtnSize" class=" btn btn-lightprimary-- btn-primary-outline-0 rounded-pill py-2 px-5 my-2">Review</a> 
					</div>
					<div>
						<a 
						href="<c:url value='/place'/>"
						id="wishListBtnSize" class="btn btn-lightprimary-- btn-primary-outline-0 rounded-pill py-2 px-5 my-2">Detail</a> 
					</div>
					<div>
						<a 
						href="#"
						id="wishListBtnSize" class="btn btn-pink-- btn-primary-outline-0 rounded-pill py-2 px-5 my-2">Delete</a>
					</div>
				</div>
				<div class="col-lg-2"></div>

			
			
			
			
			
			
				<div class="col-lg-2"></div>
				<div class="col-lg-6">
					<div
						class="services-item bg-light border-4 border-start border-primary-- rounded p-4">
						<div class="row align-items-center">
							<div class="col-4">
								<div
									class="services-img d-flex align-items-center justify-content-center rounded" 
									id="wishListImgSize">
									<img src="/youdog/resources/assets/img/place-3.jpg"
										class="img-fluid rounded" alt="">
								</div>
							</div>
							<div class="col-8">
								<div class="services-content text-start">
									<h3>Suwon</h3>
									<p>Lorem Ipsum is simply dummy text of the printing and
										typesetting industry. hindustry's
										standard dummy</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-2 d-flex flex-column align-items-center justify-content-center bg-light border-4 rounded py-3 ">
					<div >
						<a 
						href="<c:url value='/place' />"
						id="wishListBtnSize" class=" btn btn-lightprimary-- btn-primary-outline-0 rounded-pill py-2 px-5 my-2">Review</a> 
					</div>
					<div>
						<a 
						href="<c:url value='/place'/>"
						id="wishListBtnSize" class="btn btn-lightprimary-- btn-primary-outline-0 rounded-pill py-2 px-5 my-2">Detail</a> 
					</div>
					<div>
						<a 
						href="#"
						id="wishListBtnSize" class="btn btn-pink-- btn-primary-outline-0 rounded-pill py-2 px-5 my-2">Delete</a>
					</div>
				</div>
				<div class="col-lg-2"></div>

		
			
				<div class="col-12">
					<div class="services-btn text-center">
						<a href="#"
							class="btn btn-primary-- btn-primary-outline-0 rounded-pill py-3 px-5">Service
							More</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Services End -->




	<!-- footer start -->
	<jsp:include page="footer.jsp" />
	<!-- footer End -->

	<!-- bottomsetting start -->
	<jsp:include page="bottomsetting.jsp" />
	<!-- bottomsetting End -->
