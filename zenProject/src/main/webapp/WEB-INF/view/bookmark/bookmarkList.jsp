<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 리스트</title>
<link
	href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap"
	rel="stylesheet">
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
</style>
</head>
<body>
<div class="container">
<h1 class="h3 mb-3 fw-normal"><a  href="../index.jsp">만개의 레시피로 냉장고를 부탁해</a></h1>
<h1 class="h3 mb-3 fw-normal">즐겨찾기</h1>
	<table class="table table-hover">
		<tr>
<td>메뉴 이름</td>
<td>Edit</td>
		</tr>

	
		<c:forEach items="${menuName }" var="mn">
	
			<tr>
				<td><a href="../menu/menuDetail?menuNo=${mn.menuNo }">${mn.menuName }</a></td>
				<td><a href="bookmarkDelete?memId=${authInfo.userId}&menuNo=${mn.menuNo }">삭제</a>
				</td>
			</tr>
		</c:forEach>
	</table>
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

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<!-- BootStrap -->

      <!-- 합쳐지고 최소화된 최신 CSS -->

      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

      <!-- 부가적인 테마 -->

      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
 
      <!-- 합쳐지고 최소화된 최신 자바스크립트 -->

      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</html>