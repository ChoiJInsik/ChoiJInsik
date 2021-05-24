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
<title>상품보기</title>
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
         </ol>
         <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
               <a href="#"><img class="d-block img-fluid"
                  src="data:image/jpeg;base64,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"
                  alt="First slide" style="width:100%;"></a>
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

      
      
      <div class="album py-5 bg-light">
      <div align="center" class="btn-group-center mt-3 mb-5" role="group"
         aria-label="Basic example">
         
         
         <a href="${contextPath}/yook/GoodsListAll.do"><button type="button" class="btn btn-secondary">전체보기</button></a>
         <a href="${contextPath}/yook/GoodsListPig.do"><button type="button" class="btn btn-secondary">돼지고기</button></a>
         <a href="${contextPath}/yook/GoodsListCow.do"><button type="button" class="btn btn-secondary">소고기</button></a>
         <a href="${contextPath}/yook/GoodsListChicken.do"><button type="button" class="btn btn-secondary">닭고기</button></a>
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
         
         </div>
      </c:forEach>
      </form>
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
