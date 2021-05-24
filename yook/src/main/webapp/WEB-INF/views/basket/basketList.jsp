<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>장바구니</title>

   
   


<script type="text/javascript">


//상품선택
function fn_allchk(){
   
   var chk = document.getElementById("allchk").checked; 
   var arraychk = document.getElementsByName("chk"); 
   var len = arraychk.length;
      for(var i=0; i<len; i++){
         arraychk[i].checked = chk; 
      }
}





function fn_amount(index){
   var array8 = document.getElementsByName("goods_att_amount"); //재고수량
   var array1 = document.getElementsByName("basket_amount"); //수량
   var array4 = document.getElementsByName("chk");
   
   var att = Number(array8[index].value); 
   var amount = Number(array1[index].value);
   var basket_num = array4[index].value;
   var result = (amount<=att);
   
   
   if(amount=!null && amount>0){
      if(result==true){
    	  var comSubmit = new ComSubmit("commonForm");
    	  comSubmit.setUrl("<c:url value='/shop/basketModify.do' />");
    	  comSubmit.addParam("BASKET_AMOUNT", array1[index].value);
    	  comSubmit.addParam("BASKET_NUM", basket_num);
    	  comSubmit.submit();
      }else{
         alert("재고가 부족합니다.");   
         return false;
      }
   }else{
      alert("유효한 숫자가 아닙니다.");   
      return false;
   }
}


//상품 삭제
function fn_delete(index){
   var array4 = document.getElementsByName("chk");
   var basket_num = array4[index].value;

   if(confirm("삭제하시겠습니까?")){
      var comSubmit = new ComSubmit("commonForm");
      comSubmit.setUrl("<c:url value='/shop/basketDelete.do' />");
      comSubmit.addParam("BASKET_NUM", basket_num);
      comSubmit.submit();
   }
   return false;
}
//전체삭제
function fn_allDelete(){
   var array9 = document.getElementsByName("mem_num");
   var mem_num = array9[0].value;

   if(confirm("삭제하시겠습니까?")){
      var comSubmit = new ComSubmit("commonForm");
      comSubmit.setUrl("<c:url value='/shop/basketAllDelete.do' />");
      comSubmit.addParam("MEM_NUM", mem_num);
      comSubmit.submit();
   }
   return false;
}

function fn_allPrice(){ //전체주문금액구하기
   var array1 = document.getElementsByName("goods_price"); //상품가격
   var array2 = document.getElementsByName("basket_amount"); //장바구니 수량
   var array3 = document.getElementsByName("order_price"); //주문 가격
   var len = array2.length;
   var hap = 0;
   for (var i=0; i<len; i++){
      var sell = array1[i].value; 
      var amt = array2[i].value;
      var pri = Number(sell)*Number(amt); //각 상품별 주문금액
      hap = Number(hap)+Number(pri); //주문금액 총합 구하기
      array3[i].value = pri;
   }
   var fee = document.getElementById("order_fee").value;
   pay = Number(hap)+Number(fee);
   document.getElementById("all_price").value = hap; //상품금액
   document.getElementById("pay_price").value = pay; //상품금액+배송비
   document.getElementById("all_order_price").value = pay;
   alert("aa=");
}

function fn_all_order(){ //장바구니 전제주문
   document.basket.submit();
}

function fn_select_order(){ //선택상품 주문
	   var obj = $("[name=chk]");
	    var SELECT_BASKET_NUM = new Array(); // 배열 선언

	    // 체크된 체크박스의 value 값을 가지고 온다.
	    $('input:checkbox[name=chk]:checked').each(function() { // 체크된 체크박스의 value 값을 가지고 온다.
	       SELECT_BASKET_NUM.push(this.value);
	    });
	    if(SELECT_BASKET_NUM[0] != null){
	       var comSubmit = new ComSubmit("commonForm");
	      comSubmit.setUrl("<c:url value='/basketSelectOrder.do' />");
	      comSubmit.addParam("SELECT_BASKET_NUM", SELECT_BASKET_NUM);
	      comSubmit.submit();
	    }else{
	       alert("구매할 상품을 선택해 주세요.");
    }
}

