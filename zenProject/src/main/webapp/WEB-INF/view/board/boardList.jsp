<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<style type="text/css">
* {
  box-sizing: border-box;
  font-family: "Lato", sans-serif;
  margin: 0;
  padding: 0;
}
ul {
  list-style: none;
  padding-left: 0;
}
footer {
  background-color: #555;
  color: #bbb;
  line-height: 1.5;
}
footer a {
  text-decoration: none;
  color: #eee;
}
a:hover {
  text-decoration: underline;
}
.ft-title {
  color: #fff;
  font-family: "Merriweather", serif;
  font-size: 1.375rem;
  padding-bottom: 0.625rem;
}
/* Sticks footer to bottom */
body {
  display: flex;
  min-height: 100vh;
  flex-direction: column;
}
.container {
  flex: 1;
}
/* Footer main */
.ft-main {
  padding: 1.25rem 1.875rem;
  display: flex;
  flex-wrap: wrap;
}
@media only screen and (min-width: 29.8125rem /* 477px */) {
  .ft-main {
    justify-content: space-evenly;
  }
}
@media only screen and (min-width: 77.5rem /* 1240px */) {
  .ft-main {
    justify-content: space-evenly;
  }
}
.ft-main-item {
  padding: 1.25rem;
  min-width: 12.5rem;
}

/* Footer main | Newsletter form */
form {
  display: flex;
  flex-wrap: wrap;
}
input[type="email"] {
  border: 0;
  padding: 0.625rem;
  margin-top: 0.3125rem;
}
input[type="submit"] {
  background-color: #00d188;
  color: #fff;
  cursor: pointer;
  border: 0;
  padding: 0.625rem 0.9375rem;
  margin-top: 0.3125rem;
}
/* Footer social */
.ft-social {
  padding: 0 1.875rem 1.25rem;
}
.ft-social-list {
  display: flex;
  justify-content: center;
  border-top: 1px #777 solid;
  padding-top: 1.25rem;
}
.ft-social-list li {
  margin: 0.5rem;
  font-size: 1.25rem;
}
/* Footer legal */
.ft-legal {
  padding: 0.9375rem 1.875rem;
  background-color: #333;
}
.ft-legal-list {
  width: 100%;
  display: flex;
  flex-wrap: wrap;
}
.ft-legal-list li {
  margin: 0.125rem 0.625rem;
  white-space: nowrap;
}
/* one before the last child */
.ft-legal-list li:nth-last-child(2) {
    flex: 1;
}
.team-logo-box img {
	width: 150px;
	height: 150px;
	border-radius: 7px;
}
.container {
   width: 1130px;
   padding: 20px 30px;
   min-width: 1190px;
   margin: auto;
}
.notice{
background-color: aliceblue;
}
* {
      margin: 0px;
   padding: 0px;
}
.ezen-login{
display:flex;
justify-content:space-between;
}

.login-box {
   margin: 10px;
   display: inline-block;
   padding: 5px 10px;
   background-color: white;
   height: 100px;
   border-radius: 7px;
   color: black;
   float:left;	
  
}
li {
   list-style: none;
}
#login-btn {
   width: 150px;
   height: 30px;
   background-color: white;
   border: 0px;
   color: black;
   border-radius: 5px;
   font-size: 15px;
   display: flex;
   justify-content:space-between;
}
a:hover {
   color: rgb(240, 236, 42);
}
li a:link,li a:visited{
color: black;}
button a:link, button a:visited{
color: black;
}
.after{
 width: 150px;
   height: 30px;
   background-color: white;
   border: 0px;
   color: black;
   border-radius: 5px;
   font-size: 15px;
   display: flex;
   justify-content:space-between;
}
.after a:link,.after a:visited{
color:black;

}
.project-logo {
  text-align: center;
}

.project-logo img {
  width: 100px;
  height: 100px;
  border-radius: 40%;
  border: #72CC82 solid 2px;
  margin-top: 10px;
  margin-left: 10px;
}
#logo-link{
	font-size: 25px;
}
#secondName, #firstName{
	font-size: 15px;
}

</style>

</head>
<body>
	<div class="container">
	<div class="ezen-login">
	<div class="ezen-board">
		<h1 class="h3 mb-3 fw-normal"><a  href="../index.jsp">만개의 레시피로 냉장고를 부탁해</a></h1>
		<h1 class="h3 mb-3 fw-normal"> <a href="boardList">일반 게시판 </a></h1>
		</div>
		<div class="login-box">
		
		<c:if test="${empty authInfo }">
		
			<button id="login-btn">
				<a href="../login/login?page=board/boardList">로그인</a>
				<a href="../register">회원가입</a>
			</button>
		
		</c:if>
		<div class="after">
		<c:if test="${!empty authInfo }">
		
<a href="../login/logOut">로그아웃</a>
		
		</c:if>


		<c:if test="${!empty authInfo }">
			<c:if test="${authInfo.grade == 1 }">
<a href="../member/myPage">마이페이지</a>
			
			</c:if>

			<c:if test="${authInfo.grade != 1 }">

<a href="../employee/empMyPage">마이페이지</a>

			
			</c:if>
		</c:if>
		</div>
		</div>
		</div>
		<table class="table table-hover">
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>등록일</td>
				<td>조회수</td>
			</tr>

			<tr class="notice">
				<td>공지</td>
				<td><a href="../notice/noticeDetail?noticeNo=${nOne.noticeNo }">${nOne.noticeTitle }</a></td>
				<td><fmt:formatDate value="${nOne.noticeDate }" type="date"
						pattern="yy-MM-dd" /></td>
				<td>${nOne.noticeCnt }</td>
			</tr>
			<c:forEach items="${boardLists }" var="dto" varStatus="cnt">
				<!--리스트 서비스에서name값을 가지고온다 -->
				<tr>
					<td>${cnt.count +(page-1)*3}</td>
					<td><a href="boardDetail?boardNo=${dto.boardNo }">${dto.boardTitle }</a></td>
					<td><fmt:formatDate value="${dto.boardDate }" type="date"
							pattern="yy-MM-dd" /></td>
					<td>${dto.boardCnt }</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="4"><%@ include file="../include/includePage.jsp"%>

				</td>
			</tr>
		</table>
		<c:if test="${authInfo.grade == 1 }">
			<a class="btn btn-default" href="boardForm">게시글 등록</a>
		</c:if>
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
        <li>prince0628@naver.com</li>
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
	<!-- jquery -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<!-- BootStrap -->
	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<!-- 부가적인 테마 -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</html>