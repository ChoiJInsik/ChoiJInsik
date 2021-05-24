<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  

<!doctype html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>상품등록</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-1.7.js"></script>

<head>
<script src="//cdn.ckeditor.com/4.4.4/standard/ckeditor.js"></script>
    	
    
  </head>
  <body>
      
<div align="center" >
       
</div>



<div align="center" class="container" style="width:55%; margin-top: 60px;">  
<form name="frm" id="frm" enctype="multipart/form-data" method="post">


	<ul style="list-style:none;">
	<div align="center" style="margin-top:50px; margin-bottom:50px;">
   	<h3>상품등록</h3> 
	</div>
	
       <table align="center" style="border:none; cellpadding:10px; cellspacing:10px; width:100%; ">
            
         	<li>   
            <tr>
               <th>상품이름 </th>
               <td>
                  <input type="text" id="GOODS_NAME" name="GOODS_NAME" placeholder="상품이름입력" size="40" class="form-control"
                  style="padding:10px;" value=<c:if test="${type eq 'modify'}">"${map.GOODS_NAME}"</c:if>>
               </td>
            </tr>
            </li>
            
            <li>
            <tr>
               <th>상품내용 </th>
               <td>
                  <textarea rows="10" cols="80" id="GOODS_CONTENT" name="GOODS_CONTENT">   
                  <c:if test="${type eq 'modify'}">${map.GOODS_CONTENT}</c:if>
                  </textarea>

               </td>
            </tr>
            </li>

            <tr>
               <th>카테고리 </th>
               <td>
                  <select name="GOODS_CATE" style="width:200px;">
                     <option value="고기 종류">고기 종류</option>
                     <option value="돼지고기">돼지고기</option>
                     <option value="소고기">소고기</option>
                     <option value="닭고기">닭고기</option>
                  </select>
               </td>
            </tr>
            
             <tr>
               <th>상품 중량 </th>
               <td>
                  <input type="checkbox" name="WEIGHT" value="300g(14mm)" style="padding:10px;"> 300g(14mm)
                  <input type="checkbox" name="WEIGHT" value="300g(16mm)" style="padding:10px;"> 300g(16mm)
                  <input type="checkbox" name="WEIGHT" value="300g(18mm)" style="padding:10px;"> 300g(18mm)
                  <input type="checkbox" name="WEIGHT" value="300g" style="padding:10px;"> 300g
                  <input type="checkbox" name="WEIGHT" value="200g" style="padding:10px;"> 200g
                  <input type="checkbox" name="WEIGHT" value="150g" style="padding:10px;"> 150g
                  <input type="hidden" name="GOODS_WEIGHT" id="GOODS_WEIGHT" value="">
               </td>
            </tr>
            
            <tr>
               <th>상품 가격 </th>
               <td>
                  <input type="text" name="GOODS_PRICE" id="GOODS_PRICE" placeholder="상품가격" size="40"  class="form-control"
                  style="padding:10px; width:70%;" value=<c:if test="${type eq 'modify'}">"${map.GOODS_PRICE}"</c:if>>
               </td>
            
            <tr>
               <th>상품수량 </th>
               <td>
               <input type="text" name="GOODS_ATT_AMOUNT" id="GOODS_ATT_AMOUNT" placeholder="상품수량" size="40"  class="form-control"
               style="padding:10px; width:70%;" value=<c:if test="${type eq 'modify'}">${map.GOODS_ATT_AMOUNT}</c:if>>
               <input type="hidden" id="GOODS_NUM" name="GOODS_NUM" value="${map.GOODS_NUM}">
               
                
               
               </td>
            </tr>
            
      </table>
      </ul>
   
   <br>   
   <div align="center">
   <c:if test="${type eq 'write'}"><a href="#this" class="btn btn-primary" id="write" onClick="fn_chk()">작성하기</a></c:if>
   <c:if test="${type eq 'modify'}"><a href="#this" class="btn btn-primary ml-2" name="update" onClick="fn_chk()">수정하기</a>
   									<a href="#this" name="delete1"><input
														type="button" class="btn btn-primary ml-2"
														value="삭제하기"></a></c:if>
   <input type="button" value="목록으로" class="btn btn-outline-primary ml-2" onclick="location.href='${contextPath}/yook/adminGoodsList.do'">
   </div>
  
   
