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
                            <h1 class="display-4 mb-4 text-darkgray--">Fail</h1>
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
