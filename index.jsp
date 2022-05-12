<%@page import="com.messages.Message"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Index</title>
<meta content="" name="description">

<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- Vendor CSS Files -->
<link href="assets/vendor/aos/aos.css" rel="stylesheet">
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: FlexStart - v1.9.0
  * Template URL: https://bootstrapmade.com/flexstart-bootstrap-startup-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>



	<!-- ======= Header ======= -->
	<header id="header" class="header fixed-top">
		<div
			class="container-fluid container-xl d-flex align-items-center justify-content-between">

			<a href="index.html" class="logo d-flex align-items-center"><img
				src="assets/img/logo.png" alt="">
			</a>
			<nav id="navbar" class="navbar">
				<ul>
					<li><a class="nav-link scrollto active" style="color: #0094a4"
						href="#hero">Home</a></li>
					<li><a class="nav-link scrollto" style="color: #0094a4"
						href="#about">About</a></li>
					<li><a class="nav-link scrollto" style="color: #0094a4"
						href="#contact">Register</a></li>
					<li><a class="nav-link scrollto" style="color: #0094a4"
						href="#login">Login</a></li>
					<li><a class="getstarted scrollto"
						style="background-color: #0094a4" href="#login">Give Test</a></li>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
			<!-- .navbar -->
		</div>

		<%
		Message m = (Message) session.getAttribute("msg");
		if (m != null) {
		%>
		<div class="alert <%=m.getCssClass()%>" style="margin: 2%"
			role="alert">
			<%=m.getContent()%>
		</div>
		<%
		session.removeAttribute("msg");
		}
		%>

	</header>
	<!-- End Header -->

	<!-- ======= Hero Section ======= -->
	<section id="hero" class="hero d-flex align-items-center">

		<div class="container">
			<div class="row">
				<div class="col-lg-6 d-flex flex-column justify-content-center">
					<h1 data-aos="fade-up">Internship with Chetu</h1>
					<h2 data-aos="fade-up" data-aos-delay="400">Allow your
						learning outside the class.</h2>
					<h2 data-aos="fade-up" data-aos-delay="400">Start & build your
						carrer with chetu</h2>
					<div data-aos="fade-up" data-aos-delay="600">
						<div class="text-center text-lg-start">
							<a href="#login"
								class="btn-get-started scrollto d-inline-flex align-items-center justify-content-center align-self-center"
								style="background-color: #0094a4"> <span>Give Test</span> <i
								class="bi bi-arrow-right"></i>
							</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6 hero-img" data-aos="zoom-out"
					data-aos-delay="200">
					<img src="assets/img/hero-img.png" class="img-fluid" alt="">
				</div>
			</div>
		</div>

	</section>
	<!-- End Hero -->

	<!-- ======= Login Section ======= -->
	<section id="login" class="contact">

		<div class="container" data-aos="fade-up">

			<header class="section-header">
				<h2>Login with your account</h2>
				<p>Login</p>
			</header>

			<div class="row gy-4">

				<div class="col-lg-6">

					<div class="row gy-4">

						<div class="col-md-6">
							<div class="info-box">
								<i class="bi bi-telephone"></i>
								<h3>Call Us</h3>
								<p>
									+1 5589 55488 55<br>+1 6678 254445 41
								</p>
							</div>
						</div>
						<div class="col-md-6">
							<div class="info-box">
								<i class="bi bi-envelope"></i>
								<h3>Email Us</h3>
								<p>
									contact@example.com<br>contact@example.com
								</p>
							</div>
						</div>

					</div>

				</div>

				<div class="col-lg-6">

					<form action="login" id="login-form" method="post"
						class="email-form">
						<div class="row gy-4">
							<div class="col-md-12 ">
								<input type="email" class="form-control" name="email"
									placeholder="Your Email" required>
							</div>

							<div class="col-md-12 ">
								<input type="password" class="form-control" name="password"
									placeholder="Your Password" required>
							</div>

							<div class="text-center" id="lloader" style="display: none;">
								<span> <i class="fa fa-refresh fa-spin fa-3x"
									style="font-size: 24px"></i>
								</span>
								<h4>Please wait..</h4>
							</div>
							<div class="col-md-12 text-center">
								<button class="myButtons" type="submit" id="login-submit-btn"
									style="background-color: #0094a4">Login</button>
							</div>

						</div>
					</form>

				</div>

			</div>

		</div>

	</section>
	<!-- End Login Section -->


	<main id="main">
		<!-- ======= About Section ======= -->
		<section id="about" class="about">

			<header class="section-header">
				<p>About Us</p>
			</header>

			<div class="container" data-aos="fade-up">
				<div class="row gx-0">

					<div class="col-lg-6 d-flex flex-column justify-content-center"
						data-aos="fade-up" data-aos-delay="200">
						<div class="content">
							<h3>Who We Are</h3>
							<h2>Expedita voluptas omnis cupiditate totam eveniet nobis
								sint iste. Dolores est repellat corrupti reprehenderit.</h2>
							<p>Quisquam vel ut sint cum eos hic dolores aperiam. Sed
								deserunt et. Inventore et et dolor consequatur itaque ut
								voluptate sed et. Magnam nam ipsum tenetur suscipit voluptatum
								nam et est corrupti.</p>
							<div class="text-center text-lg-start">
								<a href="#"
									class="btn-read-more d-inline-flex align-items-center justify-content-center align-self-center"
									style="background-color: #0094a4"> <span>Read More</span> <i
									class="bi bi-arrow-right"></i>
								</a>
							</div>
						</div>
					</div>

					<div class="col-lg-6 d-flex align-items-center" data-aos="zoom-out"
						data-aos-delay="200">
						<img src="assets/img/about.jpg" class="img-fluid" alt="">
					</div>

				</div>
			</div>

		</section>
		<!-- End About Section -->


		<!-- ======= Register Section ======= -->
		<section id="contact" class="contact">

			<div class="container" data-aos="fade-up">

				<header class="section-header">
					<h2>Register for Training</h2>
					<p>Register</p>
				</header>

				<div class="row gy-4">

					<div class="col-lg-6">

						<div class="row gy-4">
							<div class="col-md-6">
								<div class="info-box">
									<i class="bi bi-geo-alt"></i>
									<h3>Address</h3>
									<p>
										A108 Adam Street,<br>New York, NY 535022
									</p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="info-box">
									<i class="bi bi-telephone"></i>
									<h3>Call Us</h3>
									<p>
										+1 5589 55488 55<br>+1 6678 254445 41
									</p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="info-box">
									<i class="bi bi-envelope"></i>
									<h3>Email Us</h3>
									<p>
										contact@example.com<br>contact@example.com
									</p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="info-box">
									<i class="bi bi-clock"></i>
									<h3>Open Hours</h3>
									<p>
										Monday - Saturday<br>2:00PM - 11:00PM
									</p>
								</div>
							</div>
						</div>

					</div>

					<div class="col-lg-6">
						<form id="reg-form" method="post" class="email-form"
							action="register">
							<div class="row gy-4">

								<h4 style="font-weight: bold; margin-bottom: -4%">Personal
									Details..</h4>
								<hr style="margin-bottom: -2%;">
								<div class="col-md-6">
									<small style="font-weight: bold;">Your Name</small> <input
										type="text" name="traineeName" class="form-control"
										placeholder="Your Name" required>
								</div>
								<div class="col-md-6">
									<small style="font-weight: bold;">Your Email Address</small> <input
										type="email" class="form-control" name="traineeEmail"
										placeholder="Your Email" required>
								</div>
								<div class="col-md-6">
									<small style="font-weight: bold;">Your Password</small> <input
										type="password" class="form-control" name="traineePassword"
										placeholder="Your Password" required>
								</div>
								<div class="col-md-6">
									<small style="font-weight: bold;">Your Contact No.</small> <input
										type="number" class="form-control" name="traineeContactNumber"
										placeholder="Your Contact No." required>
								</div>

								<h4 style="font-weight: bold; margin-bottom: -4%">Campus &
									Technology Details..</h4>
								<hr style="margin-bottom: -2%;">
								<div class="col-md-6">
									<small style="font-weight: bold;">Select Technology for
										Training</small> <select required="required" class="form-control"
										name="traineeTechnologyName">
										<option value="">Select Technology</option>
										<option value="tech 1">Technology 1</option>
										<option value="tech 2">Technology 2</option>
										<option value="tech 3">Technology 3</option>
										<option value="tech 4">Technology 4</option>
										<option value="tech 5">Technology 5</option>
										<option value="tech 6">Technology 6</option>
										<option value="tech 7">Technology 7</option>
									</select>
								</div>
								<div class="col-md-6">
									<small style="font-weight: bold;">University Name</small> <input
										type="text" class="form-control" name="traineeUniversityName"
										placeholder="College University Name" required>
								</div>
								<div class="col-md-6">
									<small style="font-weight: bold;">Your College Name</small> <input
										type="text" class="form-control" name="traineeCollegeName"
										placeholder="Your College Name" required>
								</div>
								<div class="col-md-6">
									<small style="font-weight: bold;">Visited College Name</small>
									<input type="text" class="form-control"
										name="traineeVisitedCollegeName"
										placeholder="Visited College Name" required>
								</div>
								<div class="col-md-6">
									<small style="font-weight: bold;">Your College Roll No.</small>
									<input type="text" class="form-control"
										name="traineeCollegeRollNo" placeholder="Your Roll No."
										required>
								</div>
								<div class="col-md-6 ">
									<small style="font-weight: bold;">Enter Your 10th
										Percentage</small> <input type="number" min="0" max="100" value="%"
										class="form-control" name="trainee10thPercentage"
										placeholder="Your 10th Percentage" required>
								</div>
								<div class="col-md-6 ">
									<small style="font-weight: bold;">Enter Your 12th
										Percentage</small> <input type="number" min="0" max="100" value="%"
										class="form-control" name="trainee12thPercentage"
										placeholder="Your 12th Percentage" required>
								</div>
								<div class="col-md-6 ">
									<small style="font-weight: bold;">Enter Your U.G.
										Percentage</small> <input type="number" min="0" max="100" value="%"
										class="form-control" name="traineeUGPercentage"
										placeholder="Your U.G. Percentage" required>
								</div>
								<div class="col-md-12">
									<small style="font-weight: bold;">Select HR </small> <select
										required="required" class="form-control" name="traineeHRName">
										<option value="">Select HR, through which you are
											giving the test</option>
										<option value="sir">Sir</option>
										<option value="maim">Maim</option>
									</select>
								</div>
								<div class="col-md-12 ">
									<small style="font-weight: bold;">Select Your 10th and
										12th documents..</small><input type="file" name="traineeDocuments"
										multiple="multiple" class="form-control">
								</div>
								<div class="text-center" id="loader" style="display: none;">
									<span> <i class="fa fa-refresh fa-spin fa-3x"
										style="font-size: 24px"></i>
									</span>
									<h4>Please wait..</h4>
								</div>
								<div class="col-md-12 text-center">

									<button class="myButtons" id="submit-btn" type="submit"
										style="background-color: #0094a4">Register</button>
								</div>

							</div>
						</form>

					</div>

				</div>

			</div>

		</section>
		<!-- End Register Section -->

	</main>
	<!-- End #main -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/purecounter/purecounter.js"></script>
	<script src="assets/vendor/aos/aos.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"
		integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>


	<!-- Register form page script -->
	<script>
		$(document).ready(function() {
			console.log("Register loaded........")
			$('#reg-form').on('submit', function(event) {
				event.preventDefault();
				let form = new FormData(this);

				$("#submit-btn").hide();
				$("#loader").show();

				//Send register servlet
				$.ajax({
					url : "register",
					type : 'POST',
					data : form,
					success : function(data, textStatus, jqXHR) {
						console.log(data)
						$("#submit-btn").show();
						$("#loader").hide();
						if (data.trim() === 'exists') {
							swal({
								title : "Sorry!",
								text : "Sorry user already exists..",
								icon : "warning",
								button : "Ohh Noo",
							});
						} else {
							swal({
								title : "Welcome",
								text : "User save successfully..",
								icon : "success",
								button : "Ohh Yess",
							})
							.then((value) => {
								window.location = "userDashboard.jsp"
							});
						}
					},
					error : function(jqXHR, textStatus, errorThrown) {
						$("#submit-btn").show();
						$("#loader").hide();
						swal({
							title : "Sorry!",
							text : "Sorry Something went wrong..",
							icon : "warning",
							button : "Ohh Noo",
						});
					},
					processData : false,
					contentType : false
				});
			});
		});
	</script>


</body>

</html>
