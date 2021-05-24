<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	
<!doctype html>

<html lang="ko">

  <head>
  <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
  	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"> 

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script> 

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 
  
  
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<title>내정보</title>
</head>
<body>

<section class="jumbotron text-center bg-white">

	<h1 style="margin: 100px; color: black; text-align: center;">마이페이지</h1>

	<div style="margin-bottom:150px;">
		<section data-v-4e5d839d="" class="mypage__userinfo-box">

			<div data-v-4e5d839d="" class="mypage-userinfo__data">
				<div data-v-4e5d839d="" class="mypage-userinfo__data-top"
					style="text-align: center;" >
					<div style="margin-left:450px; ">
					<p data-v-4e5d839d="" class="mypage-userinfo__name"
						style="display: inline-block; font-size:24px; font:bold;">Hello, ${session_MEM_ID}님 &nbsp;&nbsp;</p>
					
						<a href="${contextPath}/yook/logout.do" style="color:gray; font-size:14px;">[로그아웃]</a>
					
					</div>
					<ul style="margin-right:100px;">
						<li align="left" data-v-4e5d839d="" class="mypage-userinfo__data-list" style="display: inline-block;">
						<div data-v-4e5d839d="" class="mypage-userinfo__data-centered" style="float: left; width: 100%;">
							<img data-v-4e5d839d="" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMTAwLjIgMTU4LjYiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDEwMC4yIDE1OC42OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+Cgkuc3Qwe2ZpbGw6IzUxN0FGODt9Cgkuc3Qxe2ZpbGw6IzVFOTZGNTt9Cgkuc3Qye2ZpbGw6I0ZGRkZGRjt9Cjwvc3R5bGU+CjxnPgoJCgkJPHJlY3QgeD0iNTguNiIgeT0iMi45IiB0cmFuc2Zvcm09Im1hdHJpeCgwLjkyNDIgMC4zODE4IC0wLjM4MTggMC45MjQyIDIwLjExOTYgLTI1LjA1MzkpIiBjbGFzcz0ic3QwIiB3aWR0aD0iMjkuMyIgaGVpZ2h0PSI3MC41Ii8+CgkKCQk8cmVjdCB4PSIxMi40IiB5PSIyLjkiIHRyYW5zZm9ybT0ibWF0cml4KC0wLjkyNDIgMC4zODE4IC0wLjM4MTggLTAuOTI0MiA2Ni41NzE3IDYzLjEzNTUpIiBjbGFzcz0ic3QxIiB3aWR0aD0iMjkuMyIgaGVpZ2h0PSI3MC41Ii8+Cgk8Zz4KCQk8Y2lyY2xlIGNsYXNzPSJzdDEiIGN4PSI1MC4xIiBjeT0iMTExLjEiIHI9IjQ1LjMiLz4KCQk8cGF0aCBjbGFzcz0ic3QyIiBkPSJNNTAuMSwxNTguNmMtMjYuMiwwLTQ3LjUtMjEuMy00Ny41LTQ3LjVzMjEuMy00Ny41LDQ3LjUtNDcuNXM0Ny41LDIxLjMsNDcuNSw0Ny41Uzc2LjMsMTU4LjYsNTAuMSwxNTguNnoKCQkJIE01MC4xLDY4QzI2LjMsNjgsNyw4Ny4zLDcsMTExLjFzMTkuNCw0My4xLDQzLjEsNDMuMXM0My4xLTE5LjQsNDMuMS00My4xUzczLjksNjgsNTAuMSw2OHoiLz4KCTwvZz4KCTxnPgoJCTxwYXRoIGNsYXNzPSJzdDIiIGQ9Ik0yNC44LDEwNmMwLjIsMCwwLjUsMC4xLDAuNywwLjJjMC4yLDAuMSwwLjQsMC40LDAuNSwwLjdsMS45LDdsMS45LTcuMmMwLjEtMC4zLDAuMi0wLjQsMC40LTAuNQoJCQljMC4yLTAuMSwwLjQtMC4xLDAuNy0wLjFjMC4zLDAsMC40LDAuMiwwLjYsMC40YzAuMSwwLjIsMC4xLDAuNCwwLjEsMC43bC0yLjQsOC44Yy0wLjEsMC4zLTAuMiwwLjYtMC41LDAuN3MtMC40LDAuMi0wLjcsMC4yCgkJCXMtMC41LTAuMS0wLjctMC4ycy0wLjQtMC40LTAuNS0wLjdsLTEuOS03LjNsLTIsNy4zYy0wLjEsMC4zLTAuMiwwLjYtMC41LDAuN2MtMC4yLDAuMS0wLjQsMC4yLTAuNywwLjJjLTAuMiwwLTAuNS0wLjEtMC43LTAuMgoJCQlzLTAuNC0wLjQtMC41LTAuN2wtMi40LTguNmMtMC4xLTAuMy0wLjEtMC41LDAuMS0wLjdjMC4xLTAuMiwwLjMtMC4zLDAuNi0wLjRjMC4yLTAuMSwwLjUtMC4xLDAuNywwczAuNCwwLjMsMC41LDAuNmwxLjgsNy4zCgkJCWwxLjktN2MwLjEtMC4zLDAuMi0wLjYsMC41LTAuN0MyNC4zLDEwNiwyNC42LDEwNiwyNC44LDEwNnoiLz4KCQk8cGF0aCBjbGFzcz0ic3QyIiBkPSJNMzYuMSwxMDguNWMwLjUsMCwxLDAuMSwxLjUsMC4yYzAuNCwwLjIsMC44LDAuNCwxLjEsMC43YzAuMywwLjMsMC42LDAuNywwLjcsMS4xYzAuMiwwLjQsMC4zLDAuOSwwLjMsMS41djAKCQkJYzAsMC41LTAuMSwwLjgtMC4zLDFjLTAuMiwwLjItMC41LDAuMy0xLDAuM2gtNC4ydjBjMCwwLjUsMC4yLDEsMC41LDEuM2MwLjMsMC4zLDAuOCwwLjUsMS41LDAuNWMwLjQsMCwwLjgsMCwxLjEtMC4xCgkJCWMwLjMtMC4xLDAuNi0wLjIsMS0wLjNjMC4yLTAuMSwwLjQtMC4xLDAuNiwwYzAuMiwwLjEsMC4zLDAuMiwwLjQsMC40YzAuMSwwLjIsMC4xLDAuNCwwLjEsMC42YzAsMC4yLTAuMiwwLjMtMC40LDAuNAoJCQljLTAuNCwwLjItMC44LDAuMy0xLjIsMC40Yy0wLjQsMC4xLTEsMC4xLTEuNiwwLjFjLTEuMiwwLTIuMS0wLjMtMi44LTFjLTAuNy0wLjYtMS0xLjYtMS0yLjl2LTAuNGMwLTEuMywwLjMtMi4zLDEtMi45CgkJCUMzNCwxMDguOSwzNC45LDEwOC41LDM2LjEsMTA4LjV6IE0zNiwxMTAuMWMtMC42LDAtMS4xLDAuMi0xLjQsMC41Yy0wLjMsMC4zLTAuNSwwLjctMC41LDEuMnYwLjFoMy43di0wLjFjMC0wLjUtMC4xLTAuOS0wLjQtMS4yCgkJCUMzNy4xLDExMC4yLDM2LjcsMTEwLjEsMzYsMTEwLjF6Ii8+CgkJPHBhdGggY2xhc3M9InN0MiIgZD0iTTQyLjMsMTA1LjZjMC4yLDAsMC41LDAuMSwwLjcsMC4yYzAuMiwwLjEsMC4zLDAuMywwLjMsMC42djkuNWMwLDAuMy0wLjEsMC41LTAuMywwLjYKCQkJYy0wLjIsMC4xLTAuNCwwLjItMC43LDAuMmMtMC4yLDAtMC41LTAuMS0wLjctMC4yYy0wLjItMC4xLTAuMy0wLjMtMC4zLTAuNnYtOS41YzAtMC4zLDAuMS0wLjUsMC4zLTAuNgoJCQlDNDEuOSwxMDUuNyw0Mi4xLDEwNS42LDQyLjMsMTA1LjZ6Ii8+CgkJPHBhdGggY2xhc3M9InN0MiIgZD0iTTQ4LjgsMTA4LjVjMC42LDAsMS4xLDAuMSwxLjUsMC4yYzAuNCwwLjEsMC44LDAuMywxLDAuNWMwLjIsMC4xLDAuMywwLjMsMC4zLDAuNWMwLDAuMiwwLDAuNC0wLjIsMC42CgkJCWMtMC4xLDAuMi0wLjMsMC4zLTAuNSwwLjNjLTAuMiwwLjEtMC40LDAtMC42LTAuMWMtMC41LTAuMy0xLTAuNC0xLjctMC40Yy0wLjYsMC0xLjEsMC4yLTEuNCwwLjZjLTAuMywwLjQtMC41LDAuOS0wLjUsMS43djAuNAoJCQljMCwwLjcsMC4yLDEuMywwLjUsMS43YzAuMywwLjQsMC44LDAuNiwxLjQsMC42YzAuNywwLDEuMy0wLjEsMS44LTAuNGMwLjItMC4xLDAuNC0wLjEsMC42LTAuMWMwLjIsMCwwLjQsMC4yLDAuNSwwLjQKCQkJYzAuMSwwLjIsMC4yLDAuNCwwLjEsMC42YzAsMC4yLTAuMSwwLjQtMC4zLDAuNWMtMC4zLDAuMi0wLjcsMC40LTEuMSwwLjVjLTAuNSwwLjEtMSwwLjItMS41LDAuMmMtMS4yLDAtMi4xLTAuMy0yLjctMQoJCQljLTAuNy0wLjYtMS0xLjYtMS0yLjl2LTAuNGMwLTEuMywwLjMtMi4zLDEtMi45QzQ2LjcsMTA4LjksNDcuNiwxMDguNSw0OC44LDEwOC41eiIvPgoJCTxwYXRoIGNsYXNzPSJzdDIiIGQ9Ik01Ni43LDEwOC41YzEuMiwwLDIuMSwwLjMsMi44LDFjMC43LDAuNywxLDEuNiwxLDIuOXYwLjRjMCwxLjMtMC4zLDIuMy0xLDIuOWMtMC43LDAuNy0xLjYsMS0yLjgsMQoJCQlzLTIuMS0wLjMtMi44LTFjLTAuNy0wLjctMS0xLjYtMS0yLjl2LTAuNGMwLTEuMywwLjMtMi4zLDEtMi45QzU0LjYsMTA4LjksNTUuNSwxMDguNSw1Ni43LDEwOC41eiBNNTYuNywxMTAuMgoJCQljLTAuNywwLTEuMiwwLjItMS41LDAuNWMtMC4zLDAuNC0wLjUsMC45LTAuNSwxLjh2MC4zYzAsMC44LDAuMiwxLjQsMC41LDEuOHMwLjgsMC41LDEuNSwwLjVzMS4yLTAuMiwxLjUtMC41czAuNS0wLjksMC41LTEuOAoJCQl2LTAuM2MwLTAuOC0wLjItMS40LTAuNS0xLjhDNTcuOSwxMTAuNCw1Ny40LDExMC4yLDU2LjcsMTEwLjJ6Ii8+CgkJPHBhdGggY2xhc3M9InN0MiIgZD0iTTY2LjQsMTA4LjVjMC41LDAsMSwwLjEsMS40LDAuM2MwLjQsMC4yLDAuNywwLjUsMC44LDAuOWMwLjMtMC40LDAuNi0wLjcsMS0wLjljMC40LTAuMiwwLjktMC4zLDEuNS0wLjMKCQkJYzAuNCwwLDAuNywwLjEsMS4xLDAuMmMwLjMsMC4xLDAuNiwwLjMsMC45LDAuNmMwLjMsMC4zLDAuNSwwLjYsMC42LDFjMC4yLDAuNCwwLjIsMC44LDAuMiwxLjN2NC4zYzAsMC4zLTAuMSwwLjUtMC4zLDAuNgoJCQljLTAuMiwwLjEtMC40LDAuMi0wLjcsMC4yYy0wLjIsMC0wLjUtMC4xLTAuNi0wLjJjLTAuMi0wLjEtMC4zLTAuMy0wLjMtMC42VjExMmMwLTAuNCwwLTAuNy0wLjEtMC45Yy0wLjEtMC4yLTAuMi0wLjQtMC4zLTAuNgoJCQljLTAuMS0wLjEtMC4zLTAuMi0wLjUtMC4zYy0wLjIsMC0wLjQtMC4xLTAuNi0wLjFjLTAuMiwwLTAuNCwwLTAuNSwwLjFjLTAuMiwwLjEtMC4zLDAuMS0wLjUsMC4zYy0wLjEsMC4xLTAuMywwLjMtMC4zLDAuNQoJCQljLTAuMSwwLjItMC4xLDAuNS0wLjEsMC44djMuOWMwLDAuMy0wLjEsMC41LTAuMywwLjZjLTAuMiwwLjEtMC40LDAuMi0wLjcsMC4yYy0wLjIsMC0wLjUtMC4xLTAuNi0wLjJjLTAuMi0wLjEtMC4zLTAuMy0wLjMtMC42CgkJCVYxMTJjMC0wLjMsMC0wLjYtMC4xLTAuOWMtMC4xLTAuMi0wLjItMC40LTAuMy0wLjVjLTAuMS0wLjEtMC4zLTAuMi0wLjUtMC4zYy0wLjItMC4xLTAuNC0wLjEtMC42LTAuMWMtMC40LDAtMC44LDAuMS0xLjEsMC40CgkJCWMtMC4zLDAuMy0wLjQsMC43LTAuNCwxLjN2NGMwLDAuMy0wLjEsMC41LTAuMywwLjZjLTAuMiwwLjEtMC40LDAuMi0wLjcsMC4yYy0wLjIsMC0wLjUtMC4xLTAuNi0wLjJjLTAuMi0wLjEtMC4zLTAuMy0wLjMtMC42CgkJCXYtNi41YzAtMC4zLDAuMS0wLjQsMC4zLTAuNmMwLjItMC4xLDAuNC0wLjIsMC42LTAuMmMwLjIsMCwwLjQsMC4xLDAuNiwwLjJjMC4yLDAuMSwwLjMsMC4zLDAuMywwLjZ2MC40YzAuMi0wLjQsMC41LTAuNywwLjktMC45CgkJCUM2NS40LDEwOC43LDY1LjgsMTA4LjUsNjYuNCwxMDguNXoiLz4KCQk8cGF0aCBjbGFzcz0ic3QyIiBkPSJNNzkuMywxMDguNWMwLjUsMCwxLDAuMSwxLjUsMC4yYzAuNCwwLjIsMC44LDAuNCwxLjEsMC43YzAuMywwLjMsMC42LDAuNywwLjcsMS4xYzAuMiwwLjQsMC4zLDAuOSwwLjMsMS41djAKCQkJYzAsMC41LTAuMSwwLjgtMC4zLDFjLTAuMiwwLjItMC41LDAuMy0xLDAuM2gtNC4ydjBjMCwwLjUsMC4yLDEsMC41LDEuM2MwLjMsMC4zLDAuOCwwLjUsMS41LDAuNWMwLjQsMCwwLjgsMCwxLjEtMC4xCgkJCWMwLjMtMC4xLDAuNi0wLjIsMS0wLjNjMC4yLTAuMSwwLjQtMC4xLDAuNiwwYzAuMiwwLjEsMC4zLDAuMiwwLjQsMC40YzAuMSwwLjIsMC4xLDAuNCwwLjEsMC42YzAsMC4yLTAuMiwwLjMtMC40LDAuNAoJCQljLTAuNCwwLjItMC44LDAuMy0xLjIsMC40Yy0wLjQsMC4xLTEsMC4xLTEuNiwwLjFjLTEuMiwwLTIuMS0wLjMtMi44LTFjLTAuNy0wLjYtMS0xLjYtMS0yLjl2LTAuNGMwLTEuMywwLjMtMi4zLDEtMi45CgkJCUM3Ny4zLDEwOC45LDc4LjIsMTA4LjUsNzkuMywxMDguNXogTTc5LjMsMTEwLjFjLTAuNiwwLTEuMSwwLjItMS40LDAuNWMtMC4zLDAuMy0wLjUsMC43LTAuNSwxLjJ2MC4xaDMuN3YtMC4xCgkJCWMwLTAuNS0wLjEtMC45LTAuNC0xLjJDODAuNCwxMTAuMiw4MCwxMTAuMSw3OS4zLDExMC4xeiIvPgoJPC9nPgo8L2c+Cjwvc3ZnPgo="
									width="100px" class="mypage-userinfo__grade" />
						</div>
						</li>


						<li data-v-4e5d839d="" class="mypage-userinfo__data-list"
							style="display: inline-block; margin-left: 50px;"><div data-v-4e5d839d=""
								class="mypage-userinfo__data-centered "
								style="float: left; width: 100%;">
								<hr align="center" style="border: solid 1px blue; width: 600%;">
								<h4 data-v-4e5d839d="">회원등급</h4>
								<p data-v-4e5d839d=""><c:choose> <c:when test="${map.MEM_GRADE eq 1}">[웰컴]</c:when>
								<c:otherwise>[관리자]</c:otherwise>
								
								
								</c:choose></p>
							
							
							
							
							</div></li>
						<li data-v-4e5d839d="" class="mypage-userinfo__data-list"
							style="display: inline-block; outline: 1px; margin-left: 50px;"><div
								data-v-4e5d839d="" class="mypage-userinfo__data-centered"
								style="float: left; width: 100%;">
								<h4 data-v-4e5d839d="">이름</h4> 
								<p data-v-4e5d839d="">${map.MEM_NAME }</p>
							</div></li>
						
						
						<li data-v-4e5d839d="" class="mypage-userinfo__data-list"
							style="display: inline-block; outline: 1px; margin-left: 50px;"><div
								data-v-4e5d839d="" class="mypage-userinfo__data-centered"
								style="float: left; width: 100%;">
								<h4 data-v-4e5d839d="">회원번호</h4>
								<p data-v-4e5d839d="">${map.MEM_NUM }</p>
							</div></li>
							
						<li data-v-4e5d839d="" class="mypage-userinfo__data-list"
							style="display: inline-block; outline: 1px; margin-left: 50px;"><div
								data-v-4e5d839d="" class="mypage-userinfo__data-centered"
								style="float: left; width: 100%;">
								<h4 data-v-4e5d839d="">가입날짜</h4>
								<p data-v-4e5d839d=""><fmt:formatDate pattern="yyyy/MM/dd" value="${map.MEM_JOINDATE}" /></p>
							</div></li>
					</ul>
				</div>
			</div>
		</section>
		<br>
