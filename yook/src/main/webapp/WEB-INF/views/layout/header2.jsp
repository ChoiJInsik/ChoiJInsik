<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"
	crossorigin="anonymous"></script>

</head>
<body>
	<div class="bg-dark">
		<div class="container ml-auto">
			<header class="header bg-dark" style="width: 100%;">
				<ul class="row list-unstyled justify-content-end mb-0">
					<c:if test="${session_MEM_ID == null }">
						<li><a class="list-link"
							href="${contextPath}/yook/member/login.dog" class="log"><small
								class="text-muted mr-2">배송정보</small></a></li>
						<li><a class="list-link"
							href="${contextPath}/yook/LoginForm.do"><small
								class="text-muted mr-2">로그인</small></a></li>
						<li><a class="list-link" href="${contextPath}/yook/join.do"><small
								class="text-muted mr-2">회원가입</small></a></li>
						<li><a class="list-link" href="${contextPath}/yook/LoginForm.do"><small
								class="text-muted mr-2">마이페이지</small></a></li>
					</c:if>

					<c:if test="${session_MEM_ID != null }">
						<li>${session_MEM_ID}&nbsp;님</li>&nbsp;&nbsp;
							<c:if test="${session_MEM_ID == 'admin' }">
								<li><a href="/yook/admin.do">관리자페이지</a></li>
							</c:if>
							
						<li><a class="list-link"
							href="${contextPath}/yook/openMyOrderList.do" class="log"><small
								class="text-muted mr-2">배송정보</small></a></li>
						<li><a class="list-link" href="${contextPath}/yook/logout.do"><small
								class="text-muted mr-2">로그아웃</small></a></li>
						<li><a class="list-link"
							href="${contextPath}/yook/LoginForm.do"><small
								class="text-muted mr-2">마이페이지</small></a></li>
					</c:if>
				</ul>
			</header>
		</div>
	</div>
	<!-- nav bar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"
		style="width: 100%;">
		<a class="navbar-brand" href="/yook/main.do" title="식육증가"><img
			src="img/logo.png" alt="식육증가" style="width: 60px;" /></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>


		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto" style="font-size: large;">
				<li class="nav-item active"><a class="nav-link" href="${contextPath}/yook/GoodsListAll.do">쇼핑하기</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="${contextPath}/yook/adminEventList.do">이벤트</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="#">공지사항</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="#">고객센터</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="${contextPath}/yook/basketList.do"><i
						class="fas fa-shopping-cart fa-lg"></i></a></li>
				<li class="nav-item active"><a class="nav-link" href="#"><i
						class="fas fa-bars fa-2x"></i></a></li>
			</ul>
		</div>
	</nav>

	<!-- 헤드 레이아웃 include -->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>