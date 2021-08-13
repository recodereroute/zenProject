<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action ="boardWrite" method="post" enctype="multipart/form-data">
title :<input type="text" name="boardTitle"/> <br/>
content : <textarea rows="5" cols="60" name="boardCon"></textarea> <br/>
file : <input type="file" name="boardFile" multiple="multiple"/>
<input type="submit" value="submit">
<input type="reset" value="reset"/>


</form>
</body>
</html>