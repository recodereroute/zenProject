<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file = "../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 사항</title>
</head>
<body>

	글 번호 : ${dto.noticeNo }<br />
	제목 : ${dto.noticeTitle }<br />
	내용 : ${dto.noticeCon }<br />
	등록일 : ${dto.noticeDate }<br />
	조회수 : ${dto.noticeCnt }<br />
	작성자 : ${dto.empNo }<br />
	파일 : <br />
	<c:forTokens items="${dto.noticeOrgFile }" delims="," var="fileName" varStatus="idx">
		<a href="fileDown?str=${dto.noticeFile.split(',')[idx.index] }&org=${fileName}">
		${fileName }</a>/${dto.noticeFileSize.split(',')[idx.index] }KB<br/>
	</c:forTokens>
	<c:if test="${authInfo.grade > 1 }">
	<a href="noticeEdit?noticeNo=${dto.noticeNo }">수정</a>
	</c:if>
</body>
</html>