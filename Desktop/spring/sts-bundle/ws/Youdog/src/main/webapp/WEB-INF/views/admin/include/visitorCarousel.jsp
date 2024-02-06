<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    <!-- Carousel Start -->
	<div class="container-fluid carousel-header px-0">
		<div id="carouselId" class="carousel slide" data-bs-ride="carousel">
			
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<img src="resources/assets/img/carousel-13.jpg" class="img-fluid"
						alt="Image">
					<div class="carousel-caption">
						<div class="p-3" style="max-width: 900px;">
							<h1 class="text-pink-- text-uppercase mb-3">PLEASE LOG IN</h1>

							<h1 class=" text-capitalize text-dark mb-3">
							관리자 권한이 필요합니다.
							</h1>
							<p class="mx-md-5 fs-4 px-4 mb-5 text-darkpink--">
								Only administrators can access it.
							</p>
							<div class="d-flex align-items-center justify-content-center">
								<a
									style="width: 13rem;"
									class="btn  rounded-pill py-3 px-5 me-4 btn-light-- btn" 
									href="<c:url value='/admin/member/createAccountForm'/>">회원가입</a> 
								<a
									style="width: 13rem;"
									class="btn btn-pink-- btn-primary-outline-0 rounded-pill py-3 px-5"
									href="<c:url value='/admin/member/loginForm'/>">로그인</a>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>
	</div>
	<!-- Carousel End -->
	
	<link href="/youdog/resources/assets/css/style2.css" rel="stylesheet">