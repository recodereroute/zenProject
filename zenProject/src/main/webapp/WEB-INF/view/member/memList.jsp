<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file = "../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 리스트</title>
</head>
<body>
회원 리스트 페이지입니다. <br />
<c:if test="${!empty memList }">
<table border = 1>
	<tr><td>닉네임</td><td>이름</td><td>이메일</td></tr>
	<c:forEach items="${memList }" var = "dto">
		<tr><td><a href ="memInfo?${dto.memId}">${dto.memNick }</a></td>
		<td>${dto.memName }</td><td>${dto.memEmail }</td></tr>
	</c:forEach>
	<tr><td colspan="3">
		<%@ include file="../include/includePage.jsp" %>
	</td></tr>
</table>
</c:if>
<c:if test="${empty memList }">
등록된 회원이 없습니다.
</c:if>
</body>
</html>