<br>
<br>
<div class="container">
    
    <br>
    <!-- Nav tabs -->
    <ul class="nav  justify-content-center nav-tabs nav-pills"  role="tablist">
      <li class="nav-item">
        <a class="nav-link active"  data-toggle="tab"  href="#home">주문내역</a>
      </li>
     
      <li class="nav-item">
        <a class="nav-link"  data-toggle="tab"  href="#menu2">회원정보수정</a>
      </li>
    </ul>
    
  
<!-------------(탭내용) 주문내역내역 폼----------------------------------------------->
    <div class="tab-content">
      <div  id="home"  class="container  tab-pane active"><br>  <!--(탭내용) 주문내역 폼-->
        <h3>주문내역</h3>
        
        <main role="main text-center">

        <div class="container" style="width:100%;">
   <table class="table" style="cellpadding:10; cellspacing:10; border:1px solid #bdbdbd" align="center">
            
      <tr>
      <td style="width:180px; padding-right:15px;" align="center">
      <h5><b>입금전</b></h5>
      ${map1.PAT_NOT_YET}
      </td>
      <td style="width:180px; padding-right:15px;" align="center">
      <h5><b>배송준비중</b></h5>
      ${map1.READY_DELIVERY}
      </td>
      <td style="width:180px; padding-right:15px;" align="center">
      <h5><b>배송중</b></h5>
      ${map1.DELIVERING}
      </td>
      <td style="width:180px; padding-right:15px;" align="center">
      <h5><b>배송완료</b></h5>
      ${map1.SCDELIVERY}
      </td>
      <td style="width:180px; padding-right:15px;" align="center">
      <h5><b>취소/교환/반품</b></h5>
      ${map1.SHIT}
      </td>
      </tr>
      </table>
      
      
      <!-- 반복 -->
      

      <div>
         <table style="width:100%;" class="table">
            <thead>
            <tr>
               <th style="width:10%">주문번호</th>
               <th style="width:10%"></th>
               <th style="width:25%">상품명</th>
               <th style="width:14%">수량</th> 
               <th style="width:14%">가격</th>
               <th style="width:13%">상태</th>
               <th style="width:13%"></th>

              </tr>
              </thead>
            <tbody>
             
            <form id="frm1" name="frm1"></form>  
            <c:choose>
               <c:when test="${fn:length(list) > 0 }">
                <c:forEach items="${list}" var="row">            
            <tr style="text-align: center;">
           
               <td style="color:gray;"><font style="font-size:10pt;">${row.ORDER_NUM}</font>
               </td>
               <td><img src="/yook/img/goods_upload/${row.GOODS_IMAGE}" width="100px" height="100px"></td>
               
               <td><strong><a href="#this" name="detail" style="text-decoration: none; color:black; ">${row.GOODS_NAME}<br/>${row.ORDER_DETAIL_WEIGHT }
               <input type="hidden" id="MEM_NUM" name="MEM_NUM" value="${session_MEMBER.MEM_NUM}">
               <input type="hidden" id="ORDER_NUM" name="ORDER_NUM" value="${row.ORDER_NUM}">
               <input type="hidden" id="GOODS_NAME" name="GOODS_NAME" value="${row.GOODS_NAME}">
               <input type="hidden" id="GOODS_NUM" name="GOODS_NUM" value="${row.GOODS_NUM}">
               <input type="hidden" id="ORDER_DETAIL_WEIGHT" name="ORDER_DETAIL_WEIGHT" value="${row.ORDER_DETAIL_WEIGHT}">
               </a></strong></td>
               
               
               <td>${row.ORDER_DETAIL_AMOUNT}개</td>
               <td>${row.GOODS_PRICE * row.ORDER_DETAIL_AMOUNT}원</td>
               <td>
               <c:if test="${row.AORDER_STATE == '0'}">
               입금전
               </c:if>
               <c:if test="${row.AORDER_STATE == '1'}">
               배송준비중
               </c:if>
               <c:if test="${row.AORDER_STATE == '2'}">
               배송중
               </c:if>
               <c:if test="${row.AORDER_STATE == '3'}">
               배송완료
               </c:if>
               <c:if test="${row.AORDER_STATE == '4'}">
               취소요청
               </c:if>
               <c:if test="${row.AORDER_STATE == '5'}">
               취소처리
               </c:if>
               <c:if test="${row.AORDER_STATE == '6'}">
               교환요청
               </c:if>
               <c:if test="${row.AORDER_STATE == '7'}">
               교환중
               </c:if>
               <c:if test="${row.AORDER_STATE == '8'}">
               교환처리
               </c:if>
               <c:if test="${row.AORDER_STATE == '9'}">
               반품요청
               </c:if>
               <c:if test="${row.AORDER_STATE == '10'}">
               반품처리
               </c:if>
               </td>
               <td>
               
               <a href="#this" name="shit">
               <input type="button" class="btn btn-outline-primary" value="취소/교환/반품"/>
               <input type="hidden" id="MEM_NUM" name="MEM_NUM" value="${session_MEMBER.MEM_NUM}">
               <input type="hidden" id="ORDER_NUM" name="ORDER_NUM" value="${row.ORDER_NUM}">
               <input type="hidden" id="GOODS_NUM" name="GOODS_NUM" value="${row.GOODS_NUM}">
               <input type="hidden" id="ORDER_DETAIL_WEIGHT" name="ORDER_DETAIL_WEIGHT" value="${row.ORDER_DETAIL_WEIGHT}">
               </a>
               </td>
               </tr>
            
            </c:forEach>
            </c:when>
            <c:otherwise>
         <tr>
            <td colspan="6"> 주문 내역이 없습니다.</td>
         </tr>
      </c:otherwise>
      
            </c:choose>
           
            </tbody>
         </table>
      </div>
      <hr width="95%">
      <!-- 여기까지 -->
      <table style="width:100%;" class="table">
       
      </table>    
