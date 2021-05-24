<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>

<html lang="en">
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>

<script src="//cdn.ckeditor.com/4.4.4/standard/ckeditor.js"></script>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
</head>
<body>
<c:if test="${session_MEM_ID != null }">
	<form id="frm" name="frm" enctype="multipart/form-data" method="post" type="input">
		<div class="container" id="frm" style="width:60%;">
			<h1 style="margin: 50px; color: black; text-align: center;">리뷰작성 </h1>
			<div>
				<div style="display:inline-block; width:19%;">
					<div class="row" style="width: 800px;">
						<div style="display:inline-block; width:80%; float:right;">
				         <input type="text" id="RE_TITLE" name="RE_TITLE" class="form-control" placeholder="제목을 입력해주세요." style="width:100%;">
				         <input type="hidden" id="MEM_NUM" name="MEM_NUM" value="${session_MEMBER.MEM_NUM}"/>
				         <input type="hidden" id="GOODS_NUM" name="GOODS_NUM" value="${map.GOODS_NUM}"/>
				         
				         
     					 </div>
					</div>
				</div>
				<div class="row" style="width: 800px;">
					<div style="margin-bottom:15px;">
     					 <textarea class="form-control" id="RE_CONTENT" name="RE_CONTENT" placeholder="리뷰 내용을 입력해주세요." rows="12"></textarea> 
   					</div>
	      		</div>
			</div>
		</div>
			<div class="mb-3" style="width: 630; margin-left: auto; margin-right: auto;">
				<div align="center">
       				<a href="#this" id="write"><input type="button" class="btn btn-primary" value="리뷰 작성"></a>
     					<input type="button" class="btn btn-outline-primary" value="목록으로" onclick="${contextPath}/yook/openMyOrderList.do">
  					</div>
			</div>
</form>
</c:if>
<script type="text/javascript">

CKEDITOR.replace('RE_CONTENT',{
	   filebrowserUploadUrl:"${pageContext.request.contextPath}/ckeditor/fileupload.do"});
   
   $("#insertBoard").on("click", function(e){
      e.preventDefault();
      fn_insertBoard();
   });

   $("#write").on("click", function(e){ //작성하기 버튼
       e.preventDefault();
       fn_insertBoard();
    });

function fn_insertBoard(){

   var comSubmit = new ComSubmit("frm");
      comSubmit.setUrl("<c:url value='/insertReview.do' />");

		if (!$("#RE_TITLE").val()) {
			alert("제목을 입력하세요.");
			$("#RE_TITLE").focus();
			return false;
		}

		if (CKEDITOR.instances.RE_CONTENT.getData() =='' 
            || CKEDITOR.instances.RE_CONTENT.getData().length ==0) {
			alert("내용을 입력하세요.");
			$("#RE_CONTENT").focus();
			return false;
		}

		alert("리뷰가 등록되었습니다.");
		comSubmit.submit();

	}
</script>
	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
-->
</body>
</html>