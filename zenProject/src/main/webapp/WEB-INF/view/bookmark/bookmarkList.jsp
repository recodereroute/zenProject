<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border=1>
		<c:forEach items="${bmkList }" var="bmk">
			<tr>
				<td>${bmk.bookmarkKind }</td>
				<td><a href="menuDetail?menuNo${bmk.menuNo }"></a>${bmk.menuNo }</td>
				<c:if test="${authInfo.userId == bmk.memId }">
				<!--삭제 넣을꺼임   -->			
				<a herf="bookmarkDel?menuNo=${bmk.menuNo }&memId=${bmk.memId}">삭제</a>
						
				</c:if>

			</tr>
		</c:forEach>
	</table>
</body>
</html>