</div>
            
            </main>
              
            
            
           


      </div>

<!-------------(탭내용) 회원정보수정 폼----------------------------------------------->
      <div id="menu2" class="container tab-pane"><br> 
        <h3>회원정보수정</h3>
  

        <div style="height: 50px;"></div>
     
        <div style="height: 20px;"></div>
        
        
        
        
         <form id="frm" name="frm" class="form-inline" method="post">
      <table class="joinFormView" style="border:0; cellpadding:1; cellspacing:1;" align="center">
            <tr> 
               <td style="width:150px; padding-right:15px;" align="right" > 사용자 ID</td>
               <td colspan="2">
               <input type="text" id="MEM_ID" name="MEM_ID" size="15" maxlength="12" class="form-control" placeholder="아이디"  value="${map.MEM_ID}" readonly style="width:100%;">
               </td>
            </tr>
               
            <tr>
               <td style="width:150px; padding-right:15px;" align="right" > 비밀번호</td>
               <td colspan="2">
               <input type="password" id="MEM_PW" name="MEM_PW" size="15" maxlength="12" class="form-control" placeholder="비밀번호" style="width:100%;">
               </td>
            </tr>
            
            <tr>
               <td style="width:150px; padding-right:15px;" align="right"> 비밀번호 확인</td>
                 <td colspan="2">
                 <input type="password" id="MEM_PW2" name="MEM_PW2" size="15" maxlength="12" class="form-control" placeholder="비밀번호 확인" style="width:100%;">
                 </td>
              </tr>
            
            <tr>
               <td style="width:150px; padding-right:15px;" align="right" > 사용자 이름</td>
               <td colspan="2">
               <input type="text" id="MEM_NAME" name="MEM_NAME" size="15" maxlength="12" class="form-control" placeholder="이름" value="${map.MEM_NAME}" style="width:100%;">
               </td>
            </tr>
            
           
            
            <tr>
                  <td style="width:150px; padding-right:15px;" align="right">이메일</td>
                <td colspan="2">
                  <input type="text" id="MEM_EMAIL" name="MEM_EMAIL" size="40" maxlength="30" class="form-control" placeholder="이메일" value="${map.MEM_EMAIL}" style="width:100%;">
                </td>
             </tr>
             
             <tr>
                <td style="width:150px; padding-right:15px;" align="right"> 연락처</td>
                <td colspan="2">
                <input type="text" id="MEM_PHONE" name="MEM_PHONE" size="40" maxlength="12" placeholder="연락처(- 없이 숫자만 입력)" value="${map.MEM_PHONE}"
                 oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  class="form-control" placeholder="PHONE" style="width:100%;">
                </td>
             </tr>

             <tr>
             <td style="width:150px; padding-right:15px;" align="right" rowspan="2"> 주 소</td>
             <td>
             <input type="text" id="MEM_ZIPCODE" name="MEM_ZIPCODE" placeholder="우편번호" size="15" class="form-control" value="${map.MEM_ZIPCODE}" readonly style="width:100%;">
             </td>
             <td>
            <input type="button" onclick="DaumAddressAPI()" class="btn btn-outline-primary mb-2" value="우편번호 찾기" style="width:100%;"><br>
            </td>
            </tr>
            <tr>
            <td colspan="2">
            <input type="text" name="MEM_ADDRESS1" id="MEM_ADDRESS1" placeholder="주소" value="${map.MEM_ADDRESS1}" size="40" class="form-control" style="width:100%;"><br>
            <input type="text" name="MEM_ADDRESS2" id="MEM_ADDRESS2" placeholder="상세주소" value="${map.MEM_ADDRESS2}" size="40" class="form-control" style="width:100%;">
            </td>
            </tr>
     
         
           
            <tr>
               <td colspan="3" align="center">
               <br>
               <a href="#this" class="btn" id="modify"><input type="button" class="btn btn-primary mb-2" value="수정하기" style="margin-left:90px;"/></a> 
               <input type="button" value="취 소" class="btn btn-outline-primary mb-2" onclick="javascript:window.location='/muscle/member/openMyInfoForm.do'" />&nbsp;&nbsp;&nbsp;
               <a href="#this" class="btn" id="delete"><input type="button" value="회원탈퇴" class="btn btn-outline-primary mb-2"  /></a> 
               </td>
            </tr>

      </table>
