<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	
	<!-- Topsetting start -->
	<jsp:include page="../include/topsetting.jsp" />
	<!-- topsetting End -->
	
	
	<!-- Navbar start -->
	<jsp:include page="../include/nav.jsp" />
	<!-- Navbar End -->

	<!-- Modal Search Start -->
	<jsp:include page="../include/modalsearch.jsp" />
	<!-- Modal Search End -->
  

	<jsp:include page="../include/request_place_form_js.jsp" />		
  
        <!-- Appointment Start -->
        <div class="container-fluid appointment py-5 " style="background:#fac7b8;">
            <div class="container py-5">
                <div class="row g-5 align-items-center ">
                    <div class="col-lg-3">
                    </div>
                    <div class="col-lg-6 ">
                        <div class="appointment-form p-5 bg-white-- ">
                            <p class="fs-4 text-uppercase text-pink-- ">Welcome</p>
                            <h2 class="display-4 mb-4 text-darkgray--">장소 등록 요청하기</h2>
                        	<form  action="<c:url value='/admin/place/requestHopePlaceConfirm' />" method="post" name="request_hope_place_form" enctype="multipart/form-data">
                                
                                <div class="row gy-3 gx-4 ">
                                    <div class="col-lg-12 ">
                                       <input type="text" name="hoplace_name" value="${hopePlaceVo.hoplace_name}"  
                                       		placeholder="장소명"
											class="form-control py-3 border-darkpink-- bg-transparent text-darkgray--">
                                    </div>
                                    <div class="col-lg-12">
                                        <input type="text" name="hoplace_address" placeholder="상세주소"
										class="form-control py-3 border-darkpink-- bg-transparent text-darkgray--">
                                    </div>
                                    <div class="col-lg-12">
										<input type="text" name="hoplace_site" value="${hopePlaceVo.hoplace_site}" placeholder="홈페이지 명"
										class="form-control py-3 border-darkpink-- bg-transparent text-darkgray--"> 
                                    </div>

                                    <div class="col-lg-12 ">
										<input type="text" name="hoplace_call_number" placeholder="휴대전화 번호"
										class="form-control py-3 border-darkpink-- bg-transparent text-darkgray--"> 
                                    </div>
                                    <div class="col-lg-12 ">
										<select  name="hoplace_cate" class="border-darkpink-- form-select py-3 bg-transparent" aria-label="Default select example">
                                            <option value="">지역 카테고리</option>
                                            <option value="안산">안산</option>
                                            <option value="안양">안양</option>
                                            <option value="수원">수원</option>
                                            <option value="인천">인천</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-12">
                                    	<select  name="hoplace_inout" class="border-darkpink-- form-select py-3 bg-transparent" aria-label="Default select example">
                                            <option value="">실내/실외 여부</option>
                                            <option value="실내 시설">실내 시설</option>
                                            <option value="야외 시설">야외 시설</option>
                                            <option value="복함 시설">복합 시설</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-12">
										<input type="text" name="hoplace_ispn" value="${hopePlaceVo.hoplace_ispn}" 
										placeholder="사업자 등록 번호 (숫자 11자리)"
										class="form-control py-3 border-darkpink-- bg-transparent text-darkgray--"> 
                                    </div>
                                    <div class="col-lg-12">
                                        <input type="file" name="file" placeholder="사진 등록하기"
										class="form-control py-3 border-darkpink-- bg-transparent text-darkgray--">
                                    </div>
                                    
                                    <div class="col-lg-12">
                                    	<input type="button" value="등록 요청하기" onclick="requestHopePlaceConfirm();"
										class="btn btn-pink-- btn-primary-outline-0 w-100 py-3 px-5"> 
                                    </div>    
                                </div> 
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-3">
                    </div>
                </div>
            </div>
        </div>
        <!-- Appointment End -->

	<!-- footer start -->
	<jsp:include page="../include/footer.jsp" />
	<!-- footer End -->

	<!-- bottomsetting start -->
	<jsp:include page="../include/bottomsetting.jsp" />
	<!-- bottomsetting End -->
