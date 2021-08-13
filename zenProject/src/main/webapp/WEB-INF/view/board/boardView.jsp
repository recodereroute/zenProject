<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
 	<%@include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardView.jsp</title>
</head>
<body>
글번호 : ${dto.boardNo } <br/>
글제목 : ${dto.boardTitle }<br/>
글내용 : ${dto.boardCon }<br/>
등록일 : <fmt:formatDate value="${dto.boardDate }" type="date" pattern="yy-MM-dd"/><br/>
조회수 : ${dto.boardCnt }<br/>
등록한 아이디 : ${dto.memId }<br/>
파일 :
	<c:forTokens items="${dto.boardOrgFile }" delims="," var="fileName" 
			varStatus="idx">
		<a href="fileDown?str=${dto.boardFile.split(',')[idx.index]}&org=${fileName}" >
		${fileName }</a> / ${dto.boardFileSize.split(',')[idx.index]}KB<br />
	</c:forTokens>
	<br /> 







<c:if test="${!empty authInfo }">
<a href="boardUpdate?boardNo=${dto.boardNo }">수정</a>
</c:if>

</body>
</html>