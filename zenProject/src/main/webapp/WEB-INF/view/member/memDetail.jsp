<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내 정보</title>
    <link rel="stylesheet" href="../css/memDetail.css">
    <!-- 폰트어썸 -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
    <!--구글 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
</head>

<body>
    <table>
        <tr>
            <td colspan="2" class="td1">
                <h1>나의 상세 정보</h1>
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
        <tr>s
            <td colspan="2" class="td1">
                <a href="memEdit"><button>수정</button></a><br>
                <a href="../index.jsp">메인으로 돌아가기</a>
            </td>
        </tr>
    </table>
</body>

</html>