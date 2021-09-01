<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<style>


</style>
</head>
<body>
<form action="memPwChangeOk" name="frm" method="post">
<div class="container">
<h1 class="h3 mb-3 fw-normal"><a  href="../index.jsp">EZEN FOOD</a></h1>
<h1 class="h3 mb-3 fw-normal">비밀번호 변경</h1> 
<div class="row">
<div class="col-md-6"> 
<div class="form-group">

<label for="name">비밀번호:</label>
<input type="password" value="${pwFail }" class="form-control" name="memPw" id="name" placeholder="현재 비밀번호를 입력하시오.">
<br>
<input type="submit" value="확인" />


</div>
</div>
</div>
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