</script>
</head>
<body onload="fn_allPrice()">
    <div style="height: 160px;"></div>
	<div align="center">
		<h3>장바구니</h3>
	</div>
	<div style="height: 50px;"></div>

	<div class="container" style="width: 70%;">

		<!-- tables -->
		<form id="commonForm" name="commonForm"></form>
		<form name="basket" method="post"
			action="/yook/basketAllOrderWrite.do">
			<input type="hidden" name="list" value="${list }">
			<input type="hidden" name="MEM_ID" value="${MEM_ID }">
		</form>

		<div class="table-responsive">
			<table class="table table-striped">
				<colgroup>
					<col width="5%" />
					<col width="15%" />
					<col width="25%" />        
					<col width="10%" />   
					<col width="15%" />
					<col width="15%" />
					
				</colgroup>
				<thead>
					<tr>
						<th style="text-align: center"><input type="checkbox"
							name="allchk" id="allchk" onclick="fn_allchk()"></th>
						<th colspan="2" style="text-align: center">상품정보</th>
						<th style="text-align: center">수량</th>
						<th style="text-align: center">상품가</th>
						<th style="text-align: center">주문금액</th>
						<th style="text-align: center">주문</th>
					</tr>
				</thead>
				<form id="frm" name="frm"></form>
				<tbody>
					<c:choose>  
						<c:when test="${fn:length(list) > 0}">
							
							<c:forEach items="${list }" var="row" varStatus="status">            
								
								<input type="hidden" name="mem_num" value="${row.MEM_NUM }">
								<input type="hidden" id="goods_num" name="goods_num" value="${row.GOODS_NUM }">
								
								
								<%-- <input type="hidden" name="basket_amount" value="${row.BASKET_AMOUNT }"> --%>
								<tr>
									<td style="text-align: center"><input type="checkbox" name="chk" id="chk" value="${row.BASKET_NUM}"></td>
									<td><img src="/yook/img/goods_upload/${row.GOODS_IMAGE}" width="80px" height="80px"></td>
									<td style="text-align: center"><a href="#this" name="title" style="text-decoration: none; color:black;">${row.GOODS_NAME }<br>(${row.GOODS_WEIGHT })
									</a>
									
									
									
										</td>  
									<td style="text-align: center"><input type="number" name="basket_amount" value="${row.BASKET_AMOUNT }"
										min="1" max="${row.GOODS_ATT_AMOUNT }" style="width: 50px; text-align: right"></td>
									<td style="text-align: center">
										
										${row.GOODS_PRICE }원 
                                		<c:set var="price" value="${row.GOODS_PRICE }" /></td>	
									<td style="text-align: center"><c:set var="goods_price" value="${price * row.BASKET_AMOUNT}" /> ${goods_price }원</td>

									<td style="text-align: center">
									<input type="button" name="amount_modify" class="btn btn-outline-dark btn-sm" value="수정"
										onclick="fn_amount(${status.index}); return false;"><br>
									<input type="button" name="basket_delete" class="btn btn-outline-dark btn-sm" value="삭제"
										onclick="fn_delete(${status.index})">
									<input type="hidden" id="goods_att_amount" name="goods_att_amount" value="${row.GOODS_ATT_AMOUNT }"/>
									</td>
								</tr>

								<c:set var="order_price" value="${order_price+goods_price}" />
								<input type="hidden" name="order_price" value="${order_price }">
								

							</c:forEach>
				</tbody>
			</table>
		</div>
		<div style="text-align: right">

			<input type="button" name="all_basket_delete" class="btn btn-outline-dark btn-sm" value="모두삭제" style="margin-right:15px;"
				onclick="fn_allDelete()">
		</div>
		</c:when>
		<c:otherwise>
			<tr>
				<td colspan="7" align="center">조회된 결과가 없습니다.</td>
			</tr>
			</tbody>
			</table>
	</div>
	</c:otherwise>
	</c:choose>
	<br>
	<br>
	
		<%-- <c:when test="${fn:length(list) > 0}">
			<div class="table-responsive">   
				<table class="table table-striped">
					<tr>
						<td>주문금액</td>
						<td>${order_price}원</td>
						<td>&nbsp;+&nbsp;&nbsp;배송비</td>
						<td>3000원</td>
						<td>&nbsp;=&nbsp;&nbsp;&nbsp;&nbsp;<strong>결제예정금액</strong></td>
						<td><strong>${order_price+3000}원</strong></td>
					</tr>
				</table>
			</div>

			 
		</c:when> --%>
		<div style="text-align: right">
				<input type="button" class="btn btn-primary" name="all_order" value="전체주문"
					onclick="fn_all_order()"> 
				<input type="button" class="btn btn-outline-primary" 
					name="select_order" value="선택상품주문" onclick="fn_select_order()">  
			</div>  
	


	</div>
<
<script>
        //무조건 html 아래에 배치해서 사용자가 페이지에 들어오자마자 적용되게 해주자
        var tt = "${chk}";
        if (tt == 'false') {
            $("#allCheck").prop("checked", false);
        } else {
            $("#allCheck").prop("checked", true);
            $(".chkbox").prop("checked", true);
            itemSum();
        }

</script> 

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>