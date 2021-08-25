<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
</head>
<body>
<div class="container">
    <table>
        <tr>
            <td colspan="2" class="td1">
                <h1>회원 정보</h1>
            </td>
        </tr>
        <tr >
            <td>
                <label for="id">아이디</label>
            </td>
            <td>
                ${memberCommand.memId }
            </td>
        </tr>
        <tr >
            <td>
                <label for="id">이름</label>
            </td>
            <td>
                ${memberCommand.memName }
            </td>
        </tr>
        <tr >
            <td>
                <label for="id">닉네임</label>
            </td>
            <td>
                ${memberCommand.memNick }
            </td>
        </tr>
        <tr >
            <td>
                <label for="id">성별</label>
            </td>
            <td>
                ${memberCommand.memSex }
            </td>
        </tr>
        <tr >
            <td>
                <label for="id">연락처</label>
            </td>
            <td>
                ${memberCommand.memPhone}
            </td>
        </tr>
        <tr >
            <td>
                <label for="id">이메일</label>
            </td>
            <td>
                ${memberCommand.memEmail }
            </td>
        </tr>
        <tr>
            <td>
                <label for="id">수신여부</label>
            </td>
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
            <td colspan="2" class="td1">
                <a href="index.jsp">메인으로 돌아가기</a>
            </td>
        </tr>
    </table>
</div>

</body>
</html>