<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action ="columnModify" method="post">

글번호 : <input type="text" value="${dto.noticeNo }" readonly="readonly"
name="noticeNo"/> <br/>
글제목 :<input type="text" value="${dto.noticeTitle }" name="noticeTitle"/><br/>
글내욜 : <textarea rows="5" cols="30" name="noticeCon">${dto.noticeCon }</textarea> <br/>
등록일 : ${dto.noticeDate }<br/>
종류 : ${dto.noticeKind }<br/>
조회수 : ${dto.noticeCnt }<br/>
등록한 사원번호 : ${dto.empNo }<br/>
<input type="submit" value="수정완료"/>
<input type="button" value="삭제 "
onclick ="javascript:location.href='columnDel?noticeNo=${dto.noticeNo}'"/>
</form>

</body>
</html>