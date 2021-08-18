<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="bcmntModify" method="post" >
		
		<table>
			<tr>
				<td>${authInfo.userId}</td>
				<td><textarea rows="2" cols="30" name="boardCmntCon" >${boardCmntCon }</textarea></td>
				<td><input type = "submit" value="수정"/></td>
			</tr>
		</table>
	</form>
</body>
</html>