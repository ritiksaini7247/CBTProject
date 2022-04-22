<%@page import="com.model.CBTQuestions"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Quizo HTML Template - V.6</title>
<!-- FontAwesome-cdn include -->
<link rel="stylesheet"
	href="../../../../../cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<!-- Google fonts include -->
<link
	href="https://fonts.googleapis.com/css2?family=Jost:wght@400;500;600;700;800;900&amp;family=Poppins:wght@700;800&amp;display=swap"
	rel="stylesheet">
<!-- Bootstrap-css include -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<!-- Animate-css include -->
<link rel="stylesheet" href="assets/css/animate.min.css">
<!-- Main-StyleSheet include -->
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
	<div class="wrapper overflow-hidden" style="background: #65c3c3;">
		<!-- Top content -->
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-6"></div>
				<div class="col-sm-6 d-none d-sm-block">
					<div class="count_box d-flex float-end pt-5 pe-5">
						<!-- <div
							class="count_clock countdown_timer d-flex align-items-center pe-5 me-3"
							data-countdown="2022/10/24"></div> -->
						<!-- <div id="countdown"></div> -->
						<!-- Step Progress bar -->
						<div class="count_progress clip-1">
							<span class="progress-left"> <span class="progress_bar"></span>
							</span> <span class="progress-right"> <span class="progress_bar"></span>
							</span>
							<div class="progress-value">
								<div id="value">100%</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<form class="bg-white position-relative overflow-hidden"
				style="padding: 40px" method="get"
				action="/InterviewProject/handler">
				<!------------------------- Step-1 ----------------------------->
				<jsp:useBean id="questionDao" class="com.dao.CBTQuestionDao"></jsp:useBean>
				<h2 class="question_title text-center"
					style="color: black; color: black; font-size: 25px; font-family: cursive; margin-top: 9px;">Reasoning
					Questions</h2>
				<%
				int j = 1;
				ArrayList<CBTQuestions> shuffleQuestions = questionDao.getReasoningShuffeledQuestions();
				for (int i = 0; i < shuffleQuestions.size(); i++) {
				%>
				<div class="question_number text-center text-uppercase text-white"
					style="margin-top: 2%;">
					<span class="rounded-pill"
						style="background: -webkit-gradient(linear, left top, right top, from(#2ff5ff), to(#19f05b)); background: linear-gradient(to right, #2ff5ff, #19f05b);">Question
						1 to <%=(i + 1)%></span>
				</div>
				<div class="question_title text-center text-uppercase">
					<input type="hidden"
						value="<%=shuffleQuestions.get(i).getQuestionid()%>"
						name="question_id_<%=i%>">
					<h1 class="animate__animated animate__fadeInRight animate_25ms"><%=shuffleQuestions.get(i).getQuestion()%></h1>
				</div>

				<div class="row form_items">
					<div class="col-6">
						<ul class="list-unstyled p-0">
							<li class="animate__animated animate__fadeInRight animate_50ms">
								<input id="opt_<%=j%>" type="radio"
								value="<%=shuffleQuestions.get(i).getOption1()%>"
								name="stp_<%=i%>_select_option"> <label for="opt_<%=j%>"><%=shuffleQuestions.get(i).getOption1()%></label>
							</li>
						</ul>
					</div>
					<div class="col-6">
						<ul class="list-unstyled p-0">
							<li class="animate__animated animate__fadeInRight animate_100ms">
								<input id="opt_<%=(j + 1)%>" type="radio"
								value="<%=shuffleQuestions.get(i).getOption2()%>"
								name="stp_<%=i%>_select_option"> <label
								for="opt_<%=(j + 1)%>"><%=shuffleQuestions.get(i).getOption2()%></label>
							</li>
						</ul>
					</div>
					<div class="col-6">
						<ul class="list-unstyled p-0">
							<li class=" animate__animated animate__fadeInRight animate_150ms">
								<input id="opt_<%=(j + 2)%>" type="radio"
								value="<%=shuffleQuestions.get(i).getOption3()%>"
								name="stp_<%=i%>_select_option"> <label
								for="opt_<%=(j + 2)%>"><%=shuffleQuestions.get(i).getOption3()%></label>
							</li>
						</ul>
					</div>
					<div class="col-6">
						<ul class="list-unstyled p-0">
							<li class=" animate__animated animate__fadeInRight animate_200ms">
								<input id="opt_<%=(j + 3)%>" type="radio"
								value="<%=shuffleQuestions.get(i).getOption4()%>"
								name="stp_<%=i%>_select_option"> <label
								for="opt_<%=(j + 3)%>"><%=shuffleQuestions.get(i).getOption4()%></label>
							</li>
						</ul>
					</div>
					<%
					j += 4;
					%>
				</div>
				<%
				}
				%>
				<!-- ----------------------Programming Questions---------------------- -->

				<h2 class="question_title text-center"
					style="color: black; color: black; font-size: 25px; font-family: cursive;">Programming
					Questions</h2>
				<%
				int j2 = 1;
				ArrayList<CBTQuestions> shuffleQuestions2 = questionDao.getProgrammingShuffeledQuestions();
				for (int i = 0; i < shuffleQuestions.size(); i++) {
				%>
				<div class="question_number text-center text-uppercase text-white"
					style="margin-top: 2%;">
					<span class="rounded-pill"
						style="background: -webkit-gradient(linear, left top, right top, from(#2ff5ff), to(#19f05b)); background: linear-gradient(to right, #2ff5ff, #19f05b);">Question
						1 to <%=(i + 1)%></span>
				</div>
				<div class="question_title text-center text-uppercase">
					<input type="hidden"
						value="<%=shuffleQuestions2.get(i).getQuestionid()%>"
						name="question_id_<%=i%>">
					<h1 class="animate__animated animate__fadeInRight animate_25ms"><%=shuffleQuestions2.get(i).getQuestion()%></h1>
				</div>

				<div class="row form_items">
					<div class="col-6">
						<ul class="list-unstyled p-0">
							<li class="animate__animated animate__fadeInRight animate_50ms">
								<input id="opt_<%=j2%>" type="radio"
								value="<%=shuffleQuestions2.get(i).getOption1()%>"
								name="stp_<%=i%>_select_option"> <label
								for="opt_<%=j2%>"><%=shuffleQuestions2.get(i).getOption1()%></label>
							</li>
						</ul>
					</div>
					<div class="col-6">
						<ul class="list-unstyled p-0">
							<li class="animate__animated animate__fadeInRight animate_100ms">
								<input id="opt_<%=(j2 + 1)%>" type="radio"
								value="<%=shuffleQuestions2.get(i).getOption2()%>"
								name="stp_<%=i%>_select_option"> <label
								for="opt_<%=(j2 + 1)%>"><%=shuffleQuestions2.get(i).getOption2()%></label>
							</li>
						</ul>
					</div>
					<div class="col-6">
						<ul class="list-unstyled p-0">
							<li class=" animate__animated animate__fadeInRight animate_150ms">
								<input id="opt_<%=(j2 + 2)%>" type="radio"
								value="<%=shuffleQuestions2.get(i).getOption3()%>"
								name="stp_<%=i%>_select_option"> <label
								for="opt_<%=(j2 + 2)%>"><%=shuffleQuestions2.get(i).getOption3()%></label>
							</li>
						</ul>
					</div>
					<div class="col-6">
						<ul class="list-unstyled p-0">
							<li class=" animate__animated animate__fadeInRight animate_200ms">
								<input id="opt_<%=(j2 + 3)%>" type="radio"
								value="<%=shuffleQuestions2.get(i).getOption4()%>"
								name="stp_<%=i%>_select_option"> <label
								for="opt_<%=(j2 + 3)%>"><%=shuffleQuestions2.get(i).getOption4()%></label>
							</li>
						</ul>
					</div>
					<hr>
					<%
					j2 += 4;
					%>
				</div>
				<%
				}
				%>
				<!-- ------------------------Pseudocode Questions-------------------- -->

				<h2 class="question_title text-center"
					style="color: black; color: black; font-size: 25px; font-family: cursive;">Pseudocode
					Questions</h2>
				<%
				int j3 = 1;
				ArrayList<CBTQuestions> shuffleQuestions3 = questionDao.getPseudocodeShuffeledQuestions();
				for (int i = 0; i < shuffleQuestions3.size(); i++) {
				%>
				<div class="question_number text-center text-uppercase text-white"
					style="margin-top: 2%;">
					<span class="rounded-pill"
						style="background: -webkit-gradient(linear, left top, right top, from(#2ff5ff), to(#19f05b)); background: linear-gradient(to right, #2ff5ff, #19f05b);">Question
						1 to <%=(i + 1)%></span>
				</div>
				<div class="question_title text-center text-uppercase">
					<input type="hidden"
						value="<%=shuffleQuestions3.get(i).getQuestionid()%>"
						name="question_id_<%=i%>">
					<h1 class="animate__animated animate__fadeInRight animate_25ms"><%=shuffleQuestions3.get(i).getQuestion()%></h1>
				</div>

				<div class="row form_items">
					<div class="col-6">
						<ul class="list-unstyled p-0">
							<li class="animate__animated animate__fadeInRight animate_50ms">
								<input id="opt_<%=j3%>" type="radio"
								value="<%=shuffleQuestions3.get(i).getOption1()%>"
								name="stp_<%=i%>_select_option"> <label
								for="opt_<%=j3%>"><%=shuffleQuestions3.get(i).getOption1()%></label>
							</li>
						</ul>
					</div>
					<div class="col-6">
						<ul class="list-unstyled p-0">
							<li class="animate__animated animate__fadeInRight animate_100ms">
								<input id="opt_<%=(j3 + 1)%>" type="radio"
								value="<%=shuffleQuestions3.get(i).getOption2()%>"
								name="stp_<%=i%>_select_option"> <label
								for="opt_<%=(j3 + 1)%>"><%=shuffleQuestions3.get(i).getOption2()%></label>
							</li>
						</ul>
					</div>
					<div class="col-6">
						<ul class="list-unstyled p-0">
							<li class=" animate__animated animate__fadeInRight animate_150ms">
								<input id="opt_<%=(j3 + 2)%>" type="radio"
								value="<%=shuffleQuestions3.get(i).getOption3()%>"
								name="stp_<%=i%>_select_option"> <label
								for="opt_<%=(j3 + 2)%>"><%=shuffleQuestions3.get(i).getOption3()%></label>
							</li>
						</ul>
					</div>
					<div class="col-6">
						<ul class="list-unstyled p-0">
							<li class=" animate__animated animate__fadeInRight animate_200ms">
								<input id="opt_<%=(j3 + 3)%>" type="radio"
								value="<%=shuffleQuestions3.get(i).getOption4()%>"
								name="stp_<%=i%>_select_option"> <label
								for="opt_<%=(j3 + 3)%>"><%=shuffleQuestions3.get(i).getOption4()%></label>
							</li>
						</ul>
					</div>
					<hr>
					<%
					j3 += 4;
					%>
				</div>
				<%
				}
				%>

				<!-- ------------------------------------------- -->
				<h2 class="question_title text-center"
					style="color: black; color: black; font-size: 25px; font-family: cursive; margin-top: 9px;">Aptitude
					Questions</h2>
				<%
				/* int j = 1; */
				/* ArrayList<CBTQuestions> shuffleQuestions = questionDao.getShuffeledQuestions(); */
				for (int i = 0; i < 15; i++) {
					int k = 1;
				%>
				<div class="question_number text-center text-uppercase text-white"
					style="margin-top: 2%">
					<span class="rounded-pill">Question 1 to <%=(i + 1)%></span>
				</div>
				<div class="question_title text-center text-uppercase">
					<img class="animate__animated animate__fadeInRight animate_25ms"
						alt="" src="AptitudeImg/AptQ<%=(i + 1)%>.png"
						style="margin-top: 2%">
				</div>

				<div class="row pt-5 mt-4 form_items">
					<div class="col-6">
						<ul class="list-unstyled p-0">
							<li class="animate__animated animate__fadeInRight animate_50ms">
								<input id="opt_<%=j%>" type="radio" value=""
								name="stp_<%=i%>_select_option"> <img alt=""
								src="AptitudeImg/AptQ<%=(i + 1)%>Op<%=k%>.png"
								style="margin-top: 2%">
							</li>
						</ul>
					</div>
					<div class="col-6">
						<ul class="list-unstyled p-0">
							<li class="animate__animated animate__fadeInRight animate_100ms">
								<input id="opt_<%=(j + 1)%>" type="radio" value=""
								name="stp_<%=i%>_select_option"> <img alt=""
								src="AptitudeImg/AptQ<%=(i + 1)%>Op<%=(k + 1)%>.png"
								style="margin-top: 2%">
							</li>
						</ul>
					</div>
					<div class="col-6">
						<ul class="list-unstyled p-0">
							<li class=" animate__animated animate__fadeInRight animate_150ms">
								<input id="opt_<%=(j + 2)%>" type="radio" value=""
								name="stp_<%=i%>_select_option"> <img alt=""
								src="AptitudeImg/AptQ<%=(i + 1)%>Op<%=(k + 2)%>.png"
								style="margin-top: 2%">
							</li>
						</ul>
					</div>
					<div class="col-6">
						<ul class="list-unstyled p-0">
							<li class=" animate__animated animate__fadeInRight animate_200ms">
								<input id="opt_<%=(j + 3)%>" type="radio" value=""
								name="stp_<%=i%>_select_option"><img alt=""
								src="AptitudeImg/AptQ<%=(i + 1)%>Op<%=(k + 3)%>.png"
								style="margin-left: 2%">
							</li>
						</ul>
					</div>
					<hr>
					<%
					j += 4;
					%>
				</div>
				<%
				}
				%>

				<div class="form_btn">

					<button type="submit"
						class="next_btn rounded-pill position-absolute text-uppercase text-white"
						id="nextBtn">SUBMIT</button>


				</div>

			</form>
		</div>
	</div>
	<!-- jQuery-js include -->
	<script src="assets/js/jquery-3.6.0.min.js"></script>
	<!-- Bootstrap-js include -->
	<script src="assets/js/bootstrap.min.js"></script>
	<!-- jQuery-counter-up-js include -->
	<script src="assets/js/countdown.js"></script>
	<!-- jQuery-validate-js include -->
	<script src="assets/js/jquery.validate.min.js"></script>
	<!-- Custom-js include -->
	<script src="assets/js/script.js"></script>
</body>

</html>