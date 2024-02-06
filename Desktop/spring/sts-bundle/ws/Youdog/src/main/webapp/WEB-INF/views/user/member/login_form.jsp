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
		<h3 class="text-white display-3 mb-4">
			LogIn
			</h1>
			<ol class="breadcrumb justify-content-center mb-0">
				<li class="breadcrumb-item"><a class="text-darkpink--"
					href="<c:url value='/'/>">Home</a></li>
				<li class="breadcrumb-item"><a class="text-darkpink--" href="#">Pages</a></li>
				<li class="breadcrumb-item active text-white">Login</li>
			</ol>
	</div>
</div>
<!-- Header End -->


<!-- Appointment Start -->
<div class="container-fluid appointment py-5"
	style="background: var(--bs-primary--);">
	<div class="container py-5">
		<div class="row g-5 align-items-center">
			<div class="col-lg-3"></div>
			<div class="col-lg-6">
				<div class="appointment-form p-5">
					<p class="fs-4 text-uppercase text-primary--">LogIn</p>
					<h1 class="display-4 mb-4 text-white">Welcome</h1>
					<form name="login_form" method="post">
						<div class="row gy-3 gx-4">

							<div class="col-lg-12">
								<input type="text" name="user_id"
									class="form-control py-3 border-white bg-transparent text-white"
									placeholder="INPUT USER ID.">
							</div>

							<div class="col-lg-12">
								<input type="password" name="user_pw"
									class="form-control py-3 border-white bg-transparent"
									placeholder="INPUT USER Password.">
							</div>

							<div class="col-lg-5">
								<a href="<c:url value='/user/member/createAccountForm'/>">
									<button type="button"
										class="btn btn-light w-100 py-3 px-5 text-primary--">회원가입</button>
								</a>
							</div>
							<div class="col-lg-7">
								<input type="button" value="로그인" onclick="loginForm();"
									class="btn btn-primary-- btn-primary-outline-0 w-100 py-3 px-5">
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="col-lg-3"></div>

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