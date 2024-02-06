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
				About Us
				</h1>
				<ol class="breadcrumb justify-content-center mb-0">
					<li class="breadcrumb-item"><a class="text-darkpink--"
						href="<c:url value='/'/>">Home</a></li>
					<li class="breadcrumb-item"><a class="text-pink--" href="#">Pages</a></li>
					<li class="breadcrumb-item active text-white">About Us</li>
				</ol>
		</div>
	</div>
	<!-- Header End -->


	<!-- About Start -->
	
	<div class="container-fluid about py-5">
		<div class="container py-5">
			<div class="row pb-5">
				<div class="col-lg-3"></div>
				<div class="col-lg-6">
					<p class="fs-4 text-uppercase text-primary-- text-center">Hello World!</p>
					<h1 class="display-4 mb-4 text-center">We are YouDog</h1>
					<p class="mb-4 text-center">Lorem Ipsum is simply dummy text of the
						printing and typesetting industry. Lorem Ipsum has been the
						industry's standard dummy text ever since the 1500s, when an
						unknown printer took a galley of type and scrambled</p>
				</div>
				<div class="col-lg-3"></div>
			</div>
			<div class="row g-5 align-items-center">
				<div class="col-lg-5">
					<div class="video pt-3">
						<img src="/youdog/resources/assets/img/place-5.jpg"
							class="img-fluid rounded" alt="">
						<div
							class="position-absolute rounded border-14 border-top border-start border-white"
							style="bottom: 0; right: 0;">
							<img src="/youdog/resources/assets/img/place-5.jpg"
								class="img-fluid rounded" alt="">
						</div>
						<button type="button" class="btn btn-play" data-bs-toggle="modal"
							data-src="https://www.youtube.com/embed/DWRcNpR6Kdc"
							data-bs-target="#videoModal">
							<span></span>
						</button>
					</div>
				</div>
				<div class="col-lg-7">
					<div>

						<div class="row g-4">
							<div class="col-md-6 d-flex flex-column align-items-center">
								<div class="d-flex align-items-center mt-5 my-4">
									<i class="fab fa-instagram fa-3x text-primary--"></i>
									<div class="ms-4">
										<h5 class="mb-1">INSTA@YOUDOG</h5>
										<p class="mb-0">Lorem Ipsum is simply dummy text of the
											printing and typesetting industry.</p>
									</div>
								</div>
								<div class="d-flex align-items-center my-4">
									<i class="fab fa-facebook-f fa-3x text-primary--"></i>
									<div class="ms-4">
										<h5 class="mb-1">FACEBOOK@YOUDOG</h5>
										<p class="mb-0">Lorem Ipsum is simply dummy text of the
											printing and typesetting industry.</p>
									</div>
								</div>
								<div class="d-flex align-items-center my-4 mb-5">
									<i class=" fab fa-github fa-3x text-primary--"></i>
									<div class="ms-4">
										<h5 class="mb-1">youdog@github.com</h5>
										<p class="mb-0">Lorem Ipsum is simply dummy text of the
											printing and typesetting industry.</p>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="h-10">
									<img src="/youdog/resources/assets/img/logo.png"
										class="img-fluid my-2" alt=""> 
									<img
										src="/youdog/resources/assets/img/logo2.png"
										class="img-fluid my-2" alt=""> 
									<img
										src="/youdog/resources/assets/img/logo3.png"
										class="img-fluid my-2" alt="">
								</div>

							</div>
						</div>
						<p class="my-4">Lorem Ipsum is simply dummy text of the
							printing and typesetting industry. Lorem Ipsum has been the
							industry's standard dummy text ever since the 1500s,</p>
						<p class="mb-4">Lorem Ipsum is simply dummy text of the
							printing and typesetting industry. Lorem Ipsum has been the
							industry's standard dummy text ever since the 1500s, when an
							unknown printer took a galley of type and scrambled it to make a
							type specimen book.</p>
					</div>
					<a href="#"
						class="btn btn-primary-- btn-primary-outline-0 rounded-pill py-3 px-5">Explore
						More</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal Video -->
	<div class="modal fade" id="videoModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content rounded-0">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Youtube Video</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<!-- 16:9 aspect ratio -->
					<div class="ratio ratio-16x9">
						<iframe class="embed-responsive-item" src="" id="video"
							allowfullscreen allowscriptaccess="always" allow="autoplay"></iframe>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- About End -->

	<!-- footer start -->
	<jsp:include page="footer.jsp" />
	<!-- footer End -->

	<!-- bottomsetting start -->
	<jsp:include page="bottomsetting.jsp" />
	<!-- bottomsetting End -->
