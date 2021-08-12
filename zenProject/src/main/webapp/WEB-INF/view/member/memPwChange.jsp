<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
</head>
<body>
<form action="memPwChangeOk" name="frm" method="post">
	비밀번호 : <input type="password" name="memPw" />
	<span>${pwFail}</span><br />
	<input type="submit" value="확인" />
</form>
</body>
</html>