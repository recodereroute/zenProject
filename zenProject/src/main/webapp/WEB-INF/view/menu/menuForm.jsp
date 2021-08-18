<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="menuWrite" method="post" enctype="multipart/form-data">
		name : <input type="text" name="menuName" /> <br />
		main item : <input type="text" name="menuMainItem" /> <br />
		sum item : <input type="text" name="menuSubItem" /> <br />
		recipe : <textarea rows="5" cols="60" name="menuRecipe"></textarea> <br />
		image : 
			<input type="file" name="menuImg" multiple="multiple" />
			<input type="submit" value="submit">
			<input type="reset" value="reset" />
	</form>
</body>
</html>