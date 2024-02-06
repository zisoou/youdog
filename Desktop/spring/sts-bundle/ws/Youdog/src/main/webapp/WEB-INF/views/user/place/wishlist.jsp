<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!-- Topsetting start -->
<jsp:include page="../../include/topsetting.jsp" />
<!-- topsetting End -->

<!-- Navbar start -->
<jsp:include page="../../include/nav.jsp" />
<!-- Navbar End -->

<!-- Modal Search Start -->
<jsp:include page="../../include/modalsearch.jsp" />
<!-- Modal Search End -->

<jsp:include page="../include/delete_wish_place_js.jsp" />

<!-- Header Start -->
<div class="container-fluid bg-breadcrumb py-5">
	<div class="container text-center py-5">
		<h3 class="text-white display-3 mb-4">My Wish List</h3>
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

			<c:forEach var="item" items="${wishPlaceVos}">
				<c:if test="${fn:length(wishPlaceVos) > 0}">
					<div class="col-lg-2"></div>
					<div class="col-lg-8">
						<div
							class="services-item bg-light border-4 border-start border-primary-- rounded p-4">
							<div class="row align-items-center">
								<div class="col-4">
									<div
										class="services-img d-flex align-items-center justify-content-center rounded"
										id="wishListImgSize">
										<img
											src="<c:url value="/youdogUploadImg/${item.place_thumbnail}"/>"
											class="img-fluid rounded" alt="">
									</div>
								</div>
								<div class="col-5">
									<div class="services-content text-start">
										<h3>${item.place_name}</h3>
										<p>${item.place_address}</p>
									</div>
									</div>
									<div class= "col-1">
										<div>
											<a href="<c:url value='${item.place_site}' />" target="_blank" id="wishListBtnSize"
												class=" btn btn-lightprimary-- btn-primary-outline-0 rounded-pill py-2 px-5 my-2">Detail</a>
										</div>
										<div class= "my-2"></div>
										<div>
											<a href="#" id="wishListBtnSize" onclick="deleteWishPlaceAlert('${item.wplace_no}','${item.place_name}')"
												class="btn btn-pink-- btn-primary-outline-0 rounded-pill py-2 px-5 my-2">Delete</a>
										</div>

								</div>

							</div>
						</div>
					</div>
					<div class="col-lg-2"></div>
				</c:if>
			</c:forEach>

			<c:if test="${fn:length(wishPlaceVos) == 0}">
				<div class="col-lg-12 text-center">
					<h3>찜 리스트가 존재하지 않습니다.</h3>
				</div>
			</c:if>




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
<jsp:include page="../../include/footer.jsp" />
<!-- footer End -->

<!-- bottomsetting start -->
<jsp:include page="../../include/bottomsetting.jsp" />
<!-- bottomsetting End -->