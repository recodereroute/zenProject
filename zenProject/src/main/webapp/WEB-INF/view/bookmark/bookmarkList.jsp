<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    
    <%@include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${bmkList }" var="bmk" varStatus="cnt">
		<table border = 1>
			<tr>
				<td>${bmk.bookmarkKind }</td>
				<td >${bmk.menuNo }</td>
				
				<c:if test="${authInfo.userId == bmk.memId }">
					<td>
				</c:if>
			</tr>
		</table>
	</c:forEach>
</body>
</html>