<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    <%@include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
글번호 : ${dto.noticeNo } <br/>
글제목 : ${dto.noticeTitle }<br/>
글내욜 : ${dto.noticeCon }<br/>
등록일 : ${dto.noticeDate }<br/>
종류 : ${dto.noticeKind }<br/>
조회수 : ${dto.noticeCnt }<br/>
등록한 직원번호 : ${dto.empNo }<br/>

<c:if test="${authInfo.grade > 1 }">
<a href="columnUpdate?noticeNo=${dto.noticeNo }">수정</a>
</c:if>

</body>
</html>