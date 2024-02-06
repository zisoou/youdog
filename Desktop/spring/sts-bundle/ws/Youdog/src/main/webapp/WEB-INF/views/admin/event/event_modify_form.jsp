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
  
  	<jsp:include page="../include/event_modify_js.jsp" />

  
        <!-- Appointment Start -->
        <div class="container-fluid appointment py-5 " style="background:#fac7b8;">
            <div class="container py-5">
                <div class="row g-5 align-items-center ">
                    <div class="col-lg-3">
                    </div>
                    <div class="col-lg-6 ">
                        <div class="appointment-form p-5 bg-white-- ">
                            <p class="fs-4 text-uppercase text-pink-- ">New Event ✨✨</p>
                            <h2 class="display-4 mb-4 text-darkgray--">이벤트 등록하기</h2>
                        	<form action="<c:url value='/admin/event/modifyEventConfirm' />" name="event_modify_form" method="post" enctype="multipart/form-data">
                                <input type="hidden" name ="event_no" value="${EventVo.event_no}">
                                <div class="row gy-3 gx-4 ">
                                    <div class="col-lg-12 ">
                                       <input type="text" name="event_title" placeholder="이벤트 이름" value = "${EventVo.event_title}"
											class="form-control py-3 border-darkpink-- bg-transparent text-darkgray--">
                                    </div>
                                 
                                    <div class="col-lg-12">
                                        <input type="file" name="file" placeholder="썸네일 등록하기"
										class="form-control py-3 border-darkpink-- bg-transparent text-darkgray--">
										<img width="200" src="<c:url value="/youdogUploadImg/${EventVo.event_thumbnail}"/>" class="img-fluid rounded" alt="">
                                    </div>
                                    
                                    <div class="col-lg-12">
                                        <input type="text" name="event_link" placeholder="이벤트 링크" value = "${EventVo.event_link}"
										class="form-control py-3 border-darkpink-- bg-transparent text-darkgray--">
                                    </div>
                                    
                                    <div class="col-lg-12">
                                    	<input type="button" value="등록 요청하기" onclick="eventModify();"
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
