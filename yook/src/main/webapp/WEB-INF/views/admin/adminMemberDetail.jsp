<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script> 
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
  
  <script src="http://code.jquery.com/jquery-3.5.1.js"></script>
    <title>Hello, world!</title>
    
    
  </head>
  <body>
    <div style="height: 300px;"></div>
<div align="center">
   <h3>Member</h3> 
</div>
<div style="height: 300px;"></div>

<div class="container" style="width:50%;">
<div align="center" style="margin-top:100px; margin-bottom:50px; ">
   	<h3>회원 상세</h3> 
	</div>
   <table class="table" style="border:0;cellpadding:1; cellspacing:1; width:100%;" align="center">
      <tr>
      <th style="width:15%;">회원번호</th>
      <td align="center" style="width:*;">${map.MEM_NUM}</td>
          
      </tr>
      
      <tr>
      <th>아이디</th>
      <td align="center">${map.MEM_ID}</td>
      </tr>
      
      <tr>
      <th>이 름</th>
      <td align="center">${map.MEM_NAME}</td>
      </tr>
      
      
      <tr>
      <th>이메일</th>
      <td align="center">${map.MEM_EMAIL}</td>
      </tr>
      
      <tr>
      <th>연락처</th>
      <td align="center">${map.MEM_PHONE}</td>
      </tr>
      
      <tr>
      <th>우편번호</th>
      <td align="center">${map.MEM_ZIPCODE}</td>
      </tr>
      
      <tr>
      <th>주 소</th>
      <td align="center">${map.MEM_ADDRESS1}</td>
      </tr>
      
      <tr>
      <th>상세주소</th>
      <td align="center">${map.MEM_ADDRESS2}</td>
      </tr>
      
      <tr>
      <th>가입날짜</th>
      <td align="center">${map.MEM_JOINDATE}</td>
      </tr>
      
   </table>
   <form id="frm" name="frm">
   <table class="table">
      <tr>
         <th>회원상태</th>
         <td>
         
          
         <select id="MEM_DEL_GB" name="MEM_DEL_GB" style="margin-right:15px">
            <option value="${map.MEM_DEL_GB}">${map.MEM_DEL_GB}</option>
            <option value="N">N</option>
            <option value="Y">Y</option>
            
         </select>
         <input type="hidden" id="MEM_NUM" name="MEM_NUM" value="${map.MEM_NUM}">
         </td>
      </tr>
   </table>
   <hr>
   <div style="float:right;">
   <a href="#this" name="ignore"><input type="button" class="btn btn-primary" value="저장">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
   </a>
   </div>
   
   
</form>
</div>


<script type="text/javascript">
   $(document).ready(function(){
       $("a[name='ignore']").on("click", function(e){
         e.preventDefault();
         fn_ignore();
       });
   }); 

   function fn_ignore(){
      var comSubmit = new ComSubmit("frm");
      comSubmit.setUrl("<c:url value='/ignoreAdminMember.do' />");
      comSubmit.submit();
      }

  
</script>
    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>