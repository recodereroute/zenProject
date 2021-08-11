<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 정보</title>
</head>
<body>
나의 상세 정보<br />
아이디 : ${memberCommand.memId } <br />
이름 : ${memberCommand.memName } <br />
닉네임 : ${memberCommand.memNick } <br />
성별 : ${memberCommand.memSex } <br />
연락처 : ${memberCommand.memPhone } <br />
이메일 : ${memberCommand.memEmail } <br />
수신여부 :<c:if test="${memberCommand.memEmailChk == 'Y' }" > 
			이메일 수신 함
		</c:if> 
		<c:if test="${memberCommand.memEmailChk == 'N'}" > 
			이메일 수신 안함
		</c:if>
		<br />
<a href="memEdit">수정</a>
</body>
</html>