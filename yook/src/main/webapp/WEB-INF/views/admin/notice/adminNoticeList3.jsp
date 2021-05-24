<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
    
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Hello, world!</title>
    
    
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"> 

  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 

  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>  

  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 
    <%@ include file="/WEB-INF/include/include-header.jspf" %>
  </head>
  
<body>
<%@ include file="/WEB-INF/include/include-body.jspf" %>

<div id="layoutSidenav_content">
	
		<div class="container-fluid">
      <h3>관리자 회원정보</h3>
   <div class="card mb-4">
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable"  width="100%" cellspacing="0">
         <colgroup>
         <col width="10%" />
         <col width="10%" />
         <col width="20%" />
         <col width="20%" />
         <col width="15%" />
         <col width="10%" />
         <col width="15%" />
         </colgroup>
         <thead>
            <tr style="background-color:#EAEAEA;">
               <th scope="col">아이디</th>
               <th scope="col">이름</th>
               <th scope="col">주소</th>
               <th scope="col">이메일</th>
               <th scope="col">핸드폰</th>
               <th scope="col">가입날짜</th>
               <th scope="col">상태</th>
            </tr>   
         </thead>
         
      
               <tbody>
               
               
               </tbody>
               </table>
               <div id="PAGE_NAVI">
                  <input type="hidden" id="PAGE_INDEX" name="PAGE_INDEX" />
               </div>
              
               </div>
               <br> 

   </div>
   </div>
  </div></div>
   
               
  



  <script type="text/javascript">
		$(document).ready(function(){
			fn_selectBoardList(1);
			
			$("a[name='click']").on("click", function(e){
		          e.preventDefault();
		          fn_click($(this));
		           });
		});
		function fn_click(obj){
		     var comSubmit = new ComSubmit();
		         comSubmit.setUrl("<c:url value='/admin/openAdminMemberDetail.do'/>");
		         comSubmit.addParam("MEM_NUM", obj.parent().find("#MEM_NUM").val());
		         comSubmit.submit();
		   }
		
		function fn_openBoardWrite(){
 			var comSubmit = new ComSubmit();
 			comSubmit.setUrl("<c:url value='/sample/openBoardWrite.do' />");
 			comSubmit.submit();
 		}
		
 		function fn_openBoardDetail(obj){
 			var comSubmit = new ComSubmit();
 			comSubmit.setUrl("<c:url value='/sample/openBoardDetail.do' />");
 			comSubmit.addParam("IDX", obj.parent().find("#IDX").val());
 			comSubmit.submit();
 		}
		
		function fn_selectBoardList(pageNo){
			var comAjax = new ComAjax();
			comAjax.setUrl("<c:url value='/adminSelectMemberList.do' />");
			comAjax.setCallback("fn_selectBoardListCallback");
			comAjax.addParam("PAGE_INDEX",pageNo);
			comAjax.addParam("PAGE_ROW", 15);
			comAjax.ajax();
		}
		
		function fn_selectBoardListCallback(data){
			var total = data.TOTAL;
			var body = $("table>tbody");
			body.empty();
			if(total == 0){
				var str = "<tr>" + 
								"<td colspan='7'>조회된 결과가 없습니다.</td>" + 
							"</tr>";
				body.append(str);
			}
			else{
				var params = {
					divId : "PAGE_NAVI",
					pageIndex : "PAGE_INDEX",
					totalCount : total,
					eventName : "fn_selectBoardList"
				};
				gfn_renderPaging(params);
				
				var str = "";
				$.each(data.list, function(key, value){
					str += "<tr>" + 
								"<td>" + value.MEM_ID + "</td>" + 
								"<td>" + value.MEM_NAME + "</td>" +
								"<td>" + value.MEM_ADRESS1 + "</td>" +
								"<td>" + value.MEM_EMAIL + "</td>" +
								"<td>" + value.MEM_PHONE + "</td>" +
								"<td>" + value.MEM_JOINDATE + "</td>" + 
								"</td>" 
				                  + "<td>" 
				                  + "<a href='#this' name='click'>"
				                  + value.MEM_DEL_GB
				                  + "<input type='hidden' id='MEM_NUM' name='MEM_NUM' value=" + value.MEM_NUM + ">"
				                  + "</a>"
				                  + "</td>" 
				                  + 
							"</tr>";
				});
				body.append(str);
				
				
 				$("a[name='title']").on("click", function(e){ //제목 
 					e.preventDefault();
 					fn_openBoardDetail($(this));
 				});
			}
		}
	</script>	
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>