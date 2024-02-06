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
                  style="width: 150px;">장소 등록 승인</span>
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
                           <table  class="table table-hover align-middle">
                              <thead>
                                 <tr>
                                    <th>장소사진</th>
                                    <th>장소명</th>
                                    <th>상세주소</th>
                                    <th>홈페이지명</th>
                                    <th>휴대폰</th>
                                    <th>지역</th>
                                    <th>실내/실외</th>
                                    <th></th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <c:forEach var="item" items="${hopePlaceVos}">
                                    <tr>
                                       <td>
                                       		<div style="width:7rem; height:10rem; backgound:cover/center <c:url value="/youdogUploadImg/${item.hoplace_thumbnail}"/>;"></div>
                                          <img src="<c:url value="/youdogUploadImg/${item.hoplace_thumbnail}"/>">
                                       </td>
                                       <td>${item.hoplace_name}</td>
                                       <td>${item.hoplace_address}</td>
                                       <td>${item.hoplace_site}</td>
                                       <td>${item.hoplace_call_number}</td>
                                       <td>${item.hoplace_cate}</td>
                                       <td>${item.hoplace_inout}</td>
                           
                                       <td>
                                          <c:choose>
                                             <c:when test="${item.hoplace_result eq 0}">
                                                <c:url value='/admin/place/setPlaceApproval' var='approval_url'>
                                                   <c:param name='hoplace_no' value='${item.hoplace_no}'/>
                                                </c:url>
                                                    <a href="${approval_url}">
                                                                <button type="button" class="btn btn-primary-- w-100 text-white--" >
                                                                승인처리
                                                                </button>
                                                              </a>
                                             </c:when>
                                             <c:when test="${item.hoplace_result eq 1}"> 
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
                           <table  class="table table-hover align-middle">
                              <thead>
                                 <tr>
                                    <th>장소사진</th>
                                    <th>장소명</th>
                                    <th>상세주소</th>
                                    <th>홈페이지명</th>
                                    <th>휴대폰</th>
                                    <th>지역</th>
                                    <th>실내/실외</th>
                                    <th></th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <c:forEach var="item" items="${hopePlaceVos}">
                                    <tr>
                                       <td>
                                          <img src="<c:url value="/youdogUploadImg/${item.hoplace_thumbnail}"/>">
                                       </td>
                                       <td>${item.hoplace_name}</td>
                                       <td>${item.hoplace_address}</td>
                                       <td>${item.hoplace_site}</td>
                                       <td>${item.hoplace_call_number}</td>
                                       <td>${item.hoplace_cate}</td>
                                       <td>${item.hoplace_inout}</td>
                           
                                       <td>
                                          <c:choose>
                                             <c:when test="${item.hoplace_result eq 1}">
                                                <c:url value='/admin/place/setPlaceDenial' var='approval_url'>
                                                   <c:param name='hoplace_no' value='${item.hoplace_no}'/>
                                                </c:url>
                                                    <a href="${approval_url}">
                                                                <button type="button" class="btn btn-pink-- text-white-- w-100 " >
                                                                승인해제
                                                                </button>
                                                              </a>
                                             </c:when>
                                             <c:when test="${item.hoplace_result eq 0}"> 
                                             <button type="button" class="btn btn-light-- text-pink-- w-100 "  disabled >
                                                <c:out value="해제완료" />    
                                                      </button>
                                             
                                             </c:when>
                                          </c:choose>
                                       </td>
                                    </tr>
                                 </c:forEach>
                              </tbody>
                           </table>

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