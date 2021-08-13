<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>

<body>
<form action ="boardModify" method="post">

글번호 : <input type="text" value="${dto.boardNo }" readonly="readonly"
name="boardNo"/> <br/>
글제목 :<input type="text" value="${dto.boardTitle }" name="boardTitle"/><br/>
글내용 : <textarea rows="5" cols="30" name="boardCon">${dto.boardCon }</textarea> <br/>
등록일 : ${dto.boardDate }<br/>
조회수 : ${dto.boardCnt }<br/>
등록한 회원 : ${dto.memId }<br/>
<input type="submit" value="수정완료"/>
<input type="button" value="삭제 "
onclick ="javascript:location.href='boardDel?boardNo=${dto.boardNo}'"/>
</form>

</body>
<
</html>