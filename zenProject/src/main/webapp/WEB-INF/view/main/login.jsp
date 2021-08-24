<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" href="../css/login.css">
    <!--구글 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
</head>

<body class="text-center">
<div class="login-box">
    <!-- login form {s} -->
    <c:if test="${empty authInfo }">
        <form:form action="loginOk" method="post" name="frm" modelAttribute="loginCommand">
        	<table>
                <tr>
                    <td colspan="2">
                        <h1 class="h3 mb-3 fw-normal"><a href="../index.jsp">EZEN FOOD</a></h1>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        아이디 저장<input type="checkbox" name="idStore" <c:if test="${!empty isId }">checked</c:if> />
                        | 자동 로그인<input type="checkbox" name="autoLogin" />
                    </td>
                </tr>
                <tr>
                    <td class="id-td td1">
                        <label for="input-id">아이디</label>
                    </td>
                    <td class="id-td td2">
                        <form:input path="userId" placeholder="UserId" value="${isId }" id="input-id"/>
                        <form:errors path="userId" />
                    </td>
                </tr>
                <tr>
                    <td class="pw-td td1">
                        <label for="input-pw">비밀번호</label>
                    </td>
                    <td class="pw-td td2">
                        <form:password path="userPw" placeholder="UserPassword" id="input-pw"/>
                        <form:errors path="userPw" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="btn-td">
                        <button class="sing-btn" type="submit">Sign in</button>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="footer-td">
                        <a href="../register">Sign up</a>
                        <p>© 2021 EZEN</p>
                    </td>
                </tr>
            </table>
        </form:form>
    </c:if>
</div>
</body>

</html>