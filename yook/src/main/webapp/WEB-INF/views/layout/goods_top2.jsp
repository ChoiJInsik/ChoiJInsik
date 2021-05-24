<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!doctype html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">


<!-- icon -->
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
	

</head>

<body>
	<div class="album py-5 ">
		<div class="container">

			<div class="modal-body">
				<div class="row">
					
					<div class="col-md-5 ml-5 product_img">
						<img src="/yook/img/goods_upload/${map.GOODS_IMAGE}" width="300" height="300">
					</div>
					
					<div class="col-md-4 ">
						<div class="card mb-6 bg-white">
							<h2>${list.GOODS_NAME} </h2>
							<span>${Weight}</span>
							<span>${map.GOODS_CATE }</span>
							<p>
							<c:if test="${Weight == '[300g(14mm)]' }">
							100g당 ${map.GOODS_PRICE / 3}원
							</c:if>
							<c:if test="${Weight == '[300g(16mm)]' }">
							100g당 ${map.GOODS_PRICE / 3}원
							</c:if>
							<c:if test="${Weight == '[300g(18mm)]' }">
							100g당 ${map.GOODS_PRICE / 3}원
							</c:if>
							<c:if test="${Weight == '[300g]' }">
							100g당 ${map.GOODS_PRICE / 3}원
							</c:if>
							<c:if test="${Weight == '[200g]' }">
							100g당 ${map.GOODS_PRICE / 2}원
							</c:if>
							<c:if test="${Weight == '[150g]' }">
							100g당 ${map.GOODS_PRICE / 1.5}원
							</c:if>
							
							</p>
							<h3 class="cost">${map.GOODS_PRICE } </h3>
		
							<div class="card-body">
								<div class="col-sm-8"></div></div>
							<form id="frm" name="frm" method="post">
							<div class="btn-ground">
							
							
								<button style="width: 100px; height: 58px;" class="btn btn-danger" id="insertBasket" 
            					onclick="fn_InsertBasket()"><span class="glyphicon glyphicon-shopping-cart"></span> Add To Cart</button>
									
							<input type="hidden" name="IDX" id="IDX" value="${map.GOODS_NUM }"/>
							<input type="hidden" name="GOODS_WEIGHT" id="GOODS_WEIGHT" value="${map.GOODS_WEIGHT }	"/>	
							
							<input type="hidden" id="MEM_NUM" name="MEM_NUM" value="${session_MEMBER.MEM_NUM}">
							
							</form>	
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- buttons -->
<div class="container" align="center">
<button type="submit" class="btn btn-primary center">상품정보</button>
<button type="submit" class="btn btn-primary center" onclick="location.href='${contextPath}/yook/reviewDetail.do'"></button>
<button type="submit" class="btn btn-primary center" onclick="location.href='http://localhost:8049/yook/review.do'">상품상세</button>
</div><br><br></div>


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
</body>
</html>



<script type="text/javascript">

/* function fnMove(seq){
    var offset = $('#f' + seq).offset();
    $('html').animate({scrollTop : offset.top}, 400);
}

function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

var doubleSubmitFlag = false;
function doubleSubmitCheck(){
    if(doubleSubmitFlag){
        return doubleSubmitFlag;
    }else{
        doubleSubmitFlag = true;
        return false;
    }
} */

$(document).ready(function() {

   fn_selectGoodsList(1); // 상품문의 페이징x


   /* $("#insertBasket").on("click", function(e){ // 장바구니 버튼
      e.preventDefault(); 
      fn_InsertBasket();
   }); */



});



function fn_InsertBasket() { // 장바구니
	   
	   //if(doubleSubmitCheck()) return; // 중복클릭 방지
	   
	   if(${session_MEM_ID != null}){
	      
	         var url = "/yook/shop/basketPopUp.do";
	         var name = "popup";
	         var option = "width=382, height=227, top=500, left=800, location=no";
	         
	          var comSubmit = new ComSubmit("frm");
	         comSubmit.setUrl("<c:url value='/shop/insertBasket.do'/>");
	         window.open(url,name,option);
	         comSubmit.submit();
	      
	   }else {
	      alert("로그인 후 이용해주세요.");
	      location.href = "/yook/LoginForm.do";
	   }
	   
	}



/* var cnt = $('#dynamicTable table').length+1;

$('#WeightList').change(function(){
   $('#WeightList').change(function() {

   });
}); */

