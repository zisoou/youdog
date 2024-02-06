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
							<h1 class="text-pink-- text-uppercase mb-3">WELCOME</h1>
							<h1 class=" text-capitalize text-dark mb-3">
							최고 관리자 전용 페이지입니다.
							</h1>

							<div class="row">
								<div class="col-6 my-3">
									<a
										style="width: 15rem;"
										class="btn btn-pink-- btn-primary-outline-0 rounded-pill py-3 px-5" 
										href="<c:url value='/admin/member/listupAdmin'/>">관리자 권한 관리</a> 
								</div>
								<div class="col-6 my-3">
									<a
										style="width: 15rem;"
										class="btn btn-pink-- btn-primary-outline-0 rounded-pill py-3 px-5"
										href="<c:url value='/admin/place/listupHopePlace'/>">장소 등록 신청 관리</a>
								</div>
							</div>
							<div class="row">
								<div class="col-6 my-4">
									<a
										style="width: 15rem;"
										class="btn btn-light-- rounded-pill py-3 px-5 "
										href="<c:url value='/admin/place/registerPlaceForm'/>">장소 직접 등록</a>
								</div>
								<div class="col-6 my-4">
									<a
										style="width: 15rem;"
										class="btn btn-light-- rounded-pill py-3 px-5 " 
										href="<c:url value='/admin/event/eventWriteForm'/>">이벤트 직접 등록</a> 
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>
	</div>
	<!-- Carousel End -->
	
	<link href="/youdog/resources/assets/css/style2.css" rel="stylesheet">