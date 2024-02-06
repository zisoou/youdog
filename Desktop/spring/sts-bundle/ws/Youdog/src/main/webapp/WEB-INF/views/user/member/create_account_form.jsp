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

	<jsp:include page="../include/create_account_form_js.jsp" />

        <!-- Header Start -->
        <div class="container-fluid bg-breadcrumb py-5">
            <div class="container text-center py-5">
                <h3 class="text-white display-3 mb-4">join</h1>
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item"><a  class="text-darkpink--" href="<c:url value='/'/>">Home</a></li>
                    <li class="breadcrumb-item"><a  class="text-darkpink--" href="#">Pages</a></li>
                    <li class="breadcrumb-item active text-white">Appointment</li>
                </ol>    
            </div>
        </div>
        <!-- Header End -->

        
        <!-- Appointment Start -->
        <div class="container-fluid appointment py-5" style="background: var(--bs-primary--);">
            <div class="container py-5">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-3">
                    </div>
                    <div class="col-lg-6 ">
                        <div class="appointment-form p-5 bg-white-- ">
                            <p class="fs-4 text-uppercase text-primary-- ">Join Us</p>
                            <h1 class="display-4 mb-4 text-darkgray--">Hello World</h1>
                            <form  action="<c:url value='/user/member/createAccountConfirm'/>" name="create_account_form" method="post">
                                <div class="row gy-3 gx-4 ">
                                    <div class="col-lg-12 ">
                                        <input name="user_id" type="text" class="form-control py-3 border-primary-- bg-transparent text-darkgray--" placeholder="아이디">
                                    </div>
                                    <div class="col-lg-12">
                                        <input name="user_pw" type="password" class="form-control py-3 border-primary-- bg-transparent text-darkgray--" placeholder="비밀번호">
                                    </div>
                                    <div class="col-lg-12">
                                        <input  name="user_pw_again" type="password" class="form-control py-3 border-primary-- bg-transparent text-darkgray--" placeholder="비밀번호 확인">
                                    </div>
                                    <div class="col-lg-12 ">
                                        <input name="user_name" type="text" class="form-control py-3 border-primary-- bg-transparent text-darkgray--" placeholder="이름">
                                    </div>
                                    <div class="col-lg-12 border-primary--">
                                        <select name="user_gender" class="form-select py-3 border-primary-- bg-transparent" aria-label="Default select example">
                                            <option value="">성별</option>
                                            <option value="M">남성</option>
                                            <option value="W">여성</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-12">
                                        <input name="user_mail" type="email" class="form-control py-3 border-primary-- bg-transparent text-darkgray--" placeholder="이메일">
                                    </div>
                                    <div class="col-lg-12">
                                    
                                        <input name="user_phone" type="text" class="form-control py-3 border-primary-- bg-transparent text-darkgray--" placeholder="휴대전화번호 (ex 01011112222)">
                                    </div>

                                    <div class="col-lg-12">
                                         <input type="button" value="계정 생성하기" onclick="createAccountForm();" class="btn btn-primary-- btn-primary-outline-0 w-100 py-3 px-5"> 
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
	<jsp:include page="../../include/footer.jsp" />
	<!-- footer End -->

	<!-- bottomsetting start -->
	<jsp:include page="../../include/bottomsetting.jsp" />
	<!-- bottomsetting End -->
