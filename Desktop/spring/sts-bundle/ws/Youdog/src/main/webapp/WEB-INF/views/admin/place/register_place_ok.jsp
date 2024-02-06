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
  
  	<jsp:include page="../include/register_place_form_js.jsp" />
  
        <!-- Appointment Start -->
        <div class="container-fluid appointment py-5 " style="background:#fac7b8;">
            <div class="container py-5">
                <div class="row g-5 align-items-center ">
                    <div class="col-lg-3">
                    </div>
                    <div class="col-lg-6 ">
                        <div class="appointment-form p-5 bg-white-- ">
                            <h1 class="display-4 mb-4 text-darkgray--">Success</h1>
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