/* $('#CountList').change(function() {
   
   var WeightList = $('#WeightList option:selected').val();
   var CountList = $('#CountList option:selected').val();
   if(CountList != '' && WeightList == ''){
   $("#CountList").val('');
   alert("색상옵션을 먼저 선택하세요.");
   return false;
   }else{

      var html = "";         
      var weight = $("#WeightList option:selected").val();
      var count = $("#CountList option:selected").val();
      var price = $("#price").val();
      var IDX = $('#IDX').val();
      
      var totalCount = ${WeightSize} * ${Sizecnt};
      
      for(var i=1; i<=totalCount+30; i++) {
          if(weight == $("#nWeight"+i+"").text() && count == $("#nCount"+i+"").text()) {
               $("#WeightList").val('');
              $("#CountList").val('');
               alert("이미있는 상품입니다.");
               return false;
          }
      }   

      html = " <table class='total_cartAdd' style='border:1px solid #bdbebd; width:600px; height:100px; margin-top:0px;' class='fieldx"+cnt+"'> "
          + " <tr>"
          + " <td width='70px'>상품명 : </td>"
          + " <td> "
          + $("#goodsName").text()
           + " </td> "
           + " <td> "   
           + " <div id='field"+cnt+"' class='field"+cnt+"'> " 
           + " <div class='shopping-cart'> "
           + " <div class='product'> "
           + " <div class='product-quantity'> "
           + " <input name='GOODS_ATT_AMOUNT' type='number' value='1' min='1' style='width:50px; text-align:center; margin-left:250px; float:left;'> </div> "
           + " <div class='product-removal"+cnt+"'> "
           + " </div> "
           + " <div class='product-line-price' style='float:left; margin-left:10px;' id='price_sell' price_sell='"+${list.GOODS_MPRICE}+"' >"+numberWithCommas(${list.GOODS_MPRICE})+"</div> "
           + " <div class='product-removal"+cnt+"'> "
           + " <button class='remove-product' style='float:left; margin-left:10px;'> "
           + " X "
           + " </button>"
           + " </div> "
           + " </div> " 
           + " </td> "
           + " </tr> "
           + " <tr> "
           + " <td>색상 :</td> "
           + " <td id='nWeight"+cnt+"'>"+weight+"</td> "
           + " <td></td> "
           + " </tr> "
           + " <tr> "
           + " <td>사이즈 : </td> "
           + " <td id='nCount"+cnt+"'>"+count+"</td> "
           + " <td></td> "
           + " </tr> "
          + " <input type='hidden' name='GOODS_WEIGHT' id='GOODS_WEIGHT' value='"+weight+"'> "
          + " <input type='hidden' name='GOODS_COUNT' id='GOODS_COUNT' value='"+count+"'> "
          + " <input type='hidden' name='IDX' id='IDX' value='"+${list.GOODS_NUM}+"'> "
          + " </table> ";
             
      $("#dynamicTable").append(html);

      
      if($('#field'+cnt+'')) {
         recalculateCart();
         var hap = ${list.GOODS_MPRICE}*cnt;
         var num = numberWithCommas(hap);
         $('.totals-value').text(num);
      }

      
      $("#WeightList").val('');
      $("#COUNTList").val('');

      $('.product-removal'+cnt+' button').click( function() {
           //removeItem(this);
           $(this).parent().parent().parent().parent().parent().parent().parent().parent().remove();
           recalculateCart();
      });
      
      cnt++;
      
    } 


       Set rates + misc 
      var fadeTime = 300;

      
      $('.product-quantity input').change( function() {
        updateQuantity(this);
      });

      
      
      function recalculateCart()
      {
        var subtotal = 0;

        $('.product').each(function () {
          subtotal += parseInt($(this).children('.product-line-price').text().replace(',',''));
        });
        
       
        var total = subtotal;
        
        
        $('.totals-value').fadeOut(fadeTime, function() {

          $('#cart-total').html(numberWithCommas(total));
          if(total == 0){
            $('.checkout').fadeOut(fadeTime);
          }else{
            $('.checkout').fadeIn(fadeTime);
          }
          $('.totals-value').fadeIn(fadeTime);
        });
      }   
});  */ 


function fn_selectGoodsList(pageNo) {
   var comAjax = new ComAjax();
   
   comAjax.setUrl("<c:url value='goodsDetail.do' />");
   comAjax.setCallback("fn_selectGoodsListCallback");
   comAjax.addParam("IDX", $("#IDX").val());
   comAjax.ajax();
}


function fn_selectGoodsListCallback(data) {
   var total = data.TOTAL;
   var body = $("#board_list1");
   body.empty();
   
   if (total == 0) {
      var str = "<tr>" 
             + "<td colspan='5' align='center'>조회된 결과가 없습니다.</td>"
            + "</tr>";
      body.append(str);
   } else {
      var params = {
         divId : "PAGE_NAVI",
         pageIndex : "PAGE_INDEX",
         totalCount : total,
         recordCount : 9,
         eventName : "fn_selectGoodsList"
      };
      gfn_renderPaging(params);

      var str = "";
      var cnt1 = 1;
      
      body.append(str);
}
}

</script>