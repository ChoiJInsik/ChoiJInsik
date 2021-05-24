<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	


<title>문의</title>

</head>
<body>
	
		<div class="container" id="frm" style="width:60%;">
			<h1 style="margin: 50px; color: black; text-align: center;">리뷰 작성</h1>
			<input type="hidden" name="RE_NUM" id="RE_NUM" value="${map.RE_NUM}"/>
				<div style="display:inline-block; width:19%;">
					<div class="row" style="width: 800px;">
						<div style="display:inline-block; width:80%; float:right;">
				         <input type="text" id="RE_TITLE" name="RE_TITLE" class="form-control" value="${map.RE_TITLE}" style="width:100%;">
				         <input type="hidden" id="MEM_NUM" name="MEM_NUM" value="${session_MEMBER.MEM_NUM}"/>
				         <input type="hidden" id="MEM_NAME" name="MEM_NAME" value="${session_MEMBER.MEM_NAME}"/>
     					 </div>
					</div>
				</div>
				<div class="row" style="width: 800px;">
					<div style="margin-bottom:15px;">
     					 <textarea class="form-control" id="RE_CONTENT" name="RE_CONTENT" rows="12">${map.RE_CONTENT}</textarea> 
   					</div>
	      		</div>
	      		
				<form id="frm" name="frm"></form>
				<!-- 버튼 -->
				
			   <div align="center">
			        <a href="#this"   name="write"><button  class="btn btn-primary center" id="reviewModify" >수정</button>
			        <input type="hidden" id="MEM_NUM" name="MEM_NUM" value="${session_MEMBER.MEM_NUM}"/>
			        <input type="hidden" id="RE_TITLE" name="RE_TITLE" value="${map.RE_TITLE}"/>
			        <input type="hidden" id="RE_CONTENT" name="RE_CONTENT" value="${map.RE_CONTENT}"/></a>
			      <input type="button" class="btn btn-outline-primary" value="취소" onClick="javascript:history.go(-1)">
			   </div>
   		</div>
	
<script type="text/javascript">
$(document).ready(function(){
    $("a[name='write']").on("click", function(e){
       e.preventDefault();
       fn_updateBoard($(this));
       });

   
 });

function fn_updateBoard(obj){

   var comSubmit = new ComSubmit("frm");
      comSubmit.setUrl("<c:url value='/updateReview.do' />");

      if (!$("#RE_TITLE").val()) {
         alert("제목을 입력하세요.");
         $("#RE_TITLE").focus();
         return false;
      }

      if (!$("#RE_CONTENT").val()) {
         alert("내용을 입력하세요.");
         $("#RE_CONTENT").focus();
         return false;
      }
      comSubmit.addParam("MEM_NUM", obj.parent().find("#MEM_NUM").val());
      comSubmit.addParam("RE_TITLE", obj.parent().find("#RE_TITLE").val());
      comSubmit.addParam("RE_CONTENT", obj.parent().find("#RE_CONTENT").val());
      alert("게시판이 정상적으로 수정 되었습니다.");
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