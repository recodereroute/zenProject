<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet"> 
<meta charset="UTF-8">
<title>메인 화면</title>
<style>

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
    <a href="notice/noticeList">공지사항</a>
    <a href="board/boardList">게시판</a>
    <a href="menu/menuList">음식</a>
    <a href="column/columnList">칼럼</a>
    <a href="#">즐겨찾기</a>
  </div>
</div>
<form action="login/login" method="post" name="frm">
	<table align="center">
	      <tr><td colspan="4">
	   
	      
	      <c:if test="${empty authInfo }">
	         <a href="search/idFind">아이디 찾기</a> |
	      <a href = "search/findPassword">비밀번호 찾기</a>| 
	      <a href="register">회원 가입</a>
	      
	      <a href="login/login">
	      <input type="submit" value="login">
	      </a>
	      </c:if>
	      <c:if test="${!empty authInfo }">
	      
	     <a href="login/logOut">
			logOut
	      
	      </a>
	            </c:if>
	      </td></tr>
	</table>
</form>
<c:if test="${!empty authInfo }">
	<!-- 로그인 되었을 때 -->
	<c:if test="${authInfo.grade == 1 }">
	<!-- 일반 사용자 -->
		<a href="member/myPage">마이페이지</a>
	</c:if>
	<c:if test="${authInfo.grade != 1 }">
	<!-- 관리자 -->
	<a href="employee/empMyPage">마이페이지</a>
	<a href="memList" >회원리스트</a>
	<a href="employee/empList">직원 리스트</a>
	<a href="notice/noticeList">공지사항</a>
	</c:if>

</c:if>

</body>
</html>