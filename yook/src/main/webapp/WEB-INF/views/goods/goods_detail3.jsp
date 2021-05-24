<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!doctype html>

<html lang="ko">

<head>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>


<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<title>내정보</title>
</head>
<body>

	<section class="jumbotron text-center bg-white">


		<br> <br> <br>
		<div class="container">

			<br>
			<!-- Nav tabs -->
			<ul class="nav  justify-content-center nav-tabs nav-pills"
				role="tablist">
				<li class="nav-item"><a class="nav-link active"
					data-toggle="tab" href="#home">상품상세</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#menu1">리뷰</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#menu2">상품정보</a></li>
			</ul>


			<!-------------(탭내용) 주문내역내역 폼----------------------------------------------->
			<div class="tab-content">
				<div id="home" class="container  tab-pane active">
					<br>
					<!--(탭내용) 주문내역 폼-->
					<h3>상품상세</h3>


					<img data-v-1e3e4a18=""
						src="https://firebasestorage.googleapis.com/v0/b/jyg-custom-seoul-app/o/frontend%2Fdescriptions%2Fweb%2Fporkbelly-fresh2.png?alt=media"
						width="100%">




				</div>
				<!-------------(탭내용) 포인트내역 폼----------------------------------------------->
				<div id="menu1" class="container tab-pane ">
					<br>
					<h3>리뷰</h3>

					<table class="board_view" style="text-align: center;">
						<colgroup>
							<col width="15%">
							<col width="*" />
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">${list1.RE_TITLE}</th>
							</tr>
							<tr>
								<td class="view_text" scope="col"><textarea rows="20"
										cols="100" title="내용" id="CONTENTS" name="CONTENTS"
										style="display: inline-block;">${list1.RE_CONTENT}</textarea></td>
							</tr>
							<tr>
								<th scope="row">${list1.RE_DATE}</th>
							</tr>
						</tbody>
					</table>

				</div>

				<!-------------(탭내용) 회원정보수정 폼----------------------------------------------->
				<div id="menu2" class="container tab-pane">
					<br>
					<h3>상품정보</h3>



					<h5 class="card-title">상품종류</h5>
					<p class="card-text">
						이상품은 돼지고기로써 허브를 먹여 돼지고기의 질을 늘리는방식을 사용했습니다.<br /> 그리고 주문이 들어오면
						해체작업을 하여 신선한 고기로 납품해드리고있습니다.
					</p>

				</div>


				<!-- Optional JavaScript; choose one of the two! -->

				<!-- Option 1: Bootstrap Bundle with Popper -->
				<script
					src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
					integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
					crossorigin="anonymous"></script>
</body>
</html>