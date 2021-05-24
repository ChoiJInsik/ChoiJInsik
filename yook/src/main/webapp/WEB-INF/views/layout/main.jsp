<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="false"%>

<!doctype html>
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
	
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link href="<c:url value="/css/board.css"/>" rel="stylesheet">
<link href="<c:url value="/css/goods.css"/>" rel="stylesheet">
<link href="<c:url value="/css/btn.css"/>" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="<c:url value='../css/ui.css'/>" />
</head>



<body>
	<header>
		<div class="collapse bg-dark" id="navbarHeader">
			
		<div class="navbar navbar-dark bg-dark shadow-sm">
			<div class="container d-flex justify-content-between">
				<a href="#" class="navbar-brand d-flex align-items-center"> <svg
						xmlns="http://www.w3.org/2000/svg" width="20" height="20"
						fill="none" stroke="currentColor" stroke-linecap="round"
						stroke-linejoin="round" stroke-width="2" aria-hidden="true"
						class="mr-2" viewBox="0 0 24 24" focusable="false">
						<path
							d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z" />
						<circle cx="12" cy="13" r="4" /></svg>
				</a>
			</div>
		</div>
	</header>

	<main role="main">

		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="width:100%;">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<a href="#"><img class="d-block img-fluid"
						src="/yook/img/cow.webp"
						alt="First slide" style="width:100%;"></a>
					<div class="carousel-caption d-none d-md-block">
						<h5>EVENT</h5>
						<p>3월 이벤트 확인하러 가기</p>
					</div>

				</div>
				<div class="carousel-item">
					<a href="#"><img class="d-block img-fluid"
						src="/yook/img/pig.webp"
						alt="Second slide" style="width:100%;"></a>
					<div class="carousel-caption d-none d-md-block">
						<h5>NOTICE</h5>
						<p>식육증가 공지사항 확인하기</p>
					</div>
				</div>
				<div class="carousel-item">
					<a href="#"><img class="d-block img-fluid"
						src="/yook/img/chicken.webp"
						alt="Third slide" style="width:100%;"></a>
					<div class="carousel-caption d-none d-md-block">
						<h5>BEST</h5>
						<p>베스트 상품보러 가기</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
		</div>
		</section>


		
		
		<div class="album py-5 bg-light">
		<div align="center" class="btn-group-center mt-5 mb-5" role="group"
			aria-label="Basic example">
			<h3>베스트 상품</h3>  
		</div>
		<div id="main-container" style="margin-left:240px; margin-right:200px;">
		<div class="row">

		
<table class="GOODS_LIST" style="width:'100%';" > 
      <colgroup>
         <col width="60%" />
      </colgroup>
      <thead>
         <tr>
         </tr>
      </thead>
      <tbody>
      <form id="frm" name="frm">
      <c:forEach items="${list}" var="list">
         
         <div >   
         	
            <a href="#this" name="title" style="text-decoration: none; ">
            
            <c:set var="IMG" value="${fn:split(list.GOODS_IMAGE,',')}"/>
                
             
             <div class="card mb-4" style="margin-left:20px; border: none; color:black; background-color:whitesmoke; width:330px;">
                     <img src="/yook/img/goods_upload/${IMG[0]}" width="330" height="330" style="margin-bottom: 5%; margin-left: 1px; margin-top: 15px;"> 
            
                        <input type="hidden" id="GOODS_NUM" name="GOODS_NUM" value="${list.GOODS_NUM}" />
                        
                        <font size="4em" class="font1" style="margin-left: 9px; margin-bottom: 5px;"><strong>${list.GOODS_NAME} </strong></font>
                        <font class="font3" style="margin-left: 9px; margin-bottom: 15px; color:gray;"><fmt:formatNumber value="${list.GOODS_PRICE}"  pattern="#,###"> </fmt:formatNumber>원/${list.GOODS_WEIGHT }
                        <br/>
                        <c:if test="${list.GOODS_WEIGHT == '300g(14mm)' }">
							(100g당 ${list.GOODS_PRICE / 3}원)
							</c:if>
							<c:if test="${list.GOODS_WEIGHT == '300g(16mm)' }">
							(100g당 ${list.GOODS_PRICE / 3}원)
							</c:if>
							<c:if test="${list.GOODS_WEIGHT == '300g(18mm)' }">
							(100g당 ${list.GOODS_PRICE / 3}원)
							</c:if>
							<c:if test="${list.GOODS_WEIGHT == '300g' }">
							(100g당 ${list.GOODS_PRICE / 3}원)
							</c:if>
							<c:if test="${list.GOODS_WEIGHT == '200g' }">
							(100g당 ${list.GOODS_PRICE / 2}원)
							</c:if>
							<c:if test="${list.GOODS_WEIGHT == '150g' }">
							(100g당 ${list.GOODS_PRICE / 1.5}원)
							</c:if> </font> 
         		
								
			</div>
		 
         
         
         </a>
         </form>
         </div>
      </c:forEach>
      
      </tbody>
      </table>
	</div>
	</div>
	</div>
			
	</main>
	
	<script type="text/javascript">

$(document).ready(function () {
  
    $("a[name='title']").on("click", function(e){ //제목 //name 이 title인거
       console.log("잘들어옴");
       e.preventDefault();
       fn_openBoardDetail($(this));
    });
    
});

function fn_openBoardDetail(obj) {
   console.log("잘들어옴22");
   var comSubmit = new ComSubmit("frm"); // 객체생성
   comSubmit.setUrl("<c:url value='/goodsDetail.do' />"); // url설정
   comSubmit.addParam("IDX", obj.parent().find("#GOODS_NUM").val());
   comSubmit.submit();
   
}

</script>
	
	
	

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	
	 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>

