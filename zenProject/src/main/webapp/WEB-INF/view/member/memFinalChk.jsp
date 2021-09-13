<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
<style>
*{background-color :#EFFFE9;}
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
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#64a724', endColorstr='#498c25', GradientType=0 );
    
.button4:hover {
    border: 1px solid #FFF;
}
</style>
</head>
<body>
<form action="memOutOk" method="post" name="frm"
	onsubmit="return outConfirm()">
<div class="container">
<h1 class="h3 mb-3 fw-normal"><a  href="../index.jsp">만개의 레시피로 냉장고를 부탁해</a></h1>
<h1 class="h3 mb-3 fw-normal">회원 탈퇴</h1> 
<div class="row">
<div class="col-md-6"> 
<div class="form-group">

<label for="name">비밀번호:</label>
<input type="password" value="${pwFail }" class="form-control" name="memPw" id="name" >
<br>
<input type="submit" value="탈퇴" class="button4" />


</div>
</div>
</div>
</div>
</form>

</body>
<script type="text/javascript">
	function outConfirm(){

		if(confirm("정말로 탈퇴하시겠습니까?")){
			document.frm.submit();
		}else{
			return false;
		}
	}
			
			
			
</script>
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