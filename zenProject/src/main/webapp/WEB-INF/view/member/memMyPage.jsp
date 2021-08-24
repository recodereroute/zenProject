<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이 페이지</title>
    <link rel="stylesheet" href="../css/memMyPage.css">
    <!-- 폰트어썸 -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
    <!--구글 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
</head>

<body>
    <table>
        <tr class="tr1">
            <td colspan="3">
                <h1>마이 페이지</h1>
            </td>
        </tr>
        <tr class="tr2">
            <td>
                <a href="memDetail">
                    <p><i class="fas fa-user-plus"></i></p>
                    회원정보
                </a>
            </td>
            <td>
                <a href="memPwChange">
                    <p><i class="fas fa-user-edit"></i></p>
                    비밀번호 변경
                </a>
            </td>
            <td>
                <a href="memOut">
                    <p><i class="fas fa-user-slash"></i></p>
                    회원탈퇴
                </a>
            </td>
        </tr>
        <tr class="tr3">
            <td colspan="3">
                <a href="index.jsp">메인으로 돌아가기</a>
            </td>
        </tr>
    </table>
</body>

</html>