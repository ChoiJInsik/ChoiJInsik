<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">


<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<title>결제완료</title>
</head>

<body>
	<script type="text/javascript">
		function doNotReload() {
			if ((event.ctrlKey == true && (event.keyCode == 78 || event.keyCode == 82))
					|| (event.keyCode == 116)) {
				event.keyCode = 0;
				event.cancelBubble = true;
				event.returnValue = false;
			}
		}
		document.onkeydown = doNotReload;
	</script>


	<div style="height: 160px;"></div>
	<div align="center">
		<h3>주문 완료</h3>
	</div>
	<div style="height: 50px;"></div>

	<div class="container" style="width: 45%;">
		<div align="center" style="margin-bottom: 20px;">
			<span style="color: gray;">주문이 확인되었습니다! 아래 계좌로 입금해주셔야 주문이
				완료됩니다.</span>
		</div>
		<div>
			<table style="width: 100%;" class="table">
				<tr>
					<th width="30%" style="padding-left: 20px;">주문번호</th>
					<td>${map.ORDER_NUM}</td>
				</tr>
				<tr>
					<th width="30%" style="padding-left: 20px;">입금 계좌 안내</th>
					<td>무통장입금 : 1234-11-1234567 카카오뱅크 / (주)식육증가</td>
				</tr>
				<tr>
					<th width="30%" style="padding-left: 20px;">입금자명</th>
					<td>${map.MEM_NAME}</td>
				</tr>
				<tr>
					<th width="30%" style="padding-left: 20px;">입금 금액</th>
					<th><strong>${map.ORDER_TCOST} 원</strong></th>
				</tr>
			</table>

		</div>
		<hr>
		<div>
			<table style="width: 100%;" class="table">
				<tr>
					<th width="30%" style="padding-left: 20px;">받으시는 분</th>
					<td width="*">${map.MEM_NAME}</td>
				</tr>
				<tr>
					<th width="30%" style="padding-left: 20px;">연락처</th>
					<td>${map.MEM_PHONE}</td>
				</tr>
				<tr>
					<th width="30%" style="padding-left: 20px;">우편번호</th>
					<td>${map.ORDER_DZIPCODE}</td>
				</tr>
				<tr>
					<th width="30%" style="padding-left: 20px;">주 소</th>
					<td>${map.ORDER_DADD1}<br> ${map.ORDER_DADD2}
					</td>
				</tr>
				<tr>
					<th width="30%" style="padding-left: 20px;">배송메세지</th>
					<td>${map.ORDER_DMEMO}</td>
				</tr>

			</table>
		</div>
		<hr>
		<div align="center">
			<input type="button" class="btn btn-primary" value="홈으로"
				onClick="location.href='/yook/main.do'">
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous">
		
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous">
		
	</script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous">
		
	</script>
</body>
</html>