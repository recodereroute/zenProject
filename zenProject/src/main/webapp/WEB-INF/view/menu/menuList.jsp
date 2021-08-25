<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 리스트</title>
</head>
<style>
</style>
<body>
	<div class="row">
		<div class="col-xs-2 col-md-2"></div>
		<div class="col-xs-8 col-md-8">
			<h1 class="h3 mb-3 fw-normal">
				<a href="../index.jsp">EZEN FOOD</a>
			</h1>
			<h1 class="h3 mb-3 fw-normal">메뉴 게시판</h1>
			<div class="table table-responsive">
				<table class="table">
					<c:forEach items="${lists }" var="dto" varStatus="cnt">
						<tr>
							<th class="success">메뉴번호</th>
							<td>${cnt.count }</td>
							<th class="success">조회수</th>
							<td>${dto.menuCnt }</td>
						</tr>

						<tr>
							<th class="success">작성자</th>
							<td>${dto.empNo }</td>
							<th class="success">작성일</th>
							<td><fmt:formatDate value="${dto.menuDate }" type="date"
									pattern="yy-MM-dd" /></td>
						</tr>
						</tr>

						<tr>
							<th class="success">메뉴이름</th>
							<td><a href="menuDetail?menuNo=${dto.menuNo }">${dto.menuName }</a></td>
						</tr>
						<tr>
							<th class="success">이미지</th>
							<td><c:if test="${empty dto.menuImg }">
					등록된 이미지가 없습니다.			
				</c:if> <c:if test="${!empty dto.menuImg }">
									<img src='../menu/upload/${dto.menuImg.split(",")[0] }'
										alt="이미지 불러오기 실패" width="300px" height="300px">
								</c:if></td>
						</tr>


					</c:forEach>
					<tr>
						<td colspan="5"><%@ include file="../include/includePage.jsp"%>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div align="center">
		<c:if test="${authInfo.grade >1}">
			<a class="btn btn-default" href="menuForm">메뉴 등록</a>
		</c:if>


	</div>


</body>
<!-- jquery -->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- BootStrap -->

<!-- 합쳐지고 최소화된 최신 CSS -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- 부가적인 테마 -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</html>