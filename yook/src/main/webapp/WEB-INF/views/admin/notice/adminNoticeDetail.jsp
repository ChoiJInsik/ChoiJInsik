<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
   
</head>
<body>
 
   <div style="height: 160px;"></div>

   <!-- title -->
   <div align="center">
      <h3>공지사항</h3>

   </div>
   <div style="height: 30px;"></div>
   
   <div class="container" style="width:65%">
   <div align="center" style="margin-top:100px; margin-bottom:50px; ">
   	<h3>공지사항</h3> 
	</div>
      <div style="display:inline-block; float:right;">
      </div>
      
      <hr>
      
      <div>
      	
         <div class="row">
         <div class="col" style="margin-left:100px;"><h4>${map.NOTICE_TITLE}</h4></div>
         <div class="col" align="right"; style="margin-top:5px;">
         <h8>작성일&nbsp;&nbsp;&nbsp; ${map.NOTICE_DATE}</h8></div>
         
         
      </div>
      
      <hr>
      
      <div style="padding:20px; margin-bottom:100px; white-space:pre-wrap; margin-left:100px;">
         <span>${map.NOTICE_CONTENT}</span>
      </div>
      
      <hr>

	  <form id="frm" name="frm">
      <div style="float:right;">
         
         <input type="hidden" name="NOTICE_NUM" id="NOTICE_NUM" value="${map.NOTICE_NUM}"/>
         <a href="#this" id="delete"><button type="button" class="btn btn-outline-primary" style="margin-right:6px;">삭제</button></a>
         <a href="#this" id="modify"><button type="button" class="btn btn-outline-primary" style="margin-right:6px;">수정</button></a>
         <button type="button" class="btn btn-outline-primary" onclick="javascript:history.go(-1);" style="margin-right:6px;">목록</button>
         
        
      </div>
      </form>
   </div>
   </div>
   

   <script type="text/javascript">
      $("#delete").on("click", function(e) { //삭제하기 버튼
         e.preventDefault();
         fn_deleteBoard();
      });

      $("#modify").on("click", function(e) { //수정하기 버튼
         e.preventDefault();
         fn_openBoardModify();
      });

     

      function fn_deleteBoard(){
            var comSubmit = new ComSubmit("frm");
            var CONFIRM = confirm("정말로 삭제하시겠습니까?");
            if(CONFIRM==true){
            comSubmit.setUrl("<c:url value='/admin/anoticeDelete.do' />");
            
            comSubmit.submit();
            alert("삭제가 완료되었습니다.");
            }
         }
      
         function fn_openBoardModify(){
            var comSubmit = new ComSubmit("frm");
            comSubmit.setUrl("<c:url value='/adminNoticeUpdate.do' />");
            
            comSubmit.submit();
         }

        
   </script>


   
</body>
</html>