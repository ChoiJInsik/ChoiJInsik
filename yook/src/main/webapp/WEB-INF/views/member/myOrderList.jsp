<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"> 

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 

  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script> 

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 
  
</head>
<body>
<div style="height: 160px;"></div>
<div align="center">
   <h3>My Order</h3>
</div>
<div style="height: 50px;"></div>

<div class="container" style="width:60%;">
   <table class="table" style="cellpadding:10; cellspacing:10; border:1px solid #bdbdbd" align="center">
            
      <tr>
      <td style="width:180px; padding-right:15px;" align="center">
      <h5><b>입금전</b></h5>
      ${map.PAT_NOT_YET}
      </td>
      <td style="width:180px; padding-right:15px;" align="center">
      <h5><b>배송준비중</b></h5>
      ${map.READY_DELIVERY}
      </td>
      <td style="width:180px; padding-right:15px;" align="center">
      <h5><b>배송중</b></h5>
      ${map.DELIVERING}
      </td>
      <td style="width:180px; padding-right:15px;" align="center">
      <h5><b>배송완료</b></h5>
      ${map.SCDELIVERY}
      </td>
      <td style="width:180px; padding-right:15px;" align="center">
      <h5><b>취소/교환/반품</b></h5>
      ${map.SHIT}
      </td>
      </tr>
      </table>
      
      
      <!-- 반복 -->
      

      <div>
         <table style="width:100%;" class="table">
            <thead>
            <tr>
               <th style="width:10%">주문번호</th>
               <th style="width:10%"></th>
               <th style="width:25%">상품명</th>
               <th style="width:14%">수량</th> 
               <th style="width:14%">가격</th>
               <th style="width:13%">상태</th>
               <th style="width:13%"></th>

              </tr>
              </thead>
            <tbody>
             
            <form id="frm" name="frm"></form>  
            <c:choose>
               <c:when test="${fn:length(list) > 0 }">
                <c:forEach items="${list}" var="row">            
            <tr>
               <td style="color:gray;"><font style="font-size:10pt;">${row.ORDER_NUM}</font>
               </td>
               <td><img src="/yook/img/goods_upload/${row.GOODS_IMAGE}" width="70px" height="70px"></td>
               
               <td><strong><a href="#this" name="detail">${row.GOODS_NAME}<br/>${row.ORDER_DETAIL_WEIGHT }
               <input type="hidden" id="MEM_NUM" name="MEM_NUM" value="${session_MEMBER.MEM_NUM}">
               <input type="hidden" id="ORDER_NUM" name="ORDER_NUM" value="${row.ORDER_NUM}">
               <input type="hidden" id="GOODS_NAME" name="GOODS_NAME" value="${row.GOODS_NAME}">
               <input type="hidden" id="GOODS_NUM" name="GOODS_NUM" value="${row.GOODS_NUM}">
               <input type="hidden" id="ORDER_DETAIL_WEIGHT" name="ORDER_DETAIL_WEIGHT" value="${row.ORDER_DETAIL_WEIGHT}">
               </a></strong></td>
               
               
               <td>${row.ORDER_DETAIL_AMOUNT}개</td>
               <td>${row.GOODS_PRICE * row.ORDER_DETAIL_AMOUNT}원</td>
               <td>
               <c:if test="${row.AORDER_STATE == '0'}">
               입금전
               </c:if>
               <c:if test="${row.AORDER_STATE == '1'}">
               배송준비중
               </c:if>
               <c:if test="${row.AORDER_STATE == '2'}">
               배송중
               </c:if>
               <c:if test="${row.AORDER_STATE == '3'}">
               배송완료
               </c:if>
               <c:if test="${row.AORDER_STATE == '4'}">
               취소요청
               </c:if>
               <c:if test="${row.AORDER_STATE == '5'}">
               취소처리
               </c:if>
               <c:if test="${row.AORDER_STATE == '6'}">
               교환요청
               </c:if>
               <c:if test="${row.AORDER_STATE == '7'}">
               교환중
               </c:if>
               <c:if test="${row.AORDER_STATE == '8'}">
               교환처리
               </c:if>
               <c:if test="${row.AORDER_STATE == '9'}">
               반품요청
               </c:if>
               <c:if test="${row.AORDER_STATE == '10'}">
               반품처리
               </c:if>
               </td>
               <td>
               
               <a href="#this" name="shit">
               <input type="button" class="btn btn-outline-primary" value="취소/교환/반품"/>
               <input type="hidden" id="MEM_NUM" name="MEM_NUM" value="${session_MEMBER.MEM_NUM}">
               <input type="hidden" id="ORDER_NUM" name="ORDER_NUM" value="${row.ORDER_NUM}">
               <input type="hidden" id="GOODS_NUM" name="GOODS_NUM" value="${row.GOODS_NUM}">
               <input type="hidden" id="ORDER_DETAIL_WEIGHT" name="ORDER_DETAIL_WEIGHT" value="${row.ORDER_DETAIL_WEIGHT}">
               </a>
               </td>
            </tr>
            </c:forEach>
            </c:when>
            <c:otherwise>
         <tr>
            <td colspan="6"> 주문 내역이 없습니다.</td>
         </tr>
      </c:otherwise>
      
            </c:choose>
           
            </tbody>
         </table>
      </div>
      <hr width="95%">
      <!-- 여기까지 -->
      <table style="width:100%;" class="table">
        
      </table>    
</div>
   <script type="text/javascript">
   $(document).ready(function(){
         $("a[name='detail']").on("click", function(e){
            e.preventDefault();
            fn_det($(this));
            });

         $("a[name='shit']").on("click", function(e){
         e.preventDefault();
         fn_shit($(this));
             });
      });


     function fn_shit(obj){
        var comSubmit = new ComSubmit("frm");
        comSubmit.setUrl("<c:url value='/openMyChangeForm.do' />");
         comSubmit.addParam("MEM_NUM", obj.parent().find("#MEM_NUM").val());
         comSubmit.addParam("ORDER_NUM", obj.parent().find("#ORDER_NUM").val());
         comSubmit.addParam("ORDER_DETAIL_WEIGHT", obj.parent().find("#ORDER_DETAIL_WEIGHT").val());
         comSubmit.addParam("GOODS_NUM", obj.parent().find("#GOODS_NUM").val());
         comSubmit.submit();
     }
     
      function fn_det(obj){
         var comSubmit = new ComSubmit("frm");
         comSubmit.setUrl("<c:url value='/openMyOrderDetail.do' />");
         comSubmit.addParam("MEM_NUM", obj.parent().find("#MEM_NUM").val());
         comSubmit.addParam("ORDER_NUM", obj.parent().find("#ORDER_NUM").val());
         comSubmit.addParam("GOODS_NAME", obj.parent().find("#GOODS_NAME").val());
         
         comSubmit.submit();
      }
   </script>
   
</body>
</html>