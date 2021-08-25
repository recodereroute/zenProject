<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>직원 정보 확인</title>
</head>
<style>
    .container{
        width: 700px;
        margin: auto;
        max-width: 700px;
    }

    .button4 {

        font-family: Verdana, Geneva, sans-serif;
        font-size: 24px;
        color: #FFF;
        padding: 5px 50px 5px 50px;
        border: 1px solid #999;

        text-shadow: 0px 1px 1px #666;
        text-decoration: none;

        -moz-box-shadow: 0 1px 3px #111;
        -webkit-box-shadow: 0 1px 3px #111;
        box-shadow: 0 1px 3px #111;

        border-radius: 4px;
        -moz-border-radius: 4px;
        -webkit-border-radius: 4px;

        background: #64a724;
        background: -moz-linear-gradient(top, #64a724 0%, #579727 50%, #58982a 51%, #498c25 100%);
        background: -webkit-gradient(linear, left top, left bottom, from(#64a724), to(#498c25), color-stop(0.4, #579727), color-stop(0.5, #58982a), color-stop(.9, #498c25), color-stop(0.9, #498c25));
        filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#64a724', endColorstr='#498c25', GradientType=0);

        .button4:hover {
            border: 1px solid #FFF;
        }
</style>

<body>

    <body>
        <form action="empPwConfirm" method="post" name="frm">
            <div class="container">
                <h1 class="h3 mb-3 fw-normal"><a href="../index.jsp">EZEN FOOD</a></h1>
                <h1 class="h3 mb-3 fw-normal">비밀번호 변경</h1>

                <label for="name">비밀번호:</label>
                <input type="password" value="${pwFail }" class="form-control" name="empPw" id="name"
                    placeholder="현재 비밀번호를 입력하시오.">
                <br>
                <input type="submit" value="확인" class="button4" />



            </div>
        </form>
    </body>
    <!-- jquery -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- BootStrap -->

    <!-- 합쳐지고 최소화된 최신 CSS -->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</html>