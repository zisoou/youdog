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

<!-- Header Start -->
<div class="container-fluid bg-breadcrumb py-5">
	<div class="container text-center py-5">
		<h3 class="text-white display-3 mb-4">
			최고 관리자 전용 페이지
		</h3>
			<ol class="breadcrumb justify-content-center mb-0">
				<li class="breadcrumb-item"><a class="text-darkpink--"
					href="<c:url value='/'/>">Home</a></li>
				<li class="breadcrumb-item"><a class="text-pink--" href="#">Pages</a></li>
				<li class="breadcrumb-item active text-white">board</li>
			</ol>
	</div>
</div>
<!-- Header End -->



<!-- 관리자 전용 페이지 시작 -->
<div class="container-fluid gallery py-5">
	<div class="container py-5">
		<div class="tab-class text-center">
			<ul class="nav nav-pills d-inline-flex justify-content-center mb-5">
				<li class="nav-item nav-item--"><a
					class="d-flex mx-4 py-3 px-5 border border-darkpink-- bg-light rounded-pill active"
					data-bs-toggle="pill" href="#tab-1"> <span class="text-dark"
						style="width: 150px;">관리자 권한 승인</span>
				</a></li>
				<li class="nav-item"><a
					class="d-flex mx-4 py-3 px-5 border border-darkpink-- bg-light rounded-pill"
					data-bs-toggle="pill" href="#tab-2"> <span class="text-dark"
						style="width: 150px;">관리자 승인 철회</span>
				</a></li>

			</ul>







			<div class="tab-content">
				<div id="tab-1" class="tab-pane fade show p-0 active">
					<div class="row g-4">
					
						<div class="col-lg-12">
							<div class="row g-4">
								<div class="col-lg-12">
	<!-- 관리자 승인 게시판 시작 -->
									<table  class="table table-hover  align-middle">
										<thead>
											<tr>
												<th>계정</th>
												<th>이름</th>
												<th>성별</th>
												<th>회사명</th>
												<th>메일</th>
												<th>연락처</th>
												<th>승인</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="item" items="${adminMemberVos}">
												<tr>
													<td>${item.admin_id}</td>
													<td>${item.admin_name}</td>
													<td>${item.admin_gender}</td>
													<td>${item.admin_company}</td>
													<td>${item.admin_mail}</td>
													<td>${item.admin_phone}</td>
													<td>
														<c:choose>
															<c:when test="${item.admin_approval eq 0}">
																<c:url value='/admin/member/setAdminApproval' var='approval_url'>
																	<c:param name='admin_no' value='${item.admin_no}'/>
																</c:url>
																
																    <a href="${approval_url}">
						                                        		<button type="button" class="btn btn-primary-- w-100 text-white--" >
						                                        		승인처리
						                                        		</button>
						                                   			</a>
															</c:when>
															<c:when test="${item.admin_approval eq 1}"> 
															<button type="button" class="btn btn-light w-100 text-primary-- "  disabled >
																<c:out value="승인완료" /> 	
						                                    </button>
															
															</c:when>
														</c:choose>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									
									
	<!-- 관리자 승인 게시판 끝 -->

									<!-- 페이지 네비게이션 시작 -->
									<div class="d-flex justify-content-center">
										<nav aria-label="Page navigation example">
											<ul class="pagination">
												<li class="page-item"><a class="page-link" href="#"
													aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
												</a></li>
												<li class="page-item"><a class="page-link" href="#">1</a></li>
												<li class="page-item"><a class="page-link" href="#">2</a></li>
												<li class="page-item"><a class="page-link" href="#">3</a></li>
												<li class="page-item"><a class="page-link" href="#"
													aria-label="Next"> <span aria-hidden="true">&raquo;</span>
												</a></li>
											</ul>
										</nav>
									</div>
									<!-- 페이지 네비게이션 끝 -->



								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div id="tab-2" class="tab-pane fade show p-0">
					<div class="row g-4">
						<div class="col-lg-12">
							<div class="row g-4">
								<div class="col-lg-12">
	<!-- 장소 등록 승인 게시판 시작 -->
									<table  class="table table-hover  align-middle">
										<thead>
											<tr>
												<th>계정</th>
												<th>이름</th>
												<th>성별</th>
												<th>회사명</th>
												<th>메일</th>
												<th>연락처</th>
												<th>승인</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="item" items="${adminMemberVos}">
												<tr>
													<td>${item.admin_id}</td>
													<td>${item.admin_name}</td>
													<td>${item.admin_gender}</td>
													<td>${item.admin_company}</td>
													<td>${item.admin_mail}</td>
													<td>${item.admin_phone}</td>
													<td>
														<c:choose>
															<c:when test="${item.admin_approval eq 1}">
																<c:url value='/admin/member/setAdminDenial' var='approval_url'>
																	<c:param name='admin_no' value='${item.admin_no}'/>
																</c:url>
																
																    <a href="${approval_url}">
						                                        		<button type="button" class="btn btn-pink--  w-100 text-white--" >
						                                        		승인해제
						                                        		</button>
						                                   			</a>
															</c:when>
															<c:when test="${item.admin_approval eq 0}"> 
															<button type="button" class="btn btn-light-- w-100 text-pink--"  disabled >
																<c:out value="해제완료" /> 	
						                                    </button>
															
															</c:when>
														</c:choose>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
	<!-- 장소 등록 승인 게시판 시작 -->


									<!-- 페이지 네비게이션 시작 -->
									<div class="d-flex justify-content-center">
										<nav aria-label="Page navigation example">
											<ul class="pagination">
												<li class="page-item"><a class="page-link" href="#"
													aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
												</a></li>
												<li class="page-item"><a class="page-link" href="#">1</a></li>
												<li class="page-item"><a class="page-link" href="#">2</a></li>
												<li class="page-item"><a class="page-link" href="#">3</a></li>
												<li class="page-item"><a class="page-link" href="#"
													aria-label="Next"> <span aria-hidden="true">&raquo;</span>
												</a></li>
											</ul>
										</nav>
									</div>
									<!-- 페이지 네비게이션 끝 -->


								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 관리자 전용 페이지 끝 -->



 
	<!-- footer start -->
	<jsp:include page="../include/footer.jsp" />
	<!-- footer End -->

	<!-- bottomsetting start -->
	<jsp:include page="../include/bottomsetting.jsp" />
	<!-- bottomsetting End -->