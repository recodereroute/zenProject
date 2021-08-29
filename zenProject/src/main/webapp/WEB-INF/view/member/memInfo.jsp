<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
<style type="text/css">
* {
	margin: auto;
	padding: 0px;
	font-family: 'Poor Story', cursive;
}

a {
	text-decoration: none;
}

a:link {
	color: #EFFFE9;
}

a:visited {
	color: #EFFFE9;
}

a:hover {
	color: rgb(240, 236, 42);
}

li {
	list-style: none;
}

/* table */
body {
	font-size: 30px;
	color: #EFFFE9;
}

.container {
	padding: 100px;
}

table {
	width: 500px;
	height: 500px;
	border: #72CC82 solid 1px;
	background-color: #109972;
	border-radius: 10px;
	width: 500px;
	height: 500px;
	text-align: center;
}

button {
	width: 90%;
	height: 45px;
	border-radius: 10px;
	background-color: #754F44;
	color: #EFFFE9;
	font-size: 30px;
	border: 2px #EFFFE9 solid;
}
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap"
	rel="stylesheet">
</head>
<body>
<div class="container">
    <table>
        <tr>
            <td colspan="2"><h1>회원 정보</h1></td>
        </tr>
        <tr >
            <td>아이디</td>
            <td>${memberCommand.memId }</td>
        </tr>
        <tr >
            <td>이름</td>
            <td>${memberCommand.memName }</td>
        </tr>
        <tr >
            <td>닉네임</td>
            <td>${memberCommand.memNick }</td>
        </tr>
        <tr >
            <td>성별</td>
            <td>${memberCommand.memSex }</td>
        </tr>
        <tr >
            <td>연락처</td>
            <td>${memberCommand.memPhone}</td>
        </tr>
        <tr >
            <td>이메일</td>
            <td>${memberCommand.memEmail }</td>
        </tr>
        <tr>
            <td>수신여부</td>
            <td>
                <c:if test="${memberCommand.memEmailChk == 'Y' }" > 
                    	이메일 수신 함
		        </c:if> 
		        <c:if test="${memberCommand.memEmailChk == 'N'}" > 
			        	이메일 수신 안함
		        </c:if>
            </td>
        </tr>
        <tr>
	        	<td colspan="2"><a href="memDelete?memId=${memberCommand.memId }">회원 강퇴 시키기</a></td>
        </tr>
        <tr>
            <td colspan="2" class="td1"><a href="index.jsp">메인으로 돌아가기</a></td>
        </tr>
    </table>
</div>

</body>
</html>