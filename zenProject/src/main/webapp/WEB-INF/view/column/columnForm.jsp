<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action ="columnWrite" method="post">
<table border = 1>
	<tr><td>제목</td><td><input type="text" name="noticeTitle" /></td></tr>
	<tr><td>내용</td><td><textarea rows="6" cols="30" name="noticeCon" ></textarea></td></tr>
	<tr><td colspan=2>
		<input type="submit" value = "등록" />
		<input type="reset" value = "초기화" />
	</td></tr>
	</table>

</form>
</body>
</html>