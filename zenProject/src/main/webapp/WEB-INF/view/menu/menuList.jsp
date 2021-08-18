<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 리스트</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>번호</td>
			<td>이미지</td>
			<td>메뉴 이름</td>
			<td>등록일</td>
			<td>조회수</td>	
		</tr>
	<c:forEach items="${lists }" var="dto" varStatus="cnt">
		<tr>
			<td>${ctn.count }</td>
			<td><a href="menuDetail?menuNo=${dto.menuNo }">${dto.menuImg }</a></td>
			<td><a href="menuDetail?menuNo=${dto.menuNo }">${dto.menuName }</a></td>
			<td><fmt:formatDate value="${dto.menuDate }" type="date" pattern="yy-MM-dd"/></td>
			<td>${dto.menuCnt}</td>
		</tr>		
	</c:forEach>
		<tr>
			<td colspan="5">
				<%@ include file = "../include/includePage.jsp" %>
		</tr>
	</table>
	<c:if test="${authInfo.grade >1}">
	<a href="menuForm">메뉴 등록</a>
	</c:if>
</body>
</html>