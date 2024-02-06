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
                <h3 class="text-white display-3 mb-4">404 Page</h1>
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item"><a href="<c:url value='/'/>">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item active text-white">404</li>
                </ol>    
            </div>
        </div>
        <!-- Header End -->

        
        <!-- 404 Start -->
        <div class="container-fluid py-5" style="background: linear-gradient(rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2)); object-fit: cover;">
            <div class="container py-5 text-center">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <i class="bi bi-exclamation-triangle display-1 text-secondary"></i>
                        <h1 class="display-1">404</h1>
                        <h1 class="mb-4 text-dark">Page Not Found</h1>
                        <p class="mb-4 text-dark">We’re sorry, the page you have looked for does not exist in our website! Maybe go to our home page or try to use a search?</p>
                        <a class="btn btn-primary btn-primary-outline-0 rounded-pill py-3 px-5" href="<c:url value='/'/>">Go Back To Home</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- 404 End -->



	<!-- footer start -->
	<jsp:include page="footer.jsp" />
	<!-- footer End -->

	<!-- bottomsetting start -->
	<jsp:include page="bottomsetting.jsp" />
	<!-- bottomsetting End -->
