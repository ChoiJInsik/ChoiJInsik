<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@	taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script type="text/javascript">
	function delchk() {
		return confirm("삭제하시겠습니까?");
	}
</script>

<div id="layoutSidenav_content">
	<main>
		<div class="container-fluid">
			<h1 class="mt-4">리뷰 관리</h1>

</div> 
<div class="container" style="text-align: left;" >
<div style="display: inline-block;text-align:">

	<div align="left">
		<div class="container" style="margin-top:20px;">
		
		<div class="panel-body">
			<div class="dataTable_wrapper">
				<div id="dataTables-example_wrapper"
					class="dataTables_wrapper form-inline dt-bootstrap no-footer">
					<div class="row" style="margin-bottom: 5px;">
						<div class="col-sm-6">
							<a href="/pet/admin/adminreviewList.dog?searchNum=0&isSearch="><button
									type="button" class="btn btn-outline btn-default">전체</button></a>
						</div>
						<div class="col-sm-6" style="text-align: left;">
							<div class="dataTables_info" id="dataTables-example_info"
								role="status" aria-live="polite"></div>
						</div>

						<div class="row">
							<div class="col-sm-12">
								<table
									class="table table-striped table-bordered table-hover dataTable no-footer"
									id="dataTables-example" role="grid" aria-describedby="dataTables-example_info" style="width: 160%;">
									<thead>
										<tr role="row">
											<th style="width: 12%; text-align: center;">번호</th>
											<th style="width: 40%; text-align: center;">제목</th>
											<th style="width: 12%; text-align: center;">작성자</th>
											<th style="width: 12%; text-align: center;">내용</th>
											<th style="width: 12%; text-align: center;">등록일자</th>
											<th style="width: 12%; text-align: center;">관리</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="review" items="${list}">
											<tr class="gradeA even" role="row">
												<td style="text-align: center; vertical-align: middle;">${review.RE_NUM}</td>
												<td style="text-align: center; vertical-align: middle;">${review.RE_TITLE}</td>
												<td style="text-align: center; vertical-align: middle;">${review.MEM_NAME}</td>
												<td style="text-align: center; vertical-align: middle;">${review.RE_CONTENT}</td>
												<td style="text-align: center; vertical-align: middle;"><fmt:formatDate
														value="${review.RE_DATE}" pattern="YY.MM.dd HH:mm" /></td>
												<td><a href="#"><input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png" onclick="return delchk()"></a></td>
											</tr>
										</c:forEach>
										<!--  등록된 상품이 없을때 -->
										<c:if test="${fn:length(list) le 0}">
											<tr><td colspan="9" style="text-align: center;">등록된 상품이 없습니다</td></tr>
										</c:if>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>
</div>
</div>
</main>
</div>

<script type="text/javascript">
		$(document).ready(function(){
			fn_selectBoardList(1);

function fn_selectBoardList(pageNo){
	var comAjax = new ComAjax();
	comAjax.setUrl("<c:url value='/adminReviewList.do' />");
	comAjax.setCallback("fn_selectBoardListCallback");
	comAjax.addParam("PAGE_INDEX", $("#PAGE_INDEX").val());
	comAjax.addParam("PAGE_ROW", 3);
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
// 		$.each(data.list, function(key, value){
// 			str += "<tr>" + 
// 						"<td>" + value.GOODS_NUM + "</td>" + 
					
// 						"<td>" + value.GOODS_NAME + "</td>" + 
// 						"<td>" + value.GOODS_CATE + "</td>" + 
// 						"<td>" + value.GOODS_PRICE + "</td>" +
// 						"<td>" + value.GOODS_WEIGHT + "</td>" +
// 						"<td>" + value.GOODS_ATT_AMOUNT + "</td>" +
// //							"<td>" + value.CREA_DTM + "</td>" +
// 					"</tr>";
// 		});
		body.append(str);
		
		$("a[name='title']").on("click", function(e){ //제목 
			e.preventDefault();
			fn_openBoardDetail($(this));
		});
	}
}
</script>	
</body>
