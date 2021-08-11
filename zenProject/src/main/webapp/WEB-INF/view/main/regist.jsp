<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>
<form:form action="memRegist" method="post" name="frm" modelAttribute="memberCommand"> 
	<table border = 1 align="center">
		<tr><td>아이디</td>
			<td><form:input path="memId" />
				<form:errors path="memId"/>
			</td></tr>
		<tr><td>비밀번호</td>
			<td><form:password path="memPw" />
			<form:errors path="memPw"/></td></tr>
		<tr><td>비밀번호 확인</td>
			<td><form:password path="memPwCon" />
			<form:errors path="memPwCon"/></td></tr>
		<tr><td>이름</td>
			<td><form:input path="memName" />
			<form:errors path="memName"/></td></tr>
		<tr><td>닉네임</td>
			<td><form:input path="memNick"/>
				<form:errors path="memNick"/></td></tr>
		<tr><td>연락처</td>
			<td><form:input path="memPhone" />
			<form:errors path="memPhone"/></td></tr>
		<tr><td>성별</td>
			<td><form:radiobutton path="memSex"  value="M" checked="checked" />남자
				<form:radiobutton path="memSex" value="F" />여자
				<form:errors path="memSex"/></td></tr>
		<tr><td>이메일</td>
			<td><form:input path="memEmail" />
			<form:errors path="memEmail"/></td></tr>
		<tr><td>이메일 수신여부</td>
			<td><input type="radio" name="memEmailChk" value="Y" checked />예
			<input type="radio" name="memEmailChk" value="N" />아니오
			<form:errors path="memEmailChk"/></td></tr>
		<tr><td colspan="2" align="center">
				<input type="submit" value="가입 완료" />
				<input type="reset" value="취소" />
				<input type="button"  value="가입 안함" 
					onclick="javascript:location.href='main.sm'" />
			</td></tr>
	</table>
</form:form>
</body>
</html>