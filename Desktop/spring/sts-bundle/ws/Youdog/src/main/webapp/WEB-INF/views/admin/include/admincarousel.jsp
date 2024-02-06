<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    <!-- Carousel Start -->
	<div class="container-fluid carousel-header px-0">
		<div id="carouselId" class="carousel slide" data-bs-ride="carousel">
			<ol class="carousel-indicators">
				<li data-bs-target="#carouselId" data-bs-slide-to="0" class="active"></li>
				<li data-bs-target="#carouselId" data-bs-slide-to="1"></li>
				<li data-bs-target="#carouselId" data-bs-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<img src="resources/assets/img/carousel-13.jpg" class="img-fluid"
						alt="Image">
					<div class="carousel-caption">
						<div class="p-3" style="max-width: 900px;">
							<h4 class="text-primary-- text-uppercase mb-3">The dogs we love</h4>
							<h1 class="display-1 text-capitalize text-dark mb-3">Welcome</h1>
							<p class="mx-md-5 fs-4 px-4 mb-5 text-dark">
								관리자는 장소 등록 요청을 할 수 있습니다. 
							</p>
							<div class="d-flex align-items-center justify-content-center">
								<a
									class="btn btn-light btn-light-outline-0 rounded-pill py-3 px-5 me-4"
									href="<c:url value='/admin/place/requestHopePlaceForm'/>">장소 등록 요청</a> 
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img src="/youdog/resources/assets/img/carousel-12.jpg"
						class="img-fluid" alt="Image">
					<div class="carousel-caption">
						<div class="p-3" style="max-width: 900px;">
							<h4 class="text-primary-- text-uppercase mb-3"
								style="letter-spacing: 3px;">Hello World</h4>
							<h1 class="display-1 text-capitalize text-dark mb-3">Find a location</h1>
							<p class="mx-md-5 fs-4 px-5 mb-5 text-dark">
								관리자는 장소 등록 요청을 할 수 있습니다.</p>
							<div class="d-flex align-items-center justify-content-center">
																<a
									class="btn btn-light btn-light-outline-0 rounded-pill py-3 px-5 me-4"
									href="<c:url value='/admin/place/requestHopePlaceForm'/>">장소 등록 요청</a> 
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img src="/youdog/resources/assets/img/carousel-11.jpg"
						class="img-fluid" alt="Image">
					<div class="carousel-caption">
						<div class="p-3" style="max-width: 900px;">
							<h4 class="text-primary-- text-uppercase mb-3"
								style="letter-spacing: 3px;">Hello World</h4>
							<h1 class="display-1 text-capitalize text-dark">join membership</h1>
							<p class="mx-md-5 fs-4 px-5 mb-5 text-dark">
								관리자는 장소 등록 요청을 할 수 있습니다.</p>
							<div class="d-flex align-items-center justify-content-center">
																<a
									class="btn btn-light btn-light-outline-0 rounded-pill py-3 px-5 me-4"
									href="<c:url value='/admin/place/requestHopePlaceForm'/>">장소 등록 요청</a> 
							</div>
						</div>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselId" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselId" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>
	<!-- Carousel End -->