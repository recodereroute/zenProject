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
<c:if test="${!empty authInfo }">
<a href="boardUpdate?boardNo=${dto.boardNo }">수정</a>
</c:if>

</body>
</html>