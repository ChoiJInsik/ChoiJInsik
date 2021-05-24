<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script> 
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
  
  
<div id="layoutSidenav_content">
	<main>
		<div class="container-fluid">
			<h1 class="mt-4">공지사항</h1>

			<div class="card mb-4">
				
				
<div align="center" style="width:100%; margin-left:auto; margin-right:auto;">
   <div class="container" style="margin-top:20px;">
  
   <table align="center" class="table table-hover" style="cellpadding:7px;">
      <thead>
      <tr style="background-color:#EAEAEA;">
      	 
         <th style="width:40%">제목</th>
         
         <th style="width:20%">작성일</th>   
         
      </tr>
      </thead>
      <form id="frm" name="frm">
      <tbody>
      <c:choose>
         <c:when test="${fn:length(list) > 0 }">
            <c:forEach items="${list}" var="row">   
               <tr>
                  
                          
                  <td><a href="#this" name="title">${row.NOTICE_TITLE}</a> <input type="hidden" id="NOTICE_NUM" value="${row.NOTICE_NUM}"></td>
          
                  
                  <td><fmt:formatDate pattern="yyyy/MM/dd" value="${row.NOTICE_DATE}" /></td>
                  
               </tr>
            </c:forEach>
         </c:when>
         
      <c:otherwise>
         <tr>
            <td colspan="6"> 조회된 결과가 없습니다.</td>
         </tr>
      </c:otherwise>
      
      </c:choose>
      </tbody>
      <hr>
      <div align="right">   
      
      <button type="button" class="btn btn-primary btn-sm" onclick="javascript:window.location='/yook/adminNoticeWrite.do'">글 작성</button>
     
      
      </div>  
      </table>
      </div> 
   </div>   
  </div>
  <br/>
  </div>
  </main>
  </div>
	</form>
   <br>
   <script type="text/javascript">
   $(document).ready(function(){
      $("a[name='title']").on("click",function(e){
         e.preventDefault();
         fn_openBoardDetail($(this));
         });
   });
    

   function fn_openBoardDetail(obj){
      var comSubmit = new ComSubmit("frm"); 
      comSubmit.setUrl("<c:url value='/openAnoticeDetail.do'/>");
       comSubmit.addParam("NOTICE_NUM", obj.parent().find("#NOTICE_NUM").val());
       comSubmit.submit();
      }
</script>   


</body>
</html>