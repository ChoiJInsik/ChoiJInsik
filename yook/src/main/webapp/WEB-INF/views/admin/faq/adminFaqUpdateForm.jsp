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
<div align="center" style="margin-top:50px;">
   <h3>FAQ</h3> 
</div>
<div style="height: 50px;"></div>

<!-- body -->
<form id="frm" name="frm">
<div class="container" id="frm" style="width:80%;">
   <div style="margin-bottom:15px;">
      <input type="hidden" name="NOTICE_NUM" id="NOTICE_NUM" value="${map.NOTICE_NUM}"/>

      <!-- 제목 -->
      <div style="width:100%;">
         <input type="text" id="NOTICE_TITLE" name="NOTICE_TITLE" class="form-control" value="${map.NOTICE_TITLE}" style="width:80%;">
         
      </div>
   </div>
   <!-- 내용 -->
   <div style="margin-bottom:15px;">
      <textarea class="form-control" id="NOTICE_CONTENT" name="NOTICE_CONTENT" rows="12">${map.NOTICE_CONTENT}</textarea> 
   </div>
   <!-- 버튼 -->
   <div align="center">
        <a href="#this" id="modify"><input type="button" class="btn btn-primary" value="수정"></a>
      <input type="button" class="btn btn-outline-primary" value="취소" onClick="javascript:history.go(-1)">
   </div>
</div>
</form>

<script type="text/javascript">
   
   
   $("#modify").on("click", function(e){
         e.preventDefault();
         fn_updateBoard();
      });


function fn_updateBoard(){

   var comSubmit = new ComSubmit("frm");
      comSubmit.setUrl("<c:url value='/admin/updateFaq.do' />");

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

      alert("게시판이 정상적으로 수정 되었습니다.");
      comSubmit.submit();

   }
</script>
</div></div>
</body>
</html>