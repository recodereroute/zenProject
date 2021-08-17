<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file ="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 사항</title>
</head>
<body>
	<table width = "300" border= 1>
		<tr>
			<td>번호</td><td>제목</td><td>등록일</td><td>조회수</td>
		</tr>
		<c:forEach items="${noticeList }" var="dto" varStatus="cnt">
		<tr>
			<td>${cnt.count }</td>
			
			<td><a href="noticeDetail?noticeNo=${dto.noticeNo }">${dto.noticeTitle }</a></td>
			<td><fmt:formatDate value="${dto.noticeDate }" type="date" pattern="yy-MM-dd"/></td>
			<td>${dto.noticeCnt }</td>
		</tr>
		</c:forEach>
	</table>
	 <c:if test="${authInfo.grade > 1 }">
	<a href="noticePost">게시글 등록</a>
	</c:if>
</body>
</html>