<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
      <h3>이벤트</h3>

   </div>
   <div style="height: 30px;"></div>
   
   <div class="container" style="width:65%">
      <div style="display:inline-block; float:right;">
      </div>
      <br>
      <hr>
      
      <div>
         <h4>${map.EVENT} ${map.ET_TITLE}</h4>
         <span>시작일: ${map.ET_SD}</span>
         <span style="float:right;">종료일 ${map.ET_FD} </span>
      </div>
      
      <hr>
      
      <div style="padding:20px; margin-bottom:100px; white-space:pre-wrap;">
         <span>${map.ET_CONTENT}</span>
      </div>
      
      <hr>
  <form id="frm" name="frm">
      <div style="float:right;">
         <c:if test="${session_MEMBER.MEM_ID == 'admin'}">
         <input type="hidden" name="ET_NUM" id="ET_NUM" value="${map.ET_NUM}"/>
         
         <a href="#this" id="modifyEvent"><button type="button" class="btn btn-outline-primary" style="margin-right:6px;">수정</button></a>
         
         <a href="#this" id="delete"><button type="button" class="btn btn-outline-primary" style="margin-right:6px;">삭제</button></a>
         
         <button type="button" class="btn btn-outline-primary" onclick="javascript:history.go(-1);" style="margin-right:6px;">목록</button>
         </c:if>
         <c:if test="${session_MEMBER.MEM_ID != 'admin'}">
         <button type="button" class="btn btn-outline-primary" onclick="javascript:history.go(-1);" style="margin-right:6px;">목록</button>
         <!--  목록 경로 고쳐야 합니다.(회원) -->
         </c:if>
      </div>
     </form>
   </div>

   <script type="text/javascript">
      $("#delete").on("click", function(e) { //삭제하기 버튼
         e.preventDefault();
         fn_deleteBoard();
      });

     
      $("#modifyEvent").on("click", function(e) { //EVENT 수정하기 버튼
          e.preventDefault();
          fn_openEventModify();
       });

      function fn_deleteBoard(){
            var comSubmit = new ComSubmit("frm");
            var CONFIRM = confirm("정말로 삭제하시겠습니까?");
            if(CONFIRM==true){
            comSubmit.setUrl("<c:url value='/admin/aEventDelete.do' />");
            comSubmit.submit();
            alert("삭제가 완료되었습니다.");
            }
         }
      
         

         function fn_openEventModify(){
             var comSubmit = new ComSubmit("frm");
             comSubmit.setUrl("<c:url value='/admineventUpdate.do' />");
             comSubmit.submit();
          }
   </script>


   
</body>
</html>