<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 수정</title>
</head>
<body>
<form:form action="memEditOk" method="post" name="frm" 
	modelAttribute="memberCommand">
	<table border = 1 align="center">
		<form:hidden path="memId" />
		<form:hidden path="memName" />
		<form:hidden path="memSex" />
		<tr><td>아이디</td>
			<td> ${memberCommand.memId } </td></tr>
		<tr><td>비밀번호</td>
			<td>
				<input type="password" name="memPw" />
				<form:errors path = "memPw"/>
			</td></tr>
		<tr><td>이름</td>
			<td> ${memberCommand.memName } </td></tr>
		<tr><td>닉네임</td>
			<td><form:input path="memNick" /></td></tr>
		<tr><td>연락처</td>
			<td><form:input path="memPhone" /></td></tr>
		<tr><td>성별</td>
			<td><c:if test="${memberCommand.memSex == 'M'}">남자</c:if>
				<c:if test="${memberCommand.memSex == 'F'}">여자</c:if>
			</td></tr>
		<tr><td>이메일</td>
			<td><form:input path="memEmail" /></td></tr>
		<tr><td>이메일 수신여부</td>
			<td><input type="radio" name="memEmailChk" value="Y"
				 	<c:if test="${memberCommand.memEmailChk == 'Y'}">checked</c:if> 
				 >예			
				<input type="radio" name="memEmailCk" value="N" 
					<c:if test="${memberCommand.memEmailChk == 'N'}">checked</c:if> 
				>아니오</td></tr>	
			<tr><td colspan="2" align="center">
				<input type="submit" value="수정 완료" />
				<input type="button"  value="수정 안함" 
					onclick="javascript:history.back();" />
			</td></tr>
	</table>
</form:form>
</body>
</html>