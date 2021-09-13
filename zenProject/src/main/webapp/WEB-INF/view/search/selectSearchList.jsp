<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file = "../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색결과</title>
<style>
.info { padding:25px 21px 20px; border:1px solid #d5d5d5; text-align:center; background:#fff; }
.info p:last-child { margin:10px 0 0; }
.info span { color:#508bed; font-size:15px; font-weight:bold; }
</style>
</head>
<body>
<div class="container">
<h1 class="h3 mb-3 fw-normal"><a href="index.jsp">만개의 레시피로 냉장고를 부탁해</a></h1>
<h1 class="h3 mb-3 fw-normal"> 검색 결과 </a></h1>
<div class="info">
 <p><span>상세검색결과는 조회수 상위 10개 까지만 출력합니다. </span></p>
</div>

<c:if test="${empty searchResult }">
	검색결과가 없습니다.
</c:if>
<c:if test="${!empty searchResult }">
<table class="table table-hover" border="1">
	<tr>
		<td>번호</td>
		<td>이미지</td>
		<td>메뉴 이름</td>
		<td>등록일</td>
		<td>조회수</td>	
	</tr>
	
	<c:forEach items="${searchResult }" var="dto" varStatus="cnt" begin="0" end="9">
			<tr>
				<td>${cnt.count}</td>
				<td>
					<c:if test="${empty dto.menuImg }">
						등록된 이미지가 없습니다.			
					</c:if>
					<c:if test="${!empty dto.menuImg }">
						<img src='menu/upload/${dto.menuImg.split(",")[0] }' alt="이미지 불러오기 실패" width="200px" height="200px" >
					</c:if>
				</td>
				<td><a href="menu/menuDetail?menuNo=${dto.menuNo }">${dto.menuName }</a></td>
				<td><fmt:formatDate value="${dto.menuDate }" type="date" pattern="yy-MM-dd"/></td>
				<td>${dto.menuCnt}</td>
			</tr>
	</c:forEach>
</table>
</c:if>
</div>
</body>
<!-- jquery -->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<!-- BootStrap -->
      <!-- 합쳐지고 최소화된 최신 CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

      <!-- 부가적인 테마 -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
 
      <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</html>