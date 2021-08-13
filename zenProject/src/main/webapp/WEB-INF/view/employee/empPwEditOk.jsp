<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 정보 변경</title>
</head>
<body>
<form:form action="empPwUpdate" name="frm" method="post" id = "frm" 
	modelAttribute="employeeCommand">
현재 비밀번호 : <form:password path="oldPw" />
			<form:errors path="oldPw"/><br />
변경 비밀번호 : <input type="password" name="empPw" />
			<form:errors path="empPw"/><br />
변경 비밀번호 확인:<input type="password" name="empPwCon" />
			<form:errors path="empPwCon"/><br />
<input type="submit" value="비밀변호 변경" id="btn"/>
</form:form>
</body>
</html>