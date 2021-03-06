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
<title>만개의 레시피로 냉장고를 부탁해</title>
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
				<div id="logo-link"> &nbsp;<span id="firstName">10000recipes</span><br>&nbsp; <span id="secondName">for living alone</span></div>
			</a>
		</div>

		<div class="search-space">
			<form action="menuSearch">
				<div class="search-zone">
					<input id="bar" type="search" name="searchCon" placeholder="뭘 먹을까?">
					<input id="btn" type="submit" value="검색">
				</div>
			</form>
		</div>

		<div class="login-box">
			<c:if test="${empty authInfo }">
				<button id="login-btn">
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
						<h1>추천 메뉴 TOP 3</h1>
					</td>
				</tr>
				<tr>
					<c:if test="${!empty mainMenuList }">
						<c:forEach items="${mainMenuList }" var="MMdto">
							<td><a href="menu/menuDetail?menuNo=${MMdto.menuNo }">
							<img alt="" src="menu/upload/${MMdto.menuImg.split(',')[0] }"> </a></td>
						</c:forEach>
					</c:if>
					
				</tr>
				<tr>
					<td id="noMenu">
						<c:if test="${empty mainMenuList }">
				 			등록된 메뉴가 없습니다.
						</c:if>
					</td>
				</tr>
			</table>
		</div>

		<div class="contents">

			<div class="notice-box">
				<table>
					<tr>
						<td style="height: 50px;">
							<h3>공지사항</h3>
						</td>
						<td id="more-notice" style="height: 50px;"><a href="notice/noticeList">더보기</a></td>
					</tr>
					<c:if test="${!empty mainNoticeList }">
						<c:forEach items="${mainNoticeList }" var="MNdto">
							<tr>
								<td colspan="2"><a
									href="notice/noticeDetail?noticeNo=${MNdto.noticeNo }">${MNdto.noticeTitle }</a></td>
							</tr>
						</c:forEach>
					</c:if>
					<c:if test="${empty mainNoticeList }">
					등록된 게시글이 없습니다.
				</c:if>

				</table>
			</div>

			<div class="board-box">
				<table style="height: 100%;">
					<tr>
						<td style="height: 50px;">
							<h3>게시판</h3>
						</td>
						<td id="more-board" style="height: 50px;"><a href="board/boardList">더보기</a></td>
					</tr>
					<c:if test="${!empty mainBoardList }">
						<c:forEach items="${mainBoardList }" var="MBdto">
							<tr>
								<td colspan="2"><a href="board/boardDetail?boardNo=${MBdto.boardNo }">${MBdto.boardTitle }</a></td>
							</tr>
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
  <!-- Footer main -->
  <section class="ft-main">
  <div class="team-logo-box">
		<img
			src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0itTHT2c-YUs4XTgSWRfruN6wAMDNJKt_dv_F69pvU3e45EjusjxDPexHDd--vf6QWnQ&usqp=CAU"
			alt="팀 로고">
	</div>
	<div class="ft-main-item">
      <h2 class="ft-title">프로젝트명</h2>
      <ul>
        <li>만개의 레시피로 냉장고를 부탁해</li>

      </ul>
    </div>
    <div class="ft-main-item">
      <h2 class="ft-title">팀원</h2>
      <ul>
        <li>고명현</li>
        <li>김현우</li>
        <li>박지현</li>
        <li>이근호</li>
      </ul>
    </div>
    <div class="ft-main-item">
      <h2 class="ft-title">이메일</h2>
      <ul>
        <li>gogoom123@naver.com</li>
        <li>prince628@naver.com</li>
        <li>jammm093@gmail.com</li>
        <li>rmsgh0726@naver.com</li>
      </ul>
    </div>
  </section>

  <!-- Footer social -->
  <section class="ft-social">
    <ul class="ft-social-list">
      <li><i class="fab fa-facebook"></i></a></li>
      <li><i class="fab fa-twitter"></i></a></li>
      <li><i class="fab fa-instagram"></i></a></li>
      <li><i class="fab fa-github"></i></a></li>
      <li><i class="fab fa-linkedin"></i></a></li>
      <li><i class="fab fa-youtube"></i></li>
    </ul>
  </section>

  <!-- Footer legal -->
  <section class="ft-legal">
    <ul class="ft-legal-list">
      <li>Terms &amp; Conditions</a></li>
      <li>Privacy Policy</a></li>
      <li>&copy; 2021 Copyright Ezen Inc.</li>
    </ul>
  </section>
</footer>
</div>
</html>