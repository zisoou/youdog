<%@page import="org.springframework.ui.Model"%>
<%@page import="com.office.youdog.bulletin.BulletinVo"%>
<%@page import="com.office.youdog.user.member.UserMemberVo"%>
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

<div class="container py-5">
	<header class="pb-3 pt-3 mb-4 border-bottom bg-white-- rounded-3">
		<div class="row ">
			<div class="col-4 ">
				<p class="text-left px-4" 
					style="margin-bottom: 0;">
					${bulletinVo.bulletin_writer}
				</p>
			</div>
			<div class="col-4">
				<p class="text-center" style="margin-bottom: 0;">${bulletinVo.bulletin_reg_date}</p>
			</div>
			<div class="col-4">
				<p class="text-right px-4"
					style="text-align: right; margin-bottom: 0;">조회 : ${bulletinVo.bulletin_views} / 추천 : ${bulletinVo.bulletin_likes}</p>
			</div>
		</div>
	</header>

	<div class="p-5  bg-light rounded-3">
		<div class="row ">
			<div class="col-6 ">
				<p class="text-left px-2" style="margin-bottom: 0;">[${bulletinVo.bulletin_cate}]</p>
			</div>
			<div class="col-6">
				<div class="text-right px-2"
					style="text-align: right; margin-bottom: 0;">
					<a>목록</a> | <a>댓글</a>(<span style="color: red;">0</span>)
				</div>
			</div>
		</div>

		<div class="container-fluid py-5">
			<div class="border-bottom"></div>
			<p class="fs-5 pt-3">home > board > notice</p>
			<p class="display-5 fw-bold">${bulletinVo.bulletin_title}</p>
			<p class="col-md-8 fs-4 mb-5 pb-5">작성일 ${bulletinVo.bulletin_reg_date}</p>
			<div>
				<p class="fs-5 mb-5">
					${bulletinVo.bulletin_content}
				</p>

				<div class="row mt-5">
					<div class="col-4"></div>
					<div class="col-4">

						<button class="btn btn-primary-- btn-lg m-auto text-center mx-2"
							type="button">
							추천하기 <i class="fas fa-thumbs-up"></i> ${bulletinVo.bulletin_likes}
						</button>
						<button class="btn btn-primary-- btn-lg m-auto text-center mx-2"
							type="button">
							혼인신고 <i class="fas fa-thumbs-up"></i> ${bulletinVo.bulletin_likes}
						</button>


					</div>
					<div class="col-4"></div>
				</div>

				<div class="row">
					<div class="col-6 ">
						<p class="text-left px-2" style="margin-bottom: 0;">
							<a>목록</a> | <a>댓글</a>(<span style="color: red;">0</span>)
						</p>
					</div>
					<div class="col-6">
					<c:set var="loginedUserMemberVo" value="${sessionScope.loginedUserMemberVo}" />

					    <!-- 로그인이 되어 있는 경우-->
					   
					<c:if test="${loginedUserMemberVo != null && loginedUserMemberVo.getUser_no() == bulletinVo.getBulletin_writer_no()}"> 
		
					    <!-- session에 담긴 loginedUserMemberVo의 값이 null이 아니면 아래 표시 -->
					    <p class="text-right px-2" style="text-align: right; margin-bottom: 0;">
						<!-- url 뒤에 오는 부분의 경로를 자동으로 변수화해서 설정 -->
						<c:url value='modifyBulletin' var='modify_detail_url'>
								<c:param name='b_no' value='${bulletinVo.getBulletin_no()}' />
						</c:url>						    
					        <a  href="<c:url value="${modify_detail_url}"/>" 
					        	class="text-darkgray--">수정하기</a>
					        | 
					    <c:url value='deleteBulletin' var='delete_url'>
								<c:param name='b_no' value='${bulletinVo.getBulletin_no()}' />
						</c:url>    
					        <a  href="${delete_url}" 
					        class="text-darkgray--">삭제하기</a>
					    </p>
 					</c:if>
					    <!-- 로그인이 되어 안되어있는 경우-->
						<c:if test="${loginedUserMemberVo == null or loginedUserMemberVo.getUser_no() != bulletinVo.getBulletin_writer_no()}"> 
					
					    <!-- session에 담긴 loginedUserMemberVo의 값이 null이면 아래 표시 -->
					    <p class="text-right px-2" style="text-align: right; margin-bottom: 0;">
					        신고하기 | 스크랩
					    </p>
				 </c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



<!-- footer start -->
<jsp:include page="../../include/footer.jsp" />
<!-- footer End -->

<!-- bottomsetting start -->
<jsp:include page="../../include/bottomsetting.jsp" />
<!-- bottomsetting End -->