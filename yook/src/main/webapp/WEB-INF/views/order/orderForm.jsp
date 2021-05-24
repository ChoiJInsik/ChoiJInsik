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

 <!--load everything-->
 <script defer src="/static/fontawesome/fontawesome-all.js"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">


<title>결제</title>

<script type="text/javascript">
   function DaumAddressAPI() {
      new daum.Postcode(
            {
               oncomplete : function(data) {
                  
                  var addr = ''; // 
                  var extraAddr = ''; 

                  
                  if (data.userSelectedType === 'R') { 
                     addr = data.roadAddress;
                  } else { 
                     addr = data.jibunAddress;
                  }

                  
                  if (data.userSelectedType === 'R') {
                     if (data.bname !== ''
                           && /[동|로|가]$/g
                                 .test(data.bname)) {
                        extraAddr += data.bname;
                     }
                     
                     if (data.buildingName !== ''
                           && data.apartment === 'Y') {
                        extraAddr += (extraAddr !== '' ? ', '
                              + data.buildingName
                              : data.buildingName);
                     }
                     
                     if (extraAddr !== '') {
                        extraAddr = ' (' + extraAddr
                              + ')';
                     }
                     /* 
                     document
                           .getElementById("MEM_ADDRESS3").value = extraAddr; */

                  } /* else {
                     document
                           .getElementById("MEM_ADDRESS3").value = '';
                  } */

                  
                  document
                        .getElementById('ORDER_DZIPCODE').value = data.zonecode;
                  document
                        .getElementById("ORDER_DADD1").value = addr;
                  
                  document.getElementById(
                        "ORDER_DADD2")
                        .focus();
               }
            }).open();
   }

   function fn_allPrice(){
		
		var array1 = document.getElementsByName("goods_price");
		var array2 = document.getElementsByName("BASKET_AMOUNT");
		var array3 = document.getElementsByName("ORDER_PRICE");
		
		var len = array2.length;
		var hap = 0;
		for (var i=0; i<len; i++){
			var sell = array1[i].value;
			var amt = array2[i].value;
			var pri = Number(sell)*Number(amt); //각 상품별 주문금액
			hap = Number(hap)+Number(pri); //주문금액 총합 구하기
			array3[i].value = pri;	
		}
		var aa = document.getElementById("ORDER_PRICE").value;
		var fee = document.getElementById("ORDER_DCOST").value;
		pay = Number(aa)+Number(fee);
		
		
		document.getElementById("ORDER_TCOST").value = pay; //최종결제금액

	}

   function fn_order_pay(){
	      
	      var f = document.orderWrite;
	      
	      if( f.MEM_NAME.value=="" ){
	         alert("주문자 이름을 입력해주세요.");
	         f.MEM_NAME.focus();
	         return false;
	      }
	      if( f.MEM_PHONE.value==""){
	         alert("전화번호를 입력해주세요.");
	         f.MEM_PHONE.focus(); //커서자동클릭
	         return false;
	      }
	      if( f.ORDER_DADD1.value=="" || f.ORDER_DADD1.value=="" || f.ORDER_DADD2.value==""){
	         alert("주소를 정확히 입력해주세요.");
	         return false;
	      }
	      
	      if( f.ORDER_PAY_NAME.value==""){
	         alert("결제자명을 입력해주세요.");
	         f.ORDER_PAY_NAME.focus(); //커서자동클릭
	         return false;
	      }

	      alert("주문이 완료 되었습니다. 감사합니다:)");
	      f.submit();
	      
	}
	
   </script>
</head>


<body onload="fn_allPrice()">

  <div style="height: 160px;"></div>
  <div align="center">
     <h3>주문/결제</h3> 
  </div>
  <div style="height: 50px;"></div>
  <div class="container" style="width:70%;">
  
  <form name="orderWrite" id="orderWrite" method="post" action="/yook/orderPay.do">
  <!-- 주문할 상품 리스트 (basketList에서 긁어옴) -->
   <%-- <div class="table-responsive">
         <table class="table table-striped">
            <colgroup>
               <col width="15" />
               <col width="*" />
               <col width="25%" />
               <col width="15%" />
               <col width="15%" />
            </colgroup>
            <thead>
               <tr>
                  <th colspan="7">주문 상품 정보</th>
               </tr>
               <tr>
                  <th colspan="2" style="text-align: center">상품명/옵션</th>
                  <th style="text-align: center">수량</th>
                  <th style="text-align: center">상품가</th>
                  <th style="text-align: center">주문금액</th>
               </tr>
            </thead>
            <tbody>
                     <c:forEach items="${list }" var="row" varStatus="status">
                       		<input type="hidden" id="GOODS_NUM" name="GOODS_NUM" value="${row. GOODS_NUM }"/>
							<input type="hidden" id="BASKET_NUM" name="BASKET_NUM" value="${row. BASKET_NUM }"/>
							<input type="hidden" name="GOODS_ATT_AMOUN" value="${row.GOODS_ATT_AMOUNT }">
                       		<input type="hidden" name="GOODS_WEIGHT" value="${row.GOODS_WEIGHT }">
                       		<input type="hidden" name="GOODS_ATT_NO" value="${row.GOODS_ATT_NO }">
                       		<input type="hidden" name="BASKET_AMOUNT" value="${row.BASKET_AMOUNT }">
                        <tr>
                           <td><img src="/yook/img/goods_upload/${row.GOODS_IMAGE}" width="70px" height="70px"></td>
                           <td>${row.GOODS_NAME } 
                              <br>  (${row.GOODS_WEIGHT })
                           </td>
                           <td style="text-align: center">
                              <input type="number" name="BASKET_AMOUNT" readonly="readonly" value="${row.BASKET_AMOUNT }" min="1" max="${row.GOODS_ATT_AMOUNT }" style="width: 50px; text-align: right">
                           </td>
                           
                           <td style="text-align: center">
                              
                              <strong><input type="number" name="goods_price2" value="${row.GOODS_PRICE }" readonly>원</strong>
                                 
                           </td>
                           
                           <td style="text-align: center"><strong><input type="NUMBER" name="ORDER_PRICE2" value="${row.GOODS_PRICE * row.BASKET_AMOUNT}" readonly>원</strong>
                           </td>
                           
                           
                        </tr>

                     </c:forEach>
            </tbody>
         </table>
      </div>
      <hr> --%>
  
        
        <!-- 주문자 정보 -->
        <div class="table-responsive">
        <table style="width:100%;">
           <colgroup>
                 <col width="15%" />
                 <col width="*" />
              </colgroup>
           <tr>
              <th colspan="2">배송지 정보<hr></th>
           </tr>
           <tr>
              <td>이름</td>
              <td><input name="MEM_NAME" value="${map.MEM_NAME}" readonly="readonly" id="MEM_NAME" class="form-control" style="width:20%;"></td>
           </tr>
           <tr>
              <td>이메일</td>
              <td><input id="MEM_EMAIL" name="MEM_EMAIL" value="${map.MEM_EMAIL}" readonly="readonly" class="form-control" style="width:40%;"></td>
           </tr>
           <tr>
              <td>연락처</td>
              <td><input id="MEM_PHONE" name="MEM_PHONE" value="${map.MEM_PHONE}" readonly="readonly" class="form-control" style="width:40%;"></td>
           </tr>
           <tr>
            <td rowspan="3"> 주 소</td>
            <td>
               <input type="text" id="ORDER_DZIPCODE" name="ORDER_DZIPCODE" placeholder="우편번호" class="form-control" readonly style="display:inline-block; width:40%;">
               <input type="button" onclick="DaumAddressAPI()" class="btn btn-outline-primary mb-2" value="우편번호 찾기" style="display:inline-block;"><br>
            </td>
         </tr>
         <tr>
            <td>
               <input type="text" name="ORDER_DADD1" id="ORDER_DADD1" placeholder="주소"  size="40" class="form-control" style="width:55%;">
            <td>
         <tr>
            <td>
               <input type="text" name="ORDER_DADD2" id="ORDER_DADD2" placeholder="상세주소" size="40" class="form-control" style="width:55%;">
                <p>※도서산간 지역의 경우 추후 수령 시 추가 배송비가 과금될 수 있습니다.</p>
              </td>
         </tr>
         <tr>
            <td>배송 메모</td>
            <td><textarea id="ORDER_DMEMO" name="ORDER_DMEMO" rows="2" style="width:90%;" class="form-control"></textarea></td>
         </tr>
        </table>
        </div>
        <hr>
        
       <!-- 결제 정보 -->
        <div class="table-responsive">
        <table style="width:100%;">
           <colgroup>
                 <col width="20%" />
                 <col width="*" />
           </colgroup>
           <tr>
              <th colspan="2">결제 정보<hr></th>
           </tr>
           <tr>
              <td>결제 방법</td>
              <td><input class="form-check-input" id="ORDER_PAY" name="ORDER_PAY" type="radio" checked id="radio">
                 <label class="form-check-label" for="radio" value="무통장입금">무통장입금 : 1234-11-1234567 카카오뱅크 / (주)식육증가</label>
              </td>
           </tr>
           <tr>
              <td>무통장 입금자명</td>
              <td><input type="text" id="ORDER_PAY_NAME" name="ORDER_PAY_NAME" class="form-control" style="width:30%;"></td>
           </tr>
           <tr>
              <td>환불 은행</td>
              <td>
                <select name="ORDER_PAY_RBANK"  id="ORDER_PAY_RBANK" class="form-control" style="width:40%; display:inline-block;">
                <option value="신한">신한</option>
                <option value="국민">국민</option>
                <option value="우리">우리</option>
          </select>
        </td>
           </tr>
           <tr>
              <td>환불 계좌번호</td>
          <td><input type="text" id="ORDER_PAY_RACCOUNT" name="ORDER_PAY_RACCOUNT" class="form-control" style="width:40%; display:inline-block;"></td>
           </tr>
        </table>
        </div>
        <hr>
        
        
        
        <!-- 금액 합계 구하기 -->
        
        
        <c:choose>  
						<c:when test="${fn:length(list) > 0}">
							<c:forEach items="${list }" var="row" varStatus="status">
							<c:set var="goods_price2" value="${row.GOODS_PRICE}" />
							<c:set var="goods_price" value="${row.GOODS_PRICE * row.BASKET_AMOUNT}" /> 
							<c:set var="BASKET_AMOUNT" value="${row.BASKET_AMOUNT}" />
							<c:set var="order_price" value="${order_price+goods_price}" />
							<input type="hidden" id="GOODS_NUM" name="GOODS_NUM" value="${row. GOODS_NUM }"/>
							<input type="hidden" id="BASKET_NUM" name="BASKET_NUM" value="${row. BASKET_NUM }"/>
							<input type="hidden" name="GOODS_ATT_AMOUNT" value="${row.GOODS_ATT_AMOUNT }">
                       		<input type="hidden" name="GOODS_WEIGHT" value="${row.GOODS_WEIGHT }">
                       		<input type="hidden" name="GOODS_ATT_NO" value="${row.GOODS_ATT_NO }">
                       		<input type="hidden" name="BASKET_AMOUNT" value="${row.BASKET_AMOUNT }">
							</c:forEach>
						</c:when>
		</c:choose>
		
		
        <!-- 결제 예정 금액 -->
        <div>
        <table style="width:100%;">
           <div class="container text-center">
            <div class="row">
              <div class="col">
                <div class="card-deck">
                  <div class="card-body text-left">
                    <p class="card-text">
                      <ul class="list-unstyled">
                        <li class="mb-2">총 상품가격</li>
                        <li class="mb-2">배송비</li>
                        <!-- <li class="mb-2">적립금</li> -->
                        <li class="mb-2">총 결제 예정 금액</li>
                      </ul>
                    </p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card-deck">
                  <div class="card-body text-right">
                    <p class="card-text">
                      <ul class="list-unstyled">
                        <li class="mb-2"><strong><input type="text" align="right" id="ORDER_PRICE" name="ORDER_PRICE" readonly="readonly" value="${order_price }">원</strong></li>
                        <li class="mb-2"><strong><input type="text" id="ORDER_DCOST" name="ORDER_DCOST" value="3000" readonly="readonly">원</strong></li> 
                        <!-- <li class="mb-2"><strong><input type="text" align="right" id="POINT_ADD" name="POINT_ADD" readonly="readonly" value="">원</strong></li> -->
                        <li class="mb-2"><strong><input type="text" id="ORDER_TCOST" name="ORDER_TCOST" readonly="readonly" value="${order_price + 3000 }">원</strong></li> 
                        <%-- <input type="hidden" id="ORDER_TCOST" name="ORDER_TCOST" value="${order_price+3000}"/> --%>
                      </ul>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </table>
        </div>
        
        <!-- 결제 버튼 -->
        <div align="center" style="margin-top:50px;" class="mb-5">
           <input type="button" class="btn btn-outline-primary" value="카카오페이 결제" onClick="location.href='/yook/payment.do'" style="background-color:red; color:white;">
           <input type="button" class="btn btn-primary" name="order_pay" value="주문하기" onclick="fn_order_pay()">
           <input type="button" class="btn btn-outline-primary" value="주문취소" onClick="location.href='/yook/basketList.do'">
           
        </div>
   
  </div>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>