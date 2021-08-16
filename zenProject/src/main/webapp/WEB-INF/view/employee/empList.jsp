<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file = "../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 리스트</title>
</head>
<body>
직원 리스트
	<c:if test="${empty list }">
		등록된 직원이 없습니다.
	</c:if>
	<table border=1>
		<tr>
			<td>사원번호</td>
			<td>이름</td>
			<td>직무</td>
			<td>입사일</td>
			<td>사무실 번호</td>
		</tr>
		<c:forEach var="empDTO" items="${list}">
		<tr>
			<td><a href="empInfo?empNo=${empDTO.empNo }">${empDTO.empNo }</a></td>
			<td>${empDTO.empName }</td>
			<td>${empDTO.empJob }</td>
			<td><fmt:formatDate value = "${empDTO.empHireDate }" type = "date" pattern = "yy-MM-dd"/></td>
			<td>${empDTO.empOfficeNum }</td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="5">
				<%@ include file="../include/includePage.jsp" %>
			</td>
		</tr>
	</table>
	<a href="main/empRegist">직원 등록</a>
</body>
</html>