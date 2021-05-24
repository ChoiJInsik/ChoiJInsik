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


<script>
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"
	crossorigin="anonymous"></script>

<script>
$(document).ready(function(){
    $(function () {
    
var scrollHeight = $(document).height();
        $('#homedown').click(function () {
            $('body,html').animate({
                scrollTop: scrollHeight
            }, 800);
            return false;
        });
    });
  
});
</script>


</head>
<body>
	<div class="bg-dark">
		<div class="container ml-auto">
			<header class="header bg-dark" style="width: 100%;">
				<ul class="row list-unstyled justify-content-end mb-0">
					<c:if test="${session_MEM_ID == null }">
						<li><a class="list-link"
							href="${contextPath}/pet/member/login.dog" class="log"><small
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
						<li style="color: white;">${session_MEM_ID}&nbsp;님</li>&nbsp;&nbsp;
							<c:if test="${session_MEM_ID == 'admin' }">
								<li><a href="/yook/admin.do">관리자페이지</a></li>
							</c:if>
							
						<li><a class="list-link"
							href="${contextPath}/yook/delivery.do" class="log"><small
								class="text-muted mr-2">배송정보</small></a></li>
						<li><a class="list-link" href="${contextPath}/yook/logout.do"><small
								class="text-muted mr-2">로그아웃</small></a></li>
						<li><a class="list-link"
							href="${contextPath}/yook/openMyInfoForm.do"><small
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
				<li class="nav-item active"><a class="nav-link" href="${contextPath}/yook/eventList.do">이벤트</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="${contextPath}/yook/noticeList.do">공지사항</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="#homedown" id="homedown">고객센터</a>
				</li>
				<c:if test="${session_MEM_ID != null }">
				<li class="nav-item active"><a class="nav-link" href="${contextPath}/yook/basketList.do"><i
						class="fas fa-shopping-cart fa-lg" style="color:white;"></i>장바구니&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				</c:if>
				
				<li class="dropdown">
					<div class="dropdown">
						<a class="btn btn-secondary dropdown-toggle" href="#"
							role="button" id="dropdownMenuLink" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> <i
							class="fas fa-bars fa-2x"></i>
						</a>
						<div class="dropdown-menu dropdown-menu-right ml-10"
							aria-labelledby="dropdownMenuLink" style="width: 700px;">
							
							<i class="fas fa-times-circle fa-2x" style="float: right;"></i>
							
							<a class="dropdown-item mt-1" href="${contextPath}/yook/GoodsListCow.do"><img
								src="/yook/img/cow.png" class="ing"> 소고기</a>
							<a class="dropdown-item" href="${contextPath}/yook/GoodsListPig.do"><img src="/yook/img/pig.png"
								class="ing"> 돼지고기</a>
							<a class="dropdown-item mb-5" href="${contextPath}/yook/GoodsListChicken.do"><img
								src="/yook/img/chicken.png" class="ing"> 닭고기</a>

							<hr size="30px">
			<!-- ------------------------------------------------------------------------------------- -->

							<div>
								<div style="width: 50%; float: left;">
									<div style="width: 30%; float: left; margin-left: 15%;">
										<h4>고객센터</h4>
									</div>
									<div class="row" style="width: 50%; float: right;">
										<ul class="list-unstyled">
											<li><a href="${contextPath}/yook/eventList.do" style="text-decoration: none; color:gray;">이벤트</a></li>
											<li><a href="${contextPath}/yook/noticeList.do" style="text-decoration: none; color:gray;">공지사항</a></li>
											<li><a href="${contextPath}/yook/faq.do" style="text-decoration: none; color:gray;">자주묻는 질문</a></li>
										</ul>
									</div>
								</div>

								<div style="width: 50%; float: right;">
									<div style="width: 50%; float: left;">
										<div style="height: 50%; float: top; margin-left: 10%;">
											<h4>배송정보</h4>
										</div>
										
									</div>

									<div style="width: 50%; float: right;">
										<div style="height: 50%; float: top; margin-bottom:10%;">
											<a href="${contextPath}/yook/delivery.do" style="text-decoration: none; color:gray;">배송정보</a>
										</div>
										
										
									</div>
								</div>

							
							</div>

						</div>
					</div> <a class="nav-link" href="#"></a>
				</li>
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
		
		
	<script 
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script 
		src="<c:url value='/js/common.js'/>" 
		charset="utf-8"></script>	
</body>
</html>