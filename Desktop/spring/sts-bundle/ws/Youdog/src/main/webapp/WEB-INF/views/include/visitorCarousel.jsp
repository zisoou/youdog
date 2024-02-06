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
							<h1 class="text-primary-- text-uppercase mb-3">WELCOME</h1>
							<h1 class=" text-capitalize text-dark mb-3">
							로그인 후 다양한 기능을 즐겨보세요!
							</h1>
							<div class="d-flex align-items-center justify-content-center mt-5">
								<a
									style="width: 13rem;"
									class="btn rounded-pill py-3 px-5 me-4 btn-light btn text-primary--" 
									href="<c:url value='/user/member/createAccountForm'/>">회원가입</a> 
								<a
									style="width: 13rem;"
									class="btn btn-primary-- btn-primary-outline-0 rounded-pill py-3 px-5"
									href="<c:url value='/user/member/loginForm'/>">로그인</a>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>
	</div>
	<!-- Carousel End -->
	
	<link href="/youdog/resources/assets/css/style2.css" rel="stylesheet">