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
<form  action="<c:url value='/bulletin/bulletinWrite'/>" name="bulletin_write" method="post">
<div class="container py-5">

		<div class="row ">
			<div class="col-10 "></div>
			<div class="col-2">
				<button class="btn btn-primary-- btn-lg text-center px-5 mb-3"
						type="submit">
							저장하기 
				</button>
			</div>
		</div>
	<div class="p-5  bg-light rounded-3">
		<div class="row ">
			<div class="col-10 ">
				<p class="text-left px-2" style="margin-bottom: 0;">[공지]</p>
			</div>
			<div class="col-2">
			</div>
		</div>

		<div class="container-fluid py-5">
		
		     <div class="col-lg-12 ">
    	             <input type="text" name="bulletin_title" 
    	             class="form-control form-control-title py-3 border-white bg-transparent text-darkgray-- pb-5" 
    	             placeholder="제목"
    	             style="	  font-size: 2.5rem; 
							      line-height : 60px;
							      color: var{--bs-dark-gary--}; 
							      border : none;"
    	             >
             </div>
			<div class="border-bottom"></div>
		     <div class="col-lg-12  bulletin-content "
		    	   style=" ">
    	             <textarea name="bulletin_content" 
    	             class="form-control form-control-content py-3 border-white-- bg-transparent text-darkgray-- pb-5" 
    	             placeholder="내용"
    	             style="	  font-size: 1rem; 
							      line-height : 1.8rem;
							      color: var{--bs-dark-gary--}; 
							      border : none;
							      min-height: 60rem;
							      "
    	             ></textarea>
             </div>

		<div>


			</div>

		</div>
	</div>
</div>
		</form>




  <style>
    .form-control-title::placeholder {
      font-size: 2.5rem; 
      color: var{--bs-dark-gary--}; 
    }
    
    .form-control-content::placeholder {
      font-size: 1rem; 
      color: var{--bs-dark-gary--}; 
    }
    
  </style>
<!-- footer start -->
<jsp:include page="../../include/footer.jsp" />
<!-- footer End -->

<!-- bottomsetting start -->
<jsp:include page="../../include/bottomsetting.jsp" />
<!-- bottomsetting End -->