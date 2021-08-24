<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 리스트</title>
</head>
<body>
	<table border=1>
		<tr>
<td>메뉴 이름</td>
<td>Edit</td>
		</tr>

	
		<c:forEach items="${menuName }" var="mn">
	
			<tr>
				<td><a href="../menu/menuDetail?menuNo=${mn.menuNo }">${mn.menuName }</a></td>
				<td><a href="bookmarkDelete?memId=${authInfo.userId}&menuNo=${mn.menuNo }">삭제</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>