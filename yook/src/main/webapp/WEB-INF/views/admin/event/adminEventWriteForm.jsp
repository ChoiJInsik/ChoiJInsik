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
   <h3>Event 글쓰기</h3> 
</div>

<!-- body -->
<form id="frm" name="frm" enctype="multipart/form-data">
<div class="container" id="frm" style="width:80%;">
   <div style="margin-bottom:15px;">
      
      <input type="hidden" id="ET_WRITER" name="ET_WRITER" value="${session_MEMBER.MEM_ID}"/>
     
      <!-- 제목 -->
      <div style="display:inline-block; width:100%; float:right;">
         <input type="text" id="ET_TITLE" name="ET_TITLE" class="form-control" placeholder="제목을 입력해주세요." style="width:80%;">
      </div>
   </div>
   <!-- 내용 -->
   <div style="margin-bottom:15px;"><textarea class="form-control" id="ET_CONTENT" name="ET_CONTENT" placeholder="내용을 입력해주세요." rows="12"></textarea> 
   </div>
   <div style="margin-bottom:15px;"><textarea class="form-control" id="ET_SD" name="ET_SD" placeholder="시작일을 입력해주세요(ex:21/01/01 또는 210101)" rows="1"></textarea> 
   </div>
   <div style="margin-bottom:15px;"><textarea class="form-control" id="ET_FD" name="ET_FD" placeholder="종료일을 입력해주세요(ex:21/01/01 또는 210101)" rows="1"></textarea> 
   </div>
   <!-- 버튼 -->
   <div align="center">
        <a href="#this" id="write"><input type="button" class="btn btn-primary" value="이벤트 등록"></a>
      <input type="button" class="btn btn-outline-primary" value="취 소" onclick="location.href='${contextPath}/yook/adminEventList.do'">
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
      comSubmit.setUrl("<c:url value='/admin/insertAevent.do' />");

		if (!$("#ET_TITLE").val()) {
			alert("제목을 입력하세요.");
			$("#ET_TITLE").focus();
			return false;
		}

		if (!$("#ET_CONTENT").val()) {
			alert("내용을 입력하세요.");
			$("#ET_CONTENT").focus();
			return false;
		}
		if (!$("#ET_SD").val()) {
			alert("시작일을 입력하세요.");
			$("#ET_SD").focus();
			return false;
		}
		if (!$("#ET_FD").val()) {
			alert("종료일을 입력하세요.");
			$("#ET_FD").focus();
			return false;
		}

		alert("이벤트가 등록 되었습니다.");
		comSubmit.submit();

	}
</script>

</body>
</html>