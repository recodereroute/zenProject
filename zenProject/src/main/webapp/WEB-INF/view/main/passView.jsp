<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<style>
{ margin:14px 7px 0; padding:0 0 29px; color:#333; font-size:13px; }
.info { padding:25px 21px 20px; border:1px solid #d5d5d5; text-align:center; background:#fff; }
.info p:last-child { margin:10px 0 0; }
.info span { color:#508bed; font-size:15px; font-weight:bold; }
.info strong { color:#508bed; font-weight:bold; }
.list { padding:14px; border:1px solid #d5d5d5; border-top:none; background:#fff; }
.btnArea { margin:20px ; 
			text-align: center; }
.btnArea a:link,.btnArea a:visited {
color: black;
}
a {
	text-decoration: none;
}

</style>
</head>
<body>
<div class="info">


        <p><span> 임시 비밀번호가 ${email }으로 전송되었습니다.</span></p>    
       
    </div>
  
    
  

    <div class="btnArea">
       <a href="../login/login" class="btnSubmit">로그인</a>  |
        	<a href="../" >메인 페이지로 가기</a>
    </div>

</body>
</html>