<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	
	<!-- Topsetting start -->
	<jsp:include page="../../include/topsetting.jsp" />
	<!-- topsetting End -->
	
	
	<!-- Navbar start -->
	<jsp:include page="../../include/nav.jsp" />
	<!-- Navbar End -->

	<!-- Modal Search Start -->
	<jsp:include page="../../include/modalsearch.jsp" />
	<!-- Modal Search End -->

	<jsp:include page="../include/login_js.jsp" />

        <!-- Header Start -->
        <div class="container-fluid bg-breadcrumb py-5">
            <div class="container text-center py-5">
                <h3 class="text-white display-3 mb-4">LogIn</h1>
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item"><a  class="text-darkpink--" href="<c:url value='/'/>">Home</a></li>
                    <li class="breadcrumb-item"><a  class="text-darkpink--" href="#">Pages</a></li>
                    <li class="breadcrumb-item active text-white">Login</li>
                </ol>    
            </div>
        </div>
        <!-- Header End -->

        
        <!-- Appointment Start -->
        <div class="container-fluid appointment py-5" style="background: var(--bs-primary--);">
            <div class="container py-5">
                <div class="row g-5 align-items-center">
                <div class="col-lg-3"></div>
                    <div class="col-lg-6">
                        <div class="appointment-form p-5">
                            <h1 class="display-4 mb-4 text-white">Login Fail</h1> <br>
                            <h3 class="mb-4 text-white">
                            아이디 및 비밀번호가 일치하지 않거나</h3 >
                            <h3  class="mb-4 text-white">
                            관리자 권한 승인 처리 중입니다.</h3 >
                        </div>
                    </div>
                     <div class="col-lg-3"></div>
                    
                </div>
                		<div class="d-flex align-items-center justify-content-center mt-5">
							<a
								style="width: 13rem;"
								class="btn rounded-pill py-3 px-5 me-4 btn-light-- btn" 
								href="<c:url value='/user/member/createAccountForm'/>">회원가입</a> 
							<a
								style="width: 13rem;"
								class="btn btn-pink-- btn-primary-outline-0 rounded-pill py-3 px-5"
								href="<c:url value='/user/member/loginForm'/>">로그인</a>
						</div>
            </div>
        </div>
        <!-- Appointment End -->


 
	<!-- footer start -->
	<jsp:include page="../../include/footer.jsp" />
	<!-- footer End -->

	<!-- bottomsetting start -->
	<jsp:include page="../../include/bottomsetting.jsp" />
	<!-- bottomsetting End -->