</form>

        
  </div>     
        
        <div style="height:80px;"> 
         
        </div>
        
        <footer style="border-top:1px solid #D5D5D5;">
        
        </footer>
       <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
   function DaumAddressAPI() {
      new daum.Postcode(
            {
               oncomplete : function(data) {
                  
                  var addr = ''; // 
                  var extraAddr = ''; 

                  
                  if (data.userSelectedType === 'R') { 
                     addr = data.roadAddress;
                  } else { 
                     addr = data.jibunAddress;
                  }

                  
                  if (data.userSelectedType === 'R') {
                     if (data.bname !== ''
                           && /[동|로|가]$/g
                                 .test(data.bname)) {
                        extraAddr += data.bname;
                     }
                     
                     if (data.buildingName !== ''
                           && data.apartment === 'Y') {
                        extraAddr += (extraAddr !== '' ? ', '
                              + data.buildingName
                              : data.buildingName);
                     }
                     
                     if (extraAddr !== '') {
                        extraAddr = ' (' + extraAddr
                              + ')';
                     }
                     /* 
                     document
                           .getElementById("MEM_ADDRESS3").value = extraAddr; */

                  } /* else {
                     document
                           .getElementById("MEM_ADDRESS3").value = '';
                  } */

                  
                  document
                        .getElementById('MEM_ZIPCODE').value = data.zonecode;
                  document
                        .getElementById("MEM_ADDRESS1").value = addr;
                  
                  document.getElementById(
                        "MEM_ADDRESS2")
                        .focus();
               }
            }).open();
   }
</script>

 <script type="text/javascript">

      $("#modify").on("click", function(e) {
       e.preventDefault();
         fn_modifySc();
      });

      function fn_modifySc(){
         
          
         var comSubmit = new ComSubmit("frm");
       comSubmit.setUrl("<c:url value='/updateMyInfo.do' />");

       if(!$("#MEM_PW").val()){
             alert("비밀번호를 입력하세요");
             $("#MEM_PW").focus();
             return false;
          }

          if(!$("#MEM_PW2").val()){
             alert("비밀번호를 확인하세요");
             $("#MEM_PW2").focus();
             return false;
          }

          if($("#MEM_PW").val() != $("#MEM_PW2").val()){
             alert("비밀번호가 일치하지 않습니다.");
             $("#MEM_PW2").focus();
             return false;
          }            

          if(!$("#MEM_NAME").val()){
             alert("이름을 입력하세요");
             $("#MEM_NAME").focus();
             return false;
          }

//           if(!$("#MEM_NICK").val()){
//              alert("닉네임 입력하세요");
//              $("#MEM_NICK").focus();
//              return false;
//           }

          if(!$("#MEM_PHONE").val()){
             alert("연락처를 입력하세요");
             $("#MEM_PHONE").focus();
             return false;
          }

          if(!$("#MEM_ZIPCODE").val()){
             alert("우편번호를 입력하세요");
             $("#MEM_ZIPCODE").focus();
             return false;
          }

          if(!$("#MEM_ADDRESS1").val()){
             alert("주소를 입력하세요");
             $("#MEM_ADDRESS1").focus();
             return false;
          }

          if(!$("#MEM_ADDRESS2").val()){
             alert("상세주소를 입력하세요");
             $("#MEM_ADDRESS2").focus();
             return false;
          }

          alert("수정이 완료 되었습니다.");
          comSubmit.submit();
      }

      $("#delete").on("click", function(e) {
          e.preventDefault();
            fn_delete();
         });

      function fn_delete(){
        var del;
        del = confirm("정말로 탈퇴 하시겠습니까?");
        var comSubmit = new ComSubmit("frm");
        if(del){
         alert("그동안 이용해 주셔서 감사합니다.");
         comSubmit.setUrl("<c:url value='/deleteMyInfo.do' />");         
           comSubmit.submit();     
        }
        else{
          history.go(-1);
          }  
      }  
      </script>
      <script type="text/javascript">
   $(document).ready(function(){
         $("a[name='detail']").on("click", function(e){
            e.preventDefault();
            fn_det($(this));
            });

         $("a[name='shit']").on("click", function(e){
         e.preventDefault();
         fn_shit($(this));
             });
      });


     function fn_shit(obj){
        var comSubmit = new ComSubmit("frm1");
        comSubmit.setUrl("<c:url value='/openMyChangeForm.do' />");
         comSubmit.addParam("MEM_NUM", obj.parent().find("#MEM_NUM").val());
         comSubmit.addParam("ORDER_NUM", obj.parent().find("#ORDER_NUM").val());
         comSubmit.addParam("ORDER_DETAIL_WEIGHT", obj.parent().find("#ORDER_DETAIL_WEIGHT").val());
         comSubmit.addParam("GOODS_NUM", obj.parent().find("#GOODS_NUM").val());
         comSubmit.submit();
     }
     
      function fn_det(obj){
         var comSubmit = new ComSubmit("frm1");
         comSubmit.setUrl("<c:url value='/openMyOrderDetail.do' />");
         comSubmit.addParam("MEM_NUM", obj.parent().find("#MEM_NUM").val());
         comSubmit.addParam("ORDER_NUM", obj.parent().find("#ORDER_NUM").val());
         comSubmit.addParam("GOODS_NAME", obj.parent().find("#GOODS_NAME").val());
         
         comSubmit.submit();
      }
   </script>

      </div>
    </div>
  </div>

	
	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>
</body>
</html>