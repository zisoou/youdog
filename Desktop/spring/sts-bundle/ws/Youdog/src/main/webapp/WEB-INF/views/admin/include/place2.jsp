<%@page import="com.office.youdog.admin.member.AdminMemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="https://cdn.jsdelivr.net/npm/bs5-lightbox@1.8.3/dist/index.bundle.min.js"></script>

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
                <h3 class="text-white display-3 mb-4">Our place</h1>
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item"><a class="text-darkpink--" href="<c:url value='/'/>">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-pink--" href="#">Pages</a></li>
                    <li class="breadcrumb-item active text-white">PLACE</li>
                </ol>    
            </div>
        </div>
        <!-- Header End -->
        
        <!-- Gallery Start -->
        <div class="container-fluid gallery py-5">
            <div class="container py-5">
                <div class="text-center mx-auto mb-5" style="max-width: 800px;">
                    <p class="fs-4 text-uppercase text-pink--">Our Place</p>
                    <h1 class="display-4 mb-4">산책 장소 찾기</h1>
                    <div class="row">
                    <div class="col-lg-4"></div>
                    
                    	<!-- Session에서 로그인된 member의 정보를 객체에 담아서 가져옴 -->
						<!-- Session에서 로그인된 member의 정보를 객체에 담아서 가져옴 -->
					<%
					AdminMemberVo loginedAdminMemberVo = (AdminMemberVo) session.getAttribute("loginedAdminMemberVo");
					%>
						
					<!-- 방문자가 보는 메인 화면 Carousel 부분 -->
					<%
					if(loginedAdminMemberVo == null){
					%>

					<div class="col-lg-4">
                          <a href="<c:url value='/admin'/>" >
                              	<button 
                              	type="button" class="btn btn-pink-- border-darkpink-- rounded-pill w-100 py-3 px-5 " >
                              		희망 장소 요청 <br>
                              	</button>
                          </a>
                     </div>
		
					<%
					}else if (loginedAdminMemberVo.getAdmin_approval() == 2){
					%>
                    
                    
                    
                   		 <div class="col-lg-4">
                          <a href="<c:url value='/admin/place/registerPlaceForm'/>" >
                              	<button 
                              	type="button" class="btn btn-pink-- border-darkpink-- rounded-pill w-100 py-3 px-5 " >
                              		장소 등록 <br>
                              	</button>
                          </a>
                     	</div>
				  	<%
					}else{
					%>
					
						<div class="col-lg-4">
                          <a href="<c:url value='/admin/place/requestPlaceForm'/>" >
                              	<button 
                              	type="button" class="btn btn-pink-- border-darkpink-- rounded-pill w-100 py-3 px-5 " >
                              		희망 장소 요청 <br>
                              	</button>
                          </a>
                     	</div>
					
						<%
						}
						%>
					
  
                     
                     
                    <div class="col-lg-4"></div>
                     </div>
                </div>
                <div class="tab-class text-center">
                    <ul class="nav nav-pills d-inline-flex justify-content-center mb-5">
                        <li class="nav-item nav-item--">
                            <a class="d-flex mx-3 py-2 border border-darkpink-- bg-light rounded-pill active" data-bs-toggle="pill" href="#tab-1">
                                <span class="text-dark" style="width: 150px;">모두 보기</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="d-flex py-2 mx-3 border border-darkpink-- bg-light rounded-pill" data-bs-toggle="pill" href="#tab-2">
                                <span class="text-dark" style="width: 150px;">안산</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="d-flex mx-3 py-2 border border-darkpink-- bg-light rounded-pill " data-bs-toggle="pill" href="#tab-3">
                                <span class="text-dark" style="width: 150px;">안양</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="d-flex mx-3 py-2 border border-darkpink-- bg-light rounded-pill" data-bs-toggle="pill" href="#tab-4">
                                <span class="text-dark" style="width: 150px;">시흥</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="d-flex mx-3 py-2 border border-darkpink-- bg-light rounded-pill" data-bs-toggle="pill" href="#tab-5">
                                <span class="text-dark" style="width: 150px;">수원</span>
                            </a>
                        </li>
                    </ul>
                    
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane fade show p-0 active">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        <div class="col-lg-3">
                                            <div class="gallery-img">
                                                <img class="img-fluid rounded w-100" src="/youdog/resources/assets/img/place-1.jpg" alt="">
                                                <div class="gallery-overlay p-4">
                                                    <h4 class="text-darkgary--">Ansan</h4>
                                                </div>
                                                <div class="search-icon">
                                                    <a href="/youdog/resources/assets/img/place-1.jpg" data-toggle="lightbox" data-lightbox="Gallery-1" class="my-auto">
													<a href="https://getbootstrap.com" data-title="Bootstrap" data-toggle="lightbox">Bootstrap Docs</a>	
                                                    <i class="fas fa-search-plus btn-pink-- btn-primary-outline-0 rounded-circle p-3">
                                                    </i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-2" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        <div class="col-lg-3">
                                            <div class="gallery-img">
                                                <img class="img-fluid rounded w-100" src="/youdog/resources/assets/img/place-9.jpg" alt="">
                                                <div class="gallery-overlay p-4">
                                                    <h4 class="text-darkgary--">Ansan</h4>
                                                </div>
                                                <div class="search-icon">
                                                    <a href="/youdog/resources/assets/img/place-9.jpg" data-lightbox="Gallery-9" class="my-auto"><i class="fas fa-search-plus btn-pink-- btn-primary-outline-0 rounded-circle p-3"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="gallery-img">
                                                <img class="img-fluid rounded w-100" src="/youdog/resources/assets/img/place-10.jpg" alt="">
                                                <div class="gallery-overlay p-4">
                                                    <h4 class="text-darkgary--">Ansan</h4>
                                                </div>
                                                <div class="search-icon">
                                                    <a href="/youdog/resources/assets/img/place-10.jpg" data-lightbox="Gallery-10" class="my-auto"><i class="fas fa-search-plus btn-pink-- btn-primary-outline-0 rounded-circle p-3"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="gallery-img">
                                                <img class="img-fluid rounded w-100" src="/youdog/resources/assets/img/place-5.jpg" alt="">
                                                <div class="gallery-overlay p-4">
                                                    <h4 class="text-darkgary--">Ansan</h4>
                                                </div>
                                                <div class="search-icon">
                                                    <a href="/youdog/resources/assets/img/place-5.jpg" data-lightbox="Gallery-11" class="my-auto"><i class="fas fa-search-plus btn-pink-- btn-primary-outline-0 rounded-circle p-3"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="gallery-img">
                                                <img class="img-fluid rounded w-100" src="/youdog/resources/assets/img/place-1.jpg" alt="">
                                                <div class="gallery-overlay p-4">
                                                    <h4 class="text-darkgary--">Ansan</h4>
                                                </div>
                                                <div class="search-icon">
                                                    <a href="/youdog/resources/assets/img/place-1.jpg" data-lightbox="Gallery-12" class="my-auto"><i class="fas fa-search-plus btn-pink-- btn-primary-outline-0 rounded-circle p-3"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-3" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        <div class="col-lg-3">
                                            <div class="gallery-img">
                                                <img class="img-fluid rounded w-100" src="/youdog/resources/assets/img/place-11.jpg" alt="">
                                                <div class="gallery-overlay p-4">
                                                    <h4 class="text-darkgary--">Anyang</h4>
                                                </div>
                                                <div class="search-icon">
                                                    <a href="/youdog/resources/assets/img/place-11.jpg" data-lightbox="Gallery-13" class="my-auto"><i class="fas fa-search-plus btn-pink-- btn-primary-outline-0 rounded-circle p-3"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="gallery-img">
                                                <img class="img-fluid rounded w-100" src="/youdog/resources/assets/img/place-12.jpg" alt="">
                                                <div class="gallery-overlay p-4">
                                                    <h4 class="text-darkgary--">Anyang</h4>
                                                </div>
                                                <div class="search-icon">
                                                    <a href="/youdog/resources/assets/img/place-12.jpg" data-lightbox="Gallery-14" class="my-auto"><i class="fas fa-search-plus btn-pink-- btn-primary-outline-0 rounded-circle p-3"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-4" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        <div class="col-lg-3">
                                            <div class="gallery-img">
                                                <img class="img-fluid rounded w-100" src="/youdog/resources/assets/img/place-13.jpg" alt="">
                                                <div class="gallery-overlay p-4">
                                                    <h4 class="text-darkgary--">Siheung</h4>
                                                </div>
                                                <div class="search-icon">
                                                    <a href="/youdog/resources/assets/img/place-13.jpg" data-lightbox="Gallery-17" class="my-auto"><i class="fas fa-search-plus btn-pink-- btn-primary-outline-0 rounded-circle p-3"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-5" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        <div class="col-lg-3">
                                            <div class="gallery-img">
                                                <img class="img-fluid rounded w-100" src="/youdog/resources/assets/img/place-4.jpg" alt="">
                                                <div class="gallery-overlay p-4">
                                                    <h4 class="text-darkgary--">Suwon</h4>
                                                </div>
                                                <div class="search-icon">
                                                    <a href="/youdog/resources/assets/img/place-4.jpg" data-lightbox="Gallery-21" class="my-auto"><i class="fas fa-search-plus btn-pink-- btn-primary-outline-0 rounded-circle p-3"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- gallery End -->



 <!-- footer start -->
	<jsp:include page="footer.jsp" />
	<!-- footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-pink-- btn-primary-outline-0 btn-md-square rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>   

        

	<!-- footer start -->
	<jsp:include page="footer.jsp" />
	<!-- footer End -->

	<!-- bottomsetting start -->
	<jsp:include page="bottomsetting.jsp" />
	<!-- bottomsetting End -->
