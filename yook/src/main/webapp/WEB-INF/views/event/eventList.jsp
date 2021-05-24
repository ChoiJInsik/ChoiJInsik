<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>


<title>이벤트</title>
</head>
<body>
	<div id="layoutSidenav_content">
		<div class="container">
			<div style="height: 100px;"></div>
			<div align="center">
				<h3>식육증가 진행중인 이벤트</h3>
			</div>
			<div style="height: 30px;"></div>


			<div align="center"
				style="width: 1000px; margin-left: auto; margin-right: auto;">

				<div class="container" style="margin-top: 20px;">
					
					<table align="center" class="table table-hover"
						style="cellpadding: 7px;">
						<thead>
							<tr style="background-color: #EAEAEA;">
								<td style="width: 45%">제목 ${session_MEMBER.MEM_ID }</td>
								<td style="width: 12%"></td>
								<td style="width: 13%">이벤트 시작일</td>
								<td style="width: 13%">이벤트 종료일</td>
							</tr>
						</thead>
						<form id="frm" name="frm">
							<tbody>
								<c:choose>
									<c:when test="${fn:length(list) > 0 }">
										<c:forEach items="${list}" var="row">
											<tr>

												<td><a href="#this" name="title">${row.ET_TITLE}</a> <input
													type="hidden" id="ET_NUM" value="${row.ET_NUM}"></td>

												<td>${row.MEM_ID}</td>
												<td><fmt:formatDate pattern="yyyy/MM/dd"
														value="${row.ET_SD}" /></td>
												<td><fmt:formatDate pattern="yyyy/MM/dd"
														value="${row.ET_FD}" /></td>
											</tr>
										</c:forEach>
									</c:when>


									<c:otherwise>
										<tr>
											<td colspan="6">조회된 결과가 없습니다.</td>
										</tr>
									</c:otherwise>

								</c:choose>
							</tbody>
					</table>
					<div style="height: 80px;"></div>
					<div align="right">
						<%-- <button type="button" class="btn btn-primary btn-sm" onclick="location.href='${contextPath}/yook/adminEventWrite.do'">글 작성</button> --%>

					</div>
				</div>
			</div>

			<br>
			<script type="text/javascript">
				$(document).ready(function() {
					$("a[name='title']").on("click", function(e) {
						e.preventDefault();
						fn_openBoardDetail($(this));
					});
				});

				function fn_openBoardDetail(obj) {
					var comSubmit = new ComSubmit("frm");
					comSubmit.setUrl("<c:url value='/eventDetail.do'/>");
					comSubmit.addParam("ET_NUM", obj.parent().find("#ET_NUM")
							.val());
					comSubmit.submit();
				}
			</script>
		</div>
	</div>
</body>
</html>