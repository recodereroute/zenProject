<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>이젠 푸드 프로젝트</title>
<link rel="stylesheet" href="css/index.css">
<!--구글 폰트-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap"
	rel="stylesheet">
</head>
<header class="header">

	<div class="project-logo">
		<a href="index.jsp"> <img
			src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0itTHT2c-YUs4XTgSWRfruN6wAMDNJKt_dv_F69pvU3e45EjusjxDPexHDd--vf6QWnQ&usqp=CAU"
			alt="불러오기 실패">
			<h1 id="logo-link">EZEN FOOD</h1>
		</a>
	</div>

	<div class="search-space">
		<form action="menuSearch">
			<div class="search-zone">
				<input id="bar" type="search" name = "searchCon" placeholder="뭘 먹을까?"> 
				<input id="btn" type="submit" value="검색">
			</div>
		</form>
	</div>

	<div class="login-box">
			<c:if test="${empty authInfo }">
				<button id="login-btn" >
				<a href="login/login">로그인</a>
				</button>
				<ul class="">
					<li><a href="register">회원가입</a></li>
					<li><a href="search/idFind">아이디 찾기</a></li>
					<li><a href="search/findPassword">비밀번호 찾기</a></li>
				</ul>
			</c:if>
			<c:if test="${!empty authInfo }">
				<ul class="">
					<li><a href="login/logOut">로그아웃</a></li>
				</ul>
			</c:if>


			<c:if test="${!empty authInfo }">
				<c:if test="${authInfo.grade == 1 }">

					<ul class="">
						<li><a href="member/myPage">마이페이지</a></li>
					</ul>
				</c:if>

				<c:if test="${authInfo.grade != 1 }">

					<ul class="">
						<li><a href="employee/empMyPage">마이페이지</a></li>
						<li><a href="memList">멤버리스트</a></li>
						<li><a href="employee/empList">직원리스트</a></li>
					</ul>
				</c:if>
			</c:if>
	</div>
</header>

<body>
	<div class="nav nav-pills">
		<a href="notice/noticeList">공지사항</a> <a href="board/boardList">게시판</a>
		<a href="menu/menuList">음식</a> <a href="column/columnList">칼럼</a>
		<c:if test="${authInfo.grade == 1 }">
			<a href="bookmark/bookmarkList?memId=${authInfo.userId}">즐겨찾기</a>
		</c:if>

		<c:if test="${empty authInfo }">
		
				<a href="login/login">즐겨찾기</a>
		</c:if>
			<c:if test="${authInfo.grade > 1 }">
			</c:if>
	</div>

	<div class="menu-box">
		<table>
			<tr>
				<td colspan="5" id="menu-title">
					<h1>오늘의 추천 메뉴</h1>
				</td>
			</tr>
			<tr>
				<td><a href="#"><button class="menu-btn">이전 메뉴</button></a></td>
				<td><a href="#"><img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUTplkei5m4FkmBCxyCT5XqC3r6ZUX-AiuPA&usqp=CAU"
						alt="조회수가 높은 이미지">
						<p>감자 튀김</p> </a></td>
				<td><a href="#"><img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTXUXD6uy6d1pD13j3vMpLBtlPvrmPOsJe-miZ2YXl8qQCJXZO&usqp=CAU"
						alt="조회수가 높은 이미지">
						<p>타코야키</p> </a></td>
				<td><a href="#"><img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRE5e2tYS0SSRsYlyEAsei3y7091c1WVq4Lxw&usqp=CAU"
						alt="조회수가 높은 이미지">
						<p>어떤 음식</p> </a></td>
				<td><a href="#"><button class="menu-btn">다음 메뉴</button></a></td>
			</tr>
		</table>
	</div>

	<div class="contents">

		<div class="notice-box">
			<table>
				<tr>
					<td>
						<h3>공지사항</h3>
					</td>
					<td id="more-notice"><a href="notice/noticeList">더보기</a></td>
				</tr>
				<tr>
					<td colspan="2"><a href="notice1">공지사항 1</a></td>
				</tr>
				<tr>
					<td colspan="2"><a href="notice2">공지사항 2</a></td>
				</tr>
				<tr>
					<td colspan="2"><a href="notice3">공지사항 3</a></td>
				</tr>
				<tr>
					<td colspan="2"><a href="notice4">공지사항 4</a></td>
				</tr>
			</table>
		</div>

		<div class="board-box">
			<table>
				<tr>
					<td>
						<h3>게시판</h3>
					</td>
					<td id="more-board"><a href="board/boardList">더보기</a></td>
				</tr>
				<tr>
					<td colspan="2"><a href="board1">게시판 글 1</a></td>
				</tr>
				<tr>
					<td colspan="2"><a href="board2">게시판 글 2</a></td>
				</tr>
				<tr>
					<td colspan="2"><a href="board3">게시판 글 3</a></td>
				</tr>
				<tr>
					<td colspan="2"><a href="board4">게시판 글 4</a></td>
				</tr>
			</table>
		</div>

	</div>
</body>

<footer>

	<div class="team-logo-box">
		<img
			src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0itTHT2c-YUs4XTgSWRfruN6wAMDNJKt_dv_F69pvU3e45EjusjxDPexHDd--vf6QWnQ&usqp=CAU"
			alt="팀 로고">
	</div>

	<div class="team-name-box">
		<ul>
			<li>팀원 1</li>
			<li>팀원 2</li>
			<li>팀원 3</li>
			<li>팀원 4</li>
		</ul>
	</div>

	<div class="team-addr-box">
		<ul>
			<li>팀원 1 메일 주소</li>
			<li>팀원 2 메일 주소</li>
			<li>팀원 3 메일 주소</li>
			<li>팀원 4 메일 주소</li>
		</ul>
	</div>

</footer>

</html>