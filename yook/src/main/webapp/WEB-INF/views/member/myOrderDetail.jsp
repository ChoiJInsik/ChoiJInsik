<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
</head>
<body>
<div style="height: 160px;"></div>
<div align="center">
   <h3>My Order</h3>
</div>
<div style="height: 50px;"></div>



<div class="container" style="width:70%;">

<div align="center">
   <table style="border:1 solid #dbdbdb; margin-left:auto; margin-right:auto;" class="table">
      <tr>
         <th>주문일자</th>
         <td><fmt:formatDate pattern="yyyy/MM/dd" value="${map.ORDER_DATE}" /></td>
         <th>주문번호</th>
         <td>${map.ORDER_NUM}</td>
      </tr>
   </table>
</div>


<div class="table-responsive">
         <table class="table table-striped">
            <colgroup>
               <col width="15%" />
               <col width="15%" />
               <col width="15%" />
               <col width="15%" />
            </colgroup>
            <thead>
               
               <tr>
                  <th style="text-align: center">상품명</th>
                  <th style="text-align: center">수량</th>
                  <th style="text-align: center">상품가</th>
                  <th style="text-align: center"></th>
               </tr>
            </thead>
            <tbody>
                  <c:choose>
                  <c:when test="${fn:length(list) > 0 }">
                     <c:forEach items="${list}" var="row">
                        <tr>
                             <td align="center">${row.GOODS_NAME}<br/>${row.GOODS_WEIGHT } </td>
                             <td align="center">${row.ORDER_DETAIL_AMOUNT}</td>
                             <td align="center">${row.GOODS_PRICE}</td>
                             <td><a href="#this" name="shit"><input type="button" value="취소/교환/반품" style="float:right; margin-right:80px;" class="btn btn-outline-dark btn-sm">
                           <input type="hidden" id="MEM_NUM" name="MEM_NUM" value="${session_MEMBER.MEM_NUM}">
                            <input type="hidden" id="ORDER_NUM" name="ORDER_NUM" value="${row.ORDER_NUM}">
                            <input type="hidden" id="ORDER_DETAIL_GNUM" name="ORDER_DETAIL_GNUM" value="${row.ORDER_DETAIL_GNUM}">
                           <input type="hidden" id="ORDER_DETAIL_SIZE" name="ORDER_DETAIL_SIZE" value="${row.ORDER_DETAIL_SIZE}">
                            <input type="hidden" id="ORDER_DETAIL_COLOR" name="ORDER_DETAIL_COLOR" value="${row.ORDER_DETAIL_COLOR}"></a>
                        </td>                              
                        </tr>
                       </c:forEach>
                       </c:when>
                       </c:choose>                     
            </tbody>
         </table>
      </div>
      <hr>
   <!-- 배송 정보 -->
      <div class="table-responsive">
      
      <table style="width:100%;">
         <colgroup>
               <col width="15%" />
               <col width="*" />
         </colgroup>
          <tr>
                 <th colspan="7">배송정보 <hr></th>
          </tr>

         <tr>
            <td>받는 사람</td>            
            <td>${map.MEM_NAME}</td>                        
         </tr>
         <tr>
            <td>연락처</td>
            <td>${map.MEM_PHONE}</td>
         </tr>
         <tr>
            <td> 주 소</td>
            <td>
               ${map.ORDER_DZIPCODE}<br>
               ${map.ORDER_DADD1} ${map.ORDER_DADD2}
            </td>
         </tr>
         <tr>
            <td>배송 메모</td>
            <td>${map.ORDER_DMEMO}</td>
         </tr>
      </table>
      </div>
      <hr>

    <!-- 결제 정보 -->
      <div class="table-responsive">
      <table style="width:100%; cellpadding:10px;">
         <colgroup>
               <col width="20%" />
               <col width="*" />
         </colgroup>
         <tr>
            <th colspan="2">결제 정보<hr></th>
         </tr>
         <tr>
            <th>결제 금액</th>
            <th>${map.ORDER_TCOST}원</th>
         </tr>
         <tr>
            <td>결제 방법</td>
            <td>무통장입금</td>
         </tr>
         <tr>
            <td>입금자명</td>
            <td>${map.ORDER_PAY_NAME}</td>
         </tr>
         <tr>
            <td>환불 계좌</td>
            <td>
               ${map.ORDER_PAY_RBANK} ${map.ORDER_PAY_RACCOUNT}
         </td>
         </tr>
         
      </table>
      </div>
      <hr>
      <%-- <div style="float:right;">
      	<a href="#this" name="bt"><input type="button" class="btn btn-outline-primary" value="주문목록">
      	<input type="hidden" id="MEM_NUM" name="MEM_NUM" value="${session_MEMBER.MEM_NUM}">
		<input type="hidden" id="ORDER_NUM" name="ORDER_NUM" value="${row.ORDER_NUM}">
      	</a>
      </div> --%>
      
</div>

<script type="text/javascript">
   $(document).ready(function(){
         $("a[name='shit']").on("click", function(e){
         e.preventDefault();
         fn_shit($(this));
             });

         $("a[name='bt']").on("click", function(e){
             e.preventDefault();
             fn_bt();
                 });
         
      });


     function fn_shit(obj){
        var comSubmit = new ComSubmit();
        comSubmit.setUrl("<c:url value='/openMyChangeForm.do' />");
         comSubmit.addParam("MEM_NUM", obj.parent().find("#MEM_NUM").val());
         comSubmit.addParam("ORDER_NUM", obj.parent().find("#ORDER_NUM").val());
         comSubmit.addParam("GOODS_NUM", obj.parent().find("#GOODS_NUM").val());
         comSubmit.addParam("ORDER_DETAIL_GNUM", obj.parent().find("#ORDER_DETAIL_GNUM").val());
         comSubmit.addParam("ORDER_DETAIL_SIZE", obj.parent().find("#ORDER_DETAIL_SIZE").val());
         comSubmit.addParam("ORDER_DETAIL_COLOR", obj.parent().find("#ORDER_DETAIL_COLOR").val());
         
         comSubmit.submit();
     }

     function fn_bt(){
    	 var comSubmit = new ComSubmit();
         comSubmit.setUrl("<c:url value='/openMyOrderList.do' />");
         comSubmit.addParam("ORDER_NUM", $("#ORDER_NUM").val());
         comSubmit.addParam("MEM_NUM", $("#MEM_NUM").val());
         comSubmit.submit();
         }
     
   </script>

 
</body>
</html>
