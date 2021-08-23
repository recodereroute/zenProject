<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 즐겨찾기 리스트</title>
</head>
<body>
	<table border=1>
		<c:forEach items="${bmkList }" var="bmk">
			<tr>
				<td>${bmk.bookMarkKind}</td>
				<td><a href="../menu/menuDetail?menuNo=${bmk.menuNo }">${bmk.menuNo }</a></td>
				<td>${menuName }</td>
				
				
				<c:if test="${authInfo.userId==bmk.memId}">
				<a href="bookmarkDel?menuNo=${bmk.menuNo }&memId=${bmk.memId}">삭제</a>
						
				</c:if>

			</tr>
		</c:forEach>
	</table>
</body>
</html>