	<%@page import="com.office.youdog.admin.member.AdminMemberVo"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	<!-- Topsetting start -->
	<jsp:include page="include/topsetting.jsp" />
	<!-- topsetting End -->
	
	<!-- Navbar start -->
	<jsp:include page="include/nav.jsp" />
	<!-- Navbar End -->
	
	<!-- Modal Search Start -->
	<jsp:include page="include/modalsearch.jsp" />
	<!-- Modal Search End -->

	<!-- Session에서 로그인된 member의 정보를 객체에 담아서 가져옴 -->
	<%
	AdminMemberVo loginedAdminMemberVo = (AdminMemberVo) session.getAttribute("loginedAdminMemberVo");
	%>
		
	<!-- 방문자가 보는 메인 화면 Carousel 부분 -->
	<%
	if(loginedAdminMemberVo == null){
	%>

		<!-- Carousel Start -->
		<jsp:include page="include/visitorCarousel.jsp" />
		<!-- Carousel End -->
		
	<%
	}else if (loginedAdminMemberVo.getAdmin_approval()== 2){
	%>

		<!-- 최고 관리자가 보는 메인 화면 Carousel 부분 -->
		<!-- Admin Carousel Start -->
		<jsp:include page="include/superAdminCarousel.jsp" />
		<!-- admin Carousel End -->
	<%
	}else{
	%>	
		<!-- 관리자가 보는 메인 화면 Carousel 부분 -->
		<!-- Super Admin Carousel Start -->
		<jsp:include page="include/admincarousel.jsp" />
		<!-- Super admin Carousel End -->
		
	<%
	}
	%>
	
	<!-- footer start -->
	<jsp:include page="include/footer.jsp" />
	<!-- footer End -->
	
	<!-- bottomsetting start -->
	<jsp:include page="include/bottomsetting.jsp" />
	<!-- bottomsetting End -->