</form>

</div>

<script type="text/javascript">

CKEDITOR.replace('GOODS_CONTENT',{
   filebrowserUploadUrl:"${pageContext.request.contextPath}/ckeditor/fileupload.do"});
 
var gfv_count = 1;

// $(document).ready(function() 함수 또는 코드가 호출 또는 실행되는 시점을
// 스케쥴링할 수 있게 해준다. 그 시점은 바로 문서객체모델이라고 하는 DOM
// (Document Object Model)이 모두 로딩되었을 때인데 이렇게
// $(document).ready(function() 안에 위치한 코드를 DOM이 모두 준비된 이후에 
// 실행되게끔 해준다.
$(document).ready(function() {
   $("#write").on("click", function(e){ //작성하기 버튼
      e.preventDefault();
      fn_insertBoard();
   });
   $("a[name='update']").on("click", function(e){ //수정하기 버튼
		e.preventDefault();
		fn_updateGoods($(this));	
	});

   
    $("a[name='delete1']").on("click",function(e){
       e.preventDefault();
       fn_delete($(this));
    });
});

function fn_insertBoard() { // 유효성체크
   var comSubmit = new ComSubmit("frm"); // 객체생성
   comSubmit.setUrl("<c:url value='/goodsWrite.do'/>"); // url설정
   comSubmit.set
   
    // 게시글 제목 필요
    if(!$("#GOODS_NAME").val()){
        alert("제목를 입력해주세요.");
        $("#GOODS_NAME").focus();
        return false;
    }
       // 게시글 내용 필요
    if(CKEDITOR.instances.GOODS_CONTENT.getData() =='' 
            || CKEDITOR.instances.GOODS_CONTENT.getData().length ==0){
        alert("내용을 입력해주세요.");
        $("#GOODS_CONTENT").focus();
        return false;
    } 
       
    // 상품원가 
    if(!$("#GOODS_PRICE").val()){
        alert("상품가격을 입력해주세요.");
        $("#GOODS_PRICE").focus();
        return false;
    }

 	// 상품중량
    if(!$("#GOODS_WEIGHT").val()){
        alert("상품중량을 입력해주세요.");
        $("#GOODS_WEIGHT").focus();
        return false;
    }
 /*   // 사이즈
    if(!$("#GOODS_ATT_SIZE").val()){
        alert("상품사이즈를 선택해주세요.");
        return false;
    }  
    // 컬러
    if(!$("#GOODS_COLOR").val()){
        alert("상품컬러를 입력해주세요.");
        $("#GOODS_COLOR").focus();
        return false;
    }*/ 
    // 상품 수량
    if(!$("#GOODS_ATT_AMOUNT").val()){
        alert("상품수량을 입력해주세요.");
        $("#GOODS_ATT_AMOUNT").focus();
        return false;
    }

    comSubmit.submit();
    alert("상품이 등록 되었습니다.");
}

function fn_chk() {
   
   var obj = $("[name=WEIGHT]");
   var chkArray = new Array(); //배열 선언

   $('input:checkbox[name=WEIGHT]:checked').each(function() { //체크된 값을 가져옴
      chkArray.push(this.value);
   });
   $('#GOODS_WEIGHT').val(chkArray);
   
}

function fn_updateGoods(obj){
	var comSubmit = new ComSubmit("frm");
	comSubmit.setUrl("<c:url value='/goodsModify.do' />");
	comSubmit.submit();
}

function fn_delete(obj){
    var comSubmit = new ComSubmit("frm");
    var CONFIRM = confirm("정말로 삭제하시겠습니까?");
    if(CONFIRM==true){ 
    comSubmit.setUrl("<c:url value='/deleteAdminGoods.do'/>");
    
    comSubmit.submit();
    alert("상품이 삭제 되었습니다.");
    }
}

</script>
<br>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>