<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 화면</title>
<style>
.dropbtn {
  background-color: #ea2129;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
</style>
</head>
<body>
<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp">EZEN FOOD</a>
		</div>
</nav>
<div class="dropdown">
  <button class="dropbtn">메뉴</button>
  <div class="dropdown-content">
    <a href="#">공지사항</a>
    <a href="#">게시판</a>
    <a href="#">음식</a>
    <a href="#">칼럼</a>
    <a href="#">즐겨찾기</a>
  </div>
</div>
	<form action="login/login" method="post" name="frm">
<table align="center">
      <tr><td colspan="4">
      <a href="search/idFind">아이디 찾기</a> |
      <a href = "search/findPassword">비밀번호 찾기</a>| 
      <a href="register/regist">회원 가입</a>
      <a href="login/login">
      <input type="submit" value="login">
      </a>
      
      </td></tr>
</table>
</form>
<!-- jquery -->

		<script src="//code.jquery.com/jquery.min.js"></script>

		

        <!-- BootStrap -->

		<!-- 합쳐지고 최소화된 최신 CSS -->

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

		<!-- 부가적인 테마 -->

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
 
		<!-- 합쳐지고 최소화된 최신 자바스크립트 -->

		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
</body>
</html>