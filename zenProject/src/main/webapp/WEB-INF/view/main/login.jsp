<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <style> .bd-placeholder-img {
     font-size: 1.125rem; 
     text-anchor: middle; 
     -webkit-user-select: none; 
     -moz-user-select: none;
      user-select: none; 
      } 
      @media (min-width: 768px) {
       .bd-placeholder-img-lg {
        font-size: 3.5rem;
        } 
       } 
     </style>

</head>
<body>
<body class="text-center">
 
 <h1 class="h3 mb-3 fw-normal"><a  href="../index.jsp">EZEN FOOD</a></h1>
 <!-- login form {s} --> 
 <c:if test="${empty authInfo }">
 
 <form:form action="loginOk" method="post" name="frm" 
		modelAttribute="loginCommand">
		 아이디 저장<input type="checkbox" name="idStore" 
			  <c:if test="${!empty isId }">checked</c:if> />
			 |  자동 로그인<input type="checkbox" name="autoLogin" />
			 
 	<div class="form-path-group">
 		<form:input path="userId" placeholder="UserId" value="${isId }"  />
		 <form:errors path="userId"  />   
 	 </div>
 	   
 	<div class="form-group">
 		 <form:password path="userPw" placeholder="UserPassword"/>
		 <form:errors path="userPw"  />
 	</div> <br>
 		
 		<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button><br>
 		<span style="font-size:11pt;"><a href="../register"> Sign up</a></span><br>	
 		 <p class="mt-5 mb-3 text-muted text-center">© 2021 EZEN</p> 
 		 </form:form>
 		 
</c:if>

<!-- jquery -->

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<!-- BootStrap -->

      <!-- 합쳐지고 최소화된 최신 CSS -->

      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

      <!-- 부가적인 테마 -->

      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
 
      <!-- 합쳐지고 최소화된 최신 자바스크립트 -->

      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>