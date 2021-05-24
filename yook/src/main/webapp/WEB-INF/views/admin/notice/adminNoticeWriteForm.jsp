<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 

</head>
<body>


<div id="layoutSidenav_content">   
<main>
<div align="center" style="margin-top:50px">
   <h3>공지사항 등록</h3> 
</div>

<!-- body -->
<form id="frm" name="frm" enctype="multipart/form-data">
<div class="container" id="frm" style="width:80%;">
   <div style="margin-bottom:15px;">
      
      
     
      <!-- 제목 -->
      <div style="display:inline-block; width:100%; float:left;">
         <input type="text" id="NOTICE_TITLE" name="NOTICE_TITLE" class="form-control mb-3" placeholder="제목을 입력해주세요." style="width:80%;">
      </div>
   </div>
   <!-- 내용 -->
   <div style="margin-bottom:15px;"><textarea class="form-control" id="NOTICE_CONTENT" name="NOTICE_CONTENT" placeholder="내용을 입력해주세요." rows="12"></textarea> 
   </div>
   <div>
    
   <!-- 버튼 -->
   <div align="center" style="margin-top:15px;">   
        <a href="#this" id="write"><input type="button" class="btn btn-primary" value="공지 등록"></a>
      <input type="button" class="btn btn-outline-primary" value="취 소" onclick="location.href='${contextPath}/yook/adminNoticeList.do'">
   </div>
</div>
</form>
</main>
</div>

<div style="height:80px;"></div>
<script type="text/javascript">
    $("#write").on("click", function(e){ //작성하기 버튼
       e.preventDefault();
       fn_insertBoard();
    });

function fn_insertBoard(){

   var comSubmit = new ComSubmit("frm");
   		comSubmit.setUrl("<c:url value='/admin/insertAnotice.do' />");

		if (!$("#NOTICE_TITLE").val()) {
			alert("제목을 입력하세요.");
			$("#NOTICE_TITLE").focus();
			return false;
		}

		if (!$("#NOTICE_CONTENT").val()) {
			alert("내용을 입력하세요.");
			$("#NOTICE_CONTENT").focus();
			return false;
		}

		/* if (!$("#NOTICE_IMAGE").val()) {
			alert("사진을 등록하세요.");
			$("#NOTICE_IMAGE").focus();
			return false;
		} */

		alert("정상적으로 등록 되었습니다.");
		comSubmit.submit();

	}
</script>

</body>
</html>