<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 수정</title>
</head>
<body>
<form action="bcmntModifyOk" method="post" name="frm">
	<input type ="hidden" name = "boardNo" value = "${dto.boardNo }"/>
	<input type ="hidden" name = "boardCmntNo" value = "${dto.boardCmntNo }"/>
	<table>
		<tr>
			<td>${authInfo.userId}</td>
			<td><textarea rows="2" cols="30" name="boardCmntCon" >${dto.boardCmntCon }</textarea></td>
			<td><input type = "submit" value="수정"/></td>
		</tr>
	</table>
</form>
</body>
</html>