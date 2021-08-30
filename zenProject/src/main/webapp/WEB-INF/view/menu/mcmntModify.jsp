<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 수정</title>
</head>
<body>
<form action="mcmntModifyOk" method="post" name="frm">
	<input type ="hidden" name = "menuNo" value = "${command.menuNo }"/>
	<input type ="hidden" name = "menuCmntNo" value = "${command.menuCmntNo }"/>
	<table>
		<tr>
			<td>${authInfo.userId}</td>
			<td><textarea rows="2" cols="30" name="menuCmntCon" >${command.menuCmntCon }</textarea></td>
			<td><input type = "submit" value="수정"/></td>
			<td><button type="button" onclick="javascript:location.href=''">취소</button></td>
		</tr>
	</table>
</form>
</body>
</html>