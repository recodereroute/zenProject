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
<div class="wrapper">
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
						<li><a href="empList">직원리스트</a></li>
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
			<c:forEach items="${mainMenuList }" var="MMdto">
			<td>
			<a href="menu/menuDetail?menuNo=${MMdto.menuNo }"><img alt="" src=" "> </a>			
			</td>
			</c:forEach>
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
			<c:if test="${!empty mainNoticeList }">
				<c:forEach items="${mainNoticeList }" var = "MNdto">
					<tr><td><a href = "notice/noticeDetail?noticeNo=${MNdto.noticeNo }">${MNdto.noticeTitle }</a></td></tr>
				</c:forEach>
				</c:if>
				<c:if test="${empty mainNoticeList }">
					등록된 게시글이 없습니다.
				</c:if>
			
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
				<c:if test="${!empty mainBoardList }">
				<c:forEach items="${mainBoardList }" var = "MBdto">
					<tr><td><a href = "board/boardDetail?boardNo=${MBdto.boardNo }">${MBdto.boardTitle }</a></td></tr>
				</c:forEach>
				</c:if>
				<c:if test="${empty mainBoardList }">
					등록된 게시글이 없습니다.
				</c:if>
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
			<li>고 명 현</li>
			<li>김 현 우</li>
			<li>박 지 현</li>
			<li>이 근 호</li>
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
</div>
</html>