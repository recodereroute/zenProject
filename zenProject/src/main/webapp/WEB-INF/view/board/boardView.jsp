<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardView.jsp</title>
</head>
<body>
	글번호 : ${dto.boardNo }
	<br /> 글제목 : ${dto.boardTitle }
	<br /> 글내용 : ${dto.boardCon }
	<br /> 등록일 :
	<fmt:formatDate value="${dto.boardDate }" type="date" pattern="yy-MM-dd" />
	<br /> 조회수 : ${dto.boardCnt }
	<br /> 등록한 아이디 : ${dto.memId }
	<br /> 파일 :
	<c:forTokens items="${dto.boardOrgFile }" delims="," var="fileName" varStatus="idx">
		<a
			href="fileDown?str=${dto.boardFile.split(',')[idx.index]}&org=${fileName}">
			${fileName }</a> / ${dto.boardFileSize.split(',')[idx.index]}KB<br />
	</c:forTokens>
	<br />
	<c:if test="${authInfo.userId == dto.memId }">
		<a href="boardUpdate?boardNo=${dto.boardNo }">수정</a>
	</c:if>
	
	
	<form action="bcmntWrite" method="post" >
		<input type="hidden" name="cmntMemId", value="${authInfo.userId}"/>
		<input type ="hidden" name = "boardNo", value = "${dto.boardNo }"/>
		<input type = "hidden" name = "boardMemId", value = "${dto.memId }"/>
		<table>
			<tr>
				<td>${authInfo.userId}</td>
				<td><textarea rows="2" cols="30" name="boardCmntCon"></textarea></td>
				<td><input type = "submit" value="등록"/></td>
			</tr>
		</table>
	</form>
	
	<table border = 1>
		<c:forEach items="${bcmntList }" var="bcmnt">
			<tr>
				<td>${bcmnt.cmntMemId }</td>
				<td>${bcmnt.boardCmntCon }</td>
				<td>${bcmnt.boardCmntDate }</td>
				<c:if test="${authInfo.userId == bcmnt.cmntMemId }">
					<td><a href="">수정</a> /<a href="">삭제</a></td>
				</c:if>
			</tr>
		</c:forEach>

	</table>






</body>
</html>