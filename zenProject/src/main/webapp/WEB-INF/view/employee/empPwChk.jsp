<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 정보 확인</title>
</head>
<body>
	<form action="empPwConfirm" method="post" name="frm">
		비밀번호 : <input type="password" name="empPw" />
		<span>${pwFail }</span><br />
		<input type="submit" value="변경" />
	</form>
</body>
</html>