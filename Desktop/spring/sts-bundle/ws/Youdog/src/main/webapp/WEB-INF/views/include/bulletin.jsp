<!-- for User -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Topsetting start -->
<jsp:include page="topsetting.jsp" />
<!-- topsetting End -->

<!-- Navbar start -->
<jsp:include page="nav.jsp" />
<!-- Navbar End -->

<!-- Modal Search Start -->
<jsp:include page="modalsearch.jsp" />
<!-- Modal Search End -->

<!-- Header Start -->
<div class="container-fluid bg-breadcrumb py-5">
	<div class="container text-center py-5">
		<h3 class="text-white display-3 mb-4">
			Communication
			</h1>
			<ol class="breadcrumb justify-content-center mb-0">
				<li class="breadcrumb-item"><a class="text-darkpink--"
					href="<c:url value='/'/>">Home</a></li>
				<li class="breadcrumb-item"><a class="text-pink--" href="#">Pages</a></li>
				<li class="breadcrumb-item active text-white">board</li>
			</ol>
	</div>
</div>
<!-- Header End -->
<div class="container-fluid gallery py-2">
	<div class="container py-5">
		<div class="tab-class text-center">
			<ul class="nav nav-pills d-inline-flex justify-content-center mb-5">
				<li class="nav-item nav-item--"><a
					class="d-flex mx-3 py-2 border border-darkpink-- bg-light rounded-pill active"
					data-bs-toggle="pill" href="#tab-1"> <span class="text-dark"
						style="width: 150px;">공지</span>
				</a></li>
				<li class="nav-item"><a
					class="d-flex py-2 mx-3 border border-darkpink-- bg-light rounded-pill"
					data-bs-toggle="pill" href="#tab-2"> <span class="text-dark"
						style="width: 150px;">자유게시판</span>
				</a></li>

			</ul>







			<div class="tab-content">
				<div id="tab-1" class="tab-pane fade show p-0 active">
					<div class="row g-4">
						<div class="col-lg-12">
							<div class="row g-4">
								<div class="col-lg-12">
									

									<h1>공지 게시판</h1>
									<!-- 공지 게시판 시작 -->
									<table class="table  table-hover  align-middle">
										<thead>
											<th>순서</th>
											<th>제목</th>
											<th>작성자</th>
											<th>날짜</th>
											<th>조회수</th>
											<th>추천수</th>
										</thead>
										<tbody class="table-warning table-hover">
										<c:forEach var="item" items="${BulletinVos}" varStatus="vs">
										    <c:if test="${item.bulletin_cate eq '공지'}">
										        <tr>
										            <td>${vs.index + 1}</td>
										
										            <!-- url 뒤에 오는 부분의 경로를 자동으로 변수화해서 설정 -->
										            <c:url value='bulletin/detailPage' var='detail_url'>
										                <c:param name='b_no' value='${item.bulletin_no}' />
										            </c:url>
										
										            <td><a href="<c:url value="${detail_url}"/>"
										                    class="text-darkgray-- ">${item.bulletin_title}</a></td>
										            <td>${item.bulletin_writer}</td>
										            <td>${item.bulletin_reg_date}</td>
										            <td>${item.bulletin_views}</td>
										            <td>${item.bulletin_likes}</td>
										        </tr>
										    </c:if>
										</c:forEach>
											<%-- <c:forEach var="item" items="${BulletinVos}" varStatus="vs">
													<tr>
														<td>${vs.index+1}</td>
														
														<!-- url 뒤에 오는 부분의 경로를 자동으로 변수화해서 설정 -->
														<c:url value='bulletin/detailPage' var='detail_url'>
															<c:param name='b_no' value='${item.bulletin_no}' />
														</c:url>			
														
														<td><a
															href="<c:url value="${detail_url}"/>"
															class="text-darkgray-- ">${item.bulletin_title}</a></td>
														<td>${item.bulletin_writer}</td>
														<td>${item.bulletin_reg_date}</td>
														<td>${item.bulletin_views}</td>
														<td>${item.bulletin_likes}</td>
													</tr>
											
											</c:forEach> --%>
										</tbody>
									</table>
									<!-- 공지 게시판 끝 -->














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
									<div class="text-end">
									  <a href="<c:url value='/bulletin/writePage'/>">
                                        	<button 
                                        	type="button" class="btn-search btn btn-pink-- btn-primary-outline-0 .btn-rounded-- px-5" >
                                        	글쓰기
                                        	</button>
                                   	  </a>
									</div>	


									<h1>자유 게시판</h1>
									<!-- 자유 게시판 시작 -->
									<table class="table  table-hover  align-middle">
										<thead>
											<th>순서</th>
											<th>제목</th>
											<th>작성자</th>
											<th>날짜</th>
											<th>조회수</th>
											<th>추천수</th>
										</thead>
										<tbody class="table-hover">
											<c:forEach var="item" items="${BulletinVos}" varStatus="vs">
										    <c:if test="${item.bulletin_cate eq '자유'}">
										        <tr>
										            <td>${vs.index + 1}</td>
										
										            <!-- url 뒤에 오는 부분의 경로를 자동으로 변수화해서 설정 -->
										            <c:url value='bulletin/detailPage' var='detail_url'>
										                <c:param name='b_no' value='${item.bulletin_no}' />
										            </c:url>
										
										            <td><a href="<c:url value="${detail_url}"/>"
										                    class="text-darkgray-- ">${item.bulletin_title}</a></td>
										            <td>${item.bulletin_writer}</td>
										            <td>${item.bulletin_reg_date}</td>
										            <td>${item.bulletin_views}</td>
										            <td>${item.bulletin_likes}</td>
										        </tr>
										    </c:if>
										</c:forEach>
										</tbody>
									</table>
									<!-- 자유 게시판 끝 -->

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
<!-- gallery End -->



<!-- footer start -->
<jsp:include page="footer.jsp" />
<!-- footer End -->

<!-- bottomsetting start -->
<jsp:include page="bottomsetting.jsp" />
<!-- bottomsetting End -->
