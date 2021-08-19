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
	font-family: 'Noto Sans KR', sans-serif;
*{
	list-style:none;
	text-decoration: none;
	border-collapse: collapse;
	margin:0px;
	padding:0px;
}
.intro_bg{
	background-image:url("C:/Users/gogoo/Desktop/image/back.jpg");
	background-size: cover;
	width:100%;
	height:718px;
}
.header{
	display:flex;
	width:1280px;
	margin:auto;
	height:86px;
}
.home_button{
	font-size: 120%;
	width:300px;
	height:40px;
	border-radius: 5px;
	margin-top:24px;
	color: black;
 }
.nav{
	display:flex;
	justify-content: flex;
	line-height: 86px;
	width:calc(1280px - 300px);
	
}
.login_menu{
	font-size: 100%;
}


.nav > li{
	margin-left:84px;
	color:white;

</style>
</head>
<body>
	<div class="wrap">
		<div class="intro_bg">
			<div class="header">
				<div class="home_button">
					<a  href="index.jsp">EZEN FOOD</a>
				</div>
				<b>
				<ul class="nav">	
				<li><a href="notice/noticeList">공지사항</a></li>
				<li><a href="board/boardList">게시판</a></li>
				<li><a href="menu/menuList">음식</a></li>
				<li><a href="column/columnList">칼럼</a></li>
				<li><a href="#">즐겨찾기</a></li>
				</ul>
				</b>
			</div>
			
			<div class="login_menu">
			<form action="login/login" method="post" name="frm">
			<table>
			      <tr><td colspan="4">
			   
			      
			      <c:if test="${empty authInfo }">
			         <a href="search/idFind">아이디 찾기</a> |
			      <a href = "search/findPassword">비밀번호 찾기</a>| 
			      <a href="register">회원 가입</a>
			      
			      <a href="login/login"> <input type="submit" value="login"> </a>
			      </c:if>
			      
			      
			      <c:if test="${!empty authInfo }">    
			      <a href="login/logOut">logOut</a>
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
			</div>
		</div>
	</div>
</body>
</html>