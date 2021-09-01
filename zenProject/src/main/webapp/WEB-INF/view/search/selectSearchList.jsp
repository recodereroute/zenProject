<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file = "../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색결과</title>
</head>
<body>
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
	
	<c:forEach items="${searchResult }" var="list" varStatus="cnt">
		<c:forEach items="${list }" var="dto">
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
	</c:forEach>
	</table>
</c:if>
</body>
</html>