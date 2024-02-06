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
                                <span class="text-dark" style="width: 150px;">인천</span>
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
									<!-- ********** -->							
									
									<c:forEach var="item" items="${placeVos}">
								    <div class="col-lg-3">
								        <div class="card h-75">
								            <div class="gallery-img h-75">
								                <img class="card-img-top"
								                     src="<c:url value='/youdogUploadImg/${item.place_thumbnail}'/>">
								                <div class="gallery-overlay p-4">
								                    <div class="search-icon">
								                        <a href="<c:url value='/youdogUploadImg/${item.place_thumbnail}'/>"
								                           data-lightbox="Gallery-9" class="my-auto">
								                            <i class="fas fa-search-plus btn-pink-- btn-primary-outline-0 rounded-circle p-3"></i>
								                        </a>
								                    </div>
								                </div>
								            </div>
								            <div class="card-body mt-1">
								                <p class="card-title h3">${item.place_name}</p>
								                <div class="card-title mt-3">
								                    <a href="${item.place_site}" class="">
								                        <p class="mx-2 text-pink--">
								                            <i class="fas fa-home"></i> 홈페이지 방문하기
								                        </p>
								                    </a>
								                </div>
								                <p class="card-text">${item.place_cate}</p>
								                <p class="card-text">${item.place_inout}</p>
								                <p class="card-text">${item.place_call_number}</p>
								                <div class="card-text">
								                    <div class="card-text">
												    <!-- 여기에 하트 표시 로직 추가 -->
																 <button type="submit" class="btn btn-pink--">
													                <!-- 버튼1. 꽉찬 하트 -->
													                <i class="fas fa-heart"></i> ${item.place_likes}
													            </button>


								                	</div>
								                </div>
								            </div>
								            <div class="card-footer">
								                <small class="text-muted"><i class="fas fa-map-marker-alt"></i>
								                    장소 주소 : ${item.place_address}</small>
								            </div>
								        </div>
								    </div>
								</c:forEach>

							</div>
						</div>
					</div>
				</div>
				<div id="tab-2" class="tab-pane fade show p-0">
                    <div class="row g-4">
                        <div class="col-lg-12">
                            <div class="row g-4">
									<!-- ********** -->							
										
									 <c:forEach var="item" items="${placeVos}">
										<c:if test="${item.place_cate eq '안산'}">
											<div class="col-lg-3">	
												<div class="card h-75">
											    	<div class="gallery-img h-75">
											      		<img class="card-img-top" src="<c:url value="/youdogUploadImg/${item.place_thumbnail}"/>">
											     		<div class="gallery-overlay p-4">
			                                                <div class="search-icon">
			                                                    <a href="<c:url value="/youdogUploadImg/${item.place_thumbnail}"/>" data-lightbox="Gallery-9" class="my-auto">
			                                                   		<i class="fas fa-search-plus btn-pink-- btn-primary-outline-0 rounded-circle p-3"></i>
			                                                    </a>
			                                                </div>
			                                                
			                                            </div>
											     	</div>
											      <div class="card-body mt-1">
												      
													        <p class="card-title h3">
													        ${item.place_name}
		
													        </p>
													        <div class="card-title mt-3">
														        <a href="${item.place_site}" class="">
														        	<p class="mx-2 text-pink--"><i class="fas fa-home"></i> 홈페이지 방문하기</p>
														        </a>
													        </div>
													        <p class="card-text">${item.place_cate}</p>
													        <p class="card-text">${item.place_inout}</p>
													        <p class="card-text">${item.place_call_number}</p>
													        <div class="card-text">
																 <button type="submit" class="btn btn-pink--">
													                <!-- 버튼1. 꽉찬 하트 -->
													                <i class="fas fa-heart"></i> ${item.place_likes}
													            </button>

													        </div>
	 													
											      </div>
											      <div class="card-footer">
											        <small class="text-muted"><i class="fas fa-map-marker-alt"></i> 장소 주소 : ${item.place_address}</small>
											      </div>
											    </div>
											  </div>
											</c:if>
										  </c:forEach>
									<!-- ********** -->	
							</div>
						</div>
					</div>
				</div>
				<div id="tab-3" class="tab-pane fade show p-0">
                    <div class="row g-4">
                        <div class="col-lg-12">
                            <div class="row g-4">
									<!-- ********** -->							
										
									 <c:forEach var="item" items="${placeVos}">
										<c:if test="${item.place_cate eq '안양'}">
											<div class="col-lg-3">	
												<div class="card h-75">
											    	<div class="gallery-img h-75">
											      		<img class="card-img-top" src="<c:url value="/youdogUploadImg/${item.place_thumbnail}"/>">
											     		<div class="gallery-overlay p-4">
			                                                <div class="search-icon">
			                                                    <a href="<c:url value="/youdogUploadImg/${item.place_thumbnail}"/>" data-lightbox="Gallery-9" class="my-auto">
			                                                   		<i class="fas fa-search-plus btn-pink-- btn-primary-outline-0 rounded-circle p-3"></i>
			                                                    </a>
			                                                </div>
			                                                
			                                            </div>
											     	</div>
											      <div class="card-body mt-1">
												      
													        <p class="card-title h3">
													        ${item.place_name}
		
													        </p>
													        <div class="card-title mt-3">
														        <a href="${item.place_site}" class="">
														        	<p class="mx-2 text-pink--"><i class="fas fa-home"></i> 홈페이지 방문하기</p>
														        </a>
													        </div>
													        <p class="card-text">${item.place_cate}</p>
													        <p class="card-text">${item.place_inout}</p>
													        <p class="card-text">${item.place_call_number}</p>
													        <div class="card-text">
														    																 <button type="submit" class="btn btn-pink--">
													                <!-- 버튼1. 꽉찬 하트 -->
													                <i class="fas fa-heart"></i> ${item.place_likes}
													            </button>
													        </div>
	 													
											      </div>
											      <div class="card-footer">
											        <small class="text-muted"><i class="fas fa-map-marker-alt"></i> 장소 주소 : ${item.place_address}</small>
											      </div>
											    </div>
											  </div>
											</c:if>
										  </c:forEach>
									<!-- ********** -->	
							</div>
						</div>
					</div>
				</div>
				<div id="tab-4" class="tab-pane fade show p-0">
                    <div class="row g-4">
                        <div class="col-lg-12">
                            <div class="row g-4">
 									<!-- ********** -->							
																	 <c:forEach var="item" items="${placeVos}">
										<c:if test="${item.place_cate eq '인천'}">
											<div class="col-lg-3">	
												<div class="card h-75">
											    	<div class="gallery-img h-75">
											      		<img class="card-img-top" src="<c:url value="/youdogUploadImg/${item.place_thumbnail}"/>">
											     		<div class="gallery-overlay p-4">
			                                                <div class="search-icon">
			                                                    <a href="<c:url value="/youdogUploadImg/${item.place_thumbnail}"/>" data-lightbox="Gallery-9" class="my-auto">
			                                                   		<i class="fas fa-search-plus btn-pink-- btn-primary-outline-0 rounded-circle p-3"></i>
			                                                    </a>
			                                                </div>
			                                                
			                                            </div>
											     	</div>
											      <div class="card-body mt-1">
												      
													        <p class="card-title h3">
													        ${item.place_name}
		
													        </p>
													        <div class="card-title mt-3">
														        <a href="${item.place_site}" class="">
														        	<p class="mx-2 text-pink--"><i class="fas fa-home"></i> 홈페이지 방문하기</p>
														        </a>
													        </div>
													        <p class="card-text">${item.place_cate}</p>
													        <p class="card-text">${item.place_inout}</p>
													        <p class="card-text">${item.place_call_number}</p>
													        <div class="card-text">
														    																 <button type="submit" class="btn btn-pink--">
													                <!-- 버튼1. 꽉찬 하트 -->
													                <i class="fas fa-heart"></i> ${item.place_likes}
													            </button>
													        </div>
	 													
											      </div>
											      <div class="card-footer">
											        <small class="text-muted"><i class="fas fa-map-marker-alt"></i> 장소 주소 : ${item.place_address}</small>
											      </div>
											    </div>
											  </div>
											</c:if>
										  </c:forEach>
									<!-- ********** -->	
							</div>
						</div>
					</div>
				</div>
				<div id="tab-5" class="tab-pane fade show p-0">
                    <div class="row g-4">
                        <div class="col-lg-12">
                            <div class="row g-4">
									<!-- ********** -->							
																			 <c:forEach var="item" items="${placeVos}">
										<c:if test="${item.place_cate eq '수원'}">
											<div class="col-lg-3">	
												<div class="card h-75">
											    	<div class="gallery-img h-75">
											      		<img class="card-img-top" src="<c:url value="/youdogUploadImg/${item.place_thumbnail}"/>">
											     		<div class="gallery-overlay p-4">
			                                                <div class="search-icon">
			                                                    <a href="<c:url value="/youdogUploadImg/${item.place_thumbnail}"/>" data-lightbox="Gallery-9" class="my-auto">
			                                                   		<i class="fas fa-search-plus btn-pink-- btn-primary-outline-0 rounded-circle p-3"></i>
			                                                    </a>
			                                                </div>
			                                                
			                                            </div>
											     	</div>
											      <div class="card-body mt-1">
												      
													        <p class="card-title h3">
													        ${item.place_name}
		
													        </p>
													        <div class="card-title mt-3">
														        <a href="${item.place_site}" class="">
														        	<p class="mx-2 text-pink--"><i class="fas fa-home"></i> 홈페이지 방문하기</p>
														        </a>
													        </div>
													        <p class="card-text">${item.place_cate}</p>
													        <p class="card-text">${item.place_inout}</p>
													        <p class="card-text">${item.place_call_number}</p>
													        <div class="card-text">
													        
													     
													        
														    																 <button type="submit" class="btn btn-pink--">
													                <!-- 버튼1. 꽉찬 하트 -->
													                <i class="fas fa-heart"></i> ${item.place_likes}
													            </button>
													        </div>
	 													
											      </div>
											      <div class="card-footer">
											        <small class="text-muted"><i class="fas fa-map-marker-alt"></i> 장소 주소 : ${item.place_address}</small>
											      </div>
											    </div>
											  </div>
											</c:if>
										  </c:forEach>
									<!-- ********** -->	
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
<a href="#"
	class="btn btn-pink-- btn-primary-outline-0 btn-md-square rounded-circle back-to-top"><i
	class="fa fa-arrow-up"></i></a>



<!-- footer start -->
<jsp:include page="footer.jsp" />
<!-- footer End -->

<!-- bottomsetting start -->
<jsp:include page="bottomsetting.jsp" />
<!-- bottomsetting End -->
