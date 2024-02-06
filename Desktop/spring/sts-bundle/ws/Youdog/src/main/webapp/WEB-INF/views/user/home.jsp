	<%@page import="com.office.youdog.user.member.UserMemberVo"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    
	<!-- Topsetting start -->
	<jsp:include page="../include/topsetting.jsp" />
	<!-- topsetting End -->
	
	<!-- Navbar start -->
	<jsp:include page="../include/nav.jsp" />
	<!-- Navbar End -->
	
	<!-- Modal Search Start -->
	<jsp:include page="../include/modalsearch.jsp" />
	<!-- Modal Search End -->

	<!-- Session에서 로그인된 member의 정보를 객체에 담아서 가져옴 -->
	<%
	UserMemberVo loginedUserVo = (UserMemberVo) session.getAttribute("loginedUserVo");
	%>
		
	<!-- 방문자가 보는 메인 화면 Carousel 부분 -->
	<%
	if(loginedUserVo == null){
	%>

		<!-- Carousel Start -->
		<jsp:include page="include/visitorCarousel.jsp" />
		<!-- Carousel End -->
		
	<%
	}else{
	%>

		<!-- Super Admin Carousel Start -->
		<jsp:include page="include/usercarousel.jsp" />
		<!-- Super admin Carousel End -->
		
	<%
	}
	%>
	
	<!-- footer start -->
	<jsp:include page="../include/footer.jsp" />
	<!-- footer End -->
	
	<!-- bottomsetting start -->
	<jsp:include page="../include/bottomsetting.jsp" />
	<!-- bottomsetting End -->
