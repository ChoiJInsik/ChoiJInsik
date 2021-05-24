<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<div class="container">
<!-- title -->


<div align="center" style="margin-top:50px">
   <h3>FAQ</h3> 
</div>
<div style="width: 250px; height: 50px;"></div>

<!-- body -->
<form id="frm" name="frm" enctype="multipart/form-data">
<div class="container" id="frm" style="width:80%;">
   <div style="margin-bottom:15px;">
   	<input type="hidden" id="NOTICE_WRITER" name="NOTICE_WRITER" value="${session_MEMBER.MEM_NICK}"/>
      <!-- 제목 -->
      <div style="width:100%;">
         <input type="text" id="NOTICE_TITLE" name="NOTICE_TITLE" class="form-control" placeholder="제목을 입력해주세요." style="width:80%;">
      </div>
   </div>
   <!-- 내용 -->
   <div style="margin-bottom:15px;">
      <textarea class="form-control" id="NOTICE_CONTENT" name="NOTICE_CONTENT" placeholder="내용을 입력해주세요." rows="12"></textarea> 
   </div>
   <!-- 버튼 -->
   <div align="center">
        <a href="#this" id="write"><input type="button" class="btn btn-primary" value="등록"></a>
      <input type="button" class="btn btn-outline-primary" value="취 소" onclick="location.href='http://localhost:8007/muscle/admin/faqBoardList.do'">
   </div>
</div>
</form>
<script type="text/javascript">
    $("#write").on("click", function(e){ //작성하기 버튼
       e.preventDefault();
       fn_insertBoard();
    });

function fn_insertBoard(){

   var comSubmit = new ComSubmit("frm");
      comSubmit.setUrl("<c:url value='/admin/insertFaq.do' />");

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

		alert("게시판이 정상적으로 등록 되었습니다.");
		comSubmit.submit();

	}
</script>
</div>

</div>

</body>


</html>