<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@	taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
	

</head>
<body>
<div class="container" style="text-align: center;" >
<div align="center" class="center-block"  id="layoutSidenav_content" style="display: inline-block;text-align: center; margin-lsft:300px;">
	
	<!-- middle line -->

	<div  align="center" class="container mb-5 center-block" style="width:300px; padding:15px;"></div>	
		
				
				<form id="frm" name="frm"></form>
				<!-- <button  style="margin-left:600px" class="btn btn-primary center" id="reviewWrite" onclick="fn_ReviewWrite()">리뷰 작성</button> -->
				
					<c:forEach var="review" items="${list}">
						<tr class="gradeA even ml-5" role="row" style="margin-left:500px;">
						
							
							<td style="width:70px; height:30px;"><div class="text-left">제목 : ${review.RE_TITLE} 
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;          작성자 : ${review.MEM_NAME}</div></td>
							<td><div style="width:500px; height:150px; border:1px solid black;">
							<div class="container text-left">${review.RE_CONTENT}</div></div></td>
							
							<div class="container" align="center">
							작성일 : <fmt:formatDate pattern="yyyy-MM-dd" value="${review.RE_DATE}"/>
							
							<c:if test="${review.MEM_NUM == session_MEMBER.MEM_NUM }">
								
								<a href="#this" name="update">
								<button  class="btn btn-primary center" id="reviewModify" >수정</button>
								<input type="hidden" id="RE_NUM" name="RE_NUM" value="${review.RE_NUM }"/>
								</a>
								
								<button  class="btn btn-primary center" id="reviewDelete" onclick="fn_ReviewDelete()">삭제</button>
								
							</c:if>
							<input type="hidden" id="GOODS_NUM" name="GOODS_NUM" value="${review.GOODS_NUM }"/>
			  				<input type="hidden" id="MEM_NUM" name="MEM_NUM" value="${session_MEMBER.MEM_NUM }"/>
			  				
			  				
							
							
							</div>
							
							
              
						</tr>
					</c:forEach>
					<!--  등록된 상품이 없을때 -->
					<c:if test="${fn:length(list) le 0}">
						<tr>
							<td colspan="9" style="text-align: center;">등록된 리뷰가
								없습니다</td>
						</tr>
					</c:if>
				
				<div id="PAGE_NAVI">
                  <input type="hidden" id="PAGE_INDEX" name="PAGE_INDEX" />
               </div>
               
      
</div>
</div>
<!-- under line -->
<div class="container mb-5"></div>
</body>
</html>

<script type="text/javascript">
function fn_selectBoardList(pageNo){
	var comAjax = new ComAjax();
	comAjax.setUrl("<c:url value='/adminSelectGoodsList.do' />");
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
						"<td colspan='6'>조회된 결과가 없습니다.</td>" + 
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
						"<td>" + value.GOODS_NUM + "</td>" + 
					
						"<td>" + value.GOODS_NAME + "</td>" + 
						"<td>" + value.GOODS_CATE + "</td>" + 
						"<td>" + value.GOODS_PRICE + "</td>" +
						"<td>" + value.GOODS_WEIGHT + "</td>" +
						"<td>" + value.GOODS_ATT_AMOUNT + "</td>" +
//							"<td>" + value.CREA_DTM + "</td>" +
					"</tr>";
		});
		body.append(str);
		
		$("a[name='title']").on("click", function(e){ //제목 
			e.preventDefault();
			fn_openBoardDetail($(this));
		});
	}
}

$(document).ready(function(){
    $("a[name='update']").on("click", function(e){
       e.preventDefault();
       fn_ReviewUpdate($(this));
       });

    $("a[name='shit']").on("click", function(e){
    e.preventDefault();
    fn_shit($(this));
        });
 });

function fn_ReviewWrite(){
    var comSubmit = new ComSubmit("frm");
    comSubmit.setUrl("<c:url value='/reviewWrite.do' />");
    
    
    comSubmit.submit();
 }

function fn_ReviewUpdate(obj){
    var comSubmit = new ComSubmit("frm");
    comSubmit.setUrl("<c:url value='/ReviewUpdate.do' />");
    comSubmit.addParam("RE_NUM", obj.parent().find("#RE_NUM").val());
    
    comSubmit.submit();
 }

function fn_ReviewDelete(){
    var comSubmit = new ComSubmit("frm");
    comSubmit.setUrl("<c:url value='/deleteReview.do' />");
    
    
    comSubmit.submit();
 }
</script>	


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>


