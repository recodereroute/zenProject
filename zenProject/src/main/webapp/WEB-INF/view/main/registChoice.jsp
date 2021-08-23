<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 가입</title>
    <link rel="stylesheet" href="css/registChoice.css">
    <!-- 폰트어썸 -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
    <!--구글 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
</head>

<body>
    <div class="select-zone">
        <table>
            <tr class="tr1">
                <td colspan="2"><h1>회원 가입</h1></td>
            </tr>
            <tr class="tr2">
                <td>
                	<a href="register/empRegist" id="emp-link">
                    	<p><i class="fas fa-user-cog"></i></p>
                    	직원 회원 가입
                    </a>
                </td>
                <td>
                    <a href="register/regist" id="mem-link">
                    	<p><i class="fas fa-user"></i></p>
                    	일반 회원 가입
                    </a>
                </td>
            </tr>
            <tr class="tr3">
                <td colspan="2"><a href="index.jsp">메인으로 돌아가기</a></td>
            </tr>
        </table>
    </div>
</body>

</html>