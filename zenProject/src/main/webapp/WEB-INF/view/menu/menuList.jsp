<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>메뉴 리스트</title>
<style>
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
* {
	margin: 0px;
	padding: 0px;
}

body {
	background-color: #f7f7f7;
}

a {
	text-decoration: none;
}
/* menu-chk-list */
.chk-list {
	padding-bottom: 20px;
}

.chkbox-btn {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.menu-chk-list {
	max-width: 1200px;
	margin: auto;
	text-align: left;
	background-color: #72CC82;
	border-radius: 7px;
	color: #EFFFE9;
	margin-top: 20px;
	margin-bottom: 20px;
}

.menu-chk-list th {
	background-color: #3CB371;
	text-align: center;
	min-width: 110px;
	border-radius: 10px;
	color: #EFFFE9;
}

.menu-chk-list td {
	padding: 5px;
	min-width: 110px;
	width: 110px;
}

.menu-chk-list hr {
	border: 1px solid #3CB371;
	margin: 0;
}

.menu-chk-list label:hover {
	color: #e5f50b;
}

h1 {
	margin-top: 30px;
	margin-left: 50px;
}

h1 a:link, h1 a:visited {
	color: #66afe9;
}

.btn {
	width: 100px;
	height: 25px;
	background-color: #754F44;
	border: 0px;
	border-radius: 5px;
	color: #EFFFE9;
	font-size: 15px;
}
/* menu-table */
.container {
	background-color: white;
	max-width: 1444px;
	width: 1444px;
	margin: auto;
	margin: auto;
}

.list-box {
	max-width: 1200px;
	width: 1200px;
	margin: auto;
	margin: auto;
}

.menu-table {
	display: inline-block;
	max-width: 250px;
	height: 400px;
	width: 250px;
	margin: 20px;
}

#img-tr {
	width: 250px;
	height: 250px;
}

#img-tr img {
	border-radius: 5px;
}

#date-td, #viewCnt-td {
	text-align: right;
}

h2 {
	margin-left: 50px;
	margin-bottom: 20px;
	color: #123456;
}

#include {
	width: 200px;
	max-width: 1000px;
	margin: auto;
}

.btnContainer {
	margin: auto;
	text-align: center;
}

.ezen-login {
	display: flex;
	justify-content: space-between;
}

.login-box {
	margin: 10px;
	display: inline-block;
	padding: 5px 10px;
	background-color: white;
	height: 100px;
	border-radius: 7px;
	color: black;
	float: left;
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
	justify-content: space-between;
}

a:hover {
	color: rgb(240, 236, 42);
}

li a:link, li a:visited {
	color: black;
}

button a:link, button a:visited {
	color: black;
}

.after {
	width: 150px;
	height: 30px;
	background-color: white;
	border: 0px;
	color: black;
	border-radius: 5px;
	font-size: 15px;
	display: flex;
	justify-content: space-between;
}

.after a:link, .after a:visited {
	color: black;
}
</style>

</head>

<body>
	<div class="chk-list container">
		<div class="ezen-login">
			<div class="ezen-board">
				<h1>
					<a href="../index.jsp">EZEN FOOD</a> <br>
					<h2>메뉴 리스트</h2>
				</h1>
			</div>
			<div class="login-box">

				<c:if test="${empty authInfo }">
					<button id="login-btn">
						<a href="../login/login?page=menu/menuList">로그인</a> 
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
		<div class="chkbox-btn">
			<form action="../selectSearch" name="frm">
				<table class="menu-chk-list">
					<tr>
						<th rowspan="4">main item</th>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem1" value="돼지고기"><label
							for="menuMainItem1">돼지고기</label></td>
						<td><input type="checkbox" name="menuItems" id="meat2"
							value="소고기"><label for="meat2">소고기</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem3" value="닭고기"><label for="menuMainItem3">닭고기</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem10" value="오리고기"><label
							for="menuMainItem10">오리고기</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem4" value="달걀"><label for="menuMainItem4">달걀</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem5" value="감자"><label for="menuMainItem5">감자</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem6" value="베이컨"><label for="menuMainItem6">베이컨</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem7" value="버섯"><label for="menuMainItem7">버섯</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem8" value="양파"><label for="menuMainItem8">양파</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem9" value="마늘"><label for="menuMainItem9">마늘</label></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem11" value="치즈"><label
							for="menuMainItem11">치즈</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem12" value="빵"><label for="menuMainItem12">빵</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem13" value="파스타면"><label
							for="menuMainItem13">파스타면</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem14" value="중화면"><label
							for="menuMainItem14">중화면</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem15" value="새우"><label
							for="menuMainItem15">새우</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem16" value="두부"><label
							for="menuMainItem16">두부</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem17" value="연어"><label
							for="menuMainItem17">연어</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem18" value="오징어"><label
							for="menuMainItem18">오징어</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem19" value="대파"><label
							for="menuMainItem19">대파</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem20" value="파프리카"><label
							for="menuMainItem20">파프리카</label></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem21" value="밥"><label for="menuMainItem21">밥</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem22" value="메밀소바"><label
							for="menuMainItem22">메밀소바</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem23" value="우동사리"><label
							for="menuMainItem23">우동사리</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem24" value="양배추"><label
							for="menuMainItem24">양배추</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem25" value="오이"><label
							for="menuMainItem25">오이</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem26" value="가지"><label
							for="menuMainItem26">가지</label></td>
							<td><input type="checkbox" name="menuItems"
							id="menuMainItem27" value="김치"><label
							for="menuMainItem27">김치</label></td>
							<td><input type="checkbox" name="menuItems"
							id="menuMainItem28" value="숙주"><label
							for="menuMainItem28">숙주</label></td>
							<td><input type="checkbox" name="menuItems"
							id="menuMainItem29" value="당면"><label
							for="menuMainItem29">당면</label></td>
							<td><input type="checkbox" name="menuItems"
							id="menuMainItem30" value="스팸"><label
							for="menuMainItem30">스팸</label></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem31" value="카레"><label
							for="menuMainItem31">카레</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem30" value="참치"><label
							for="menuMainItem30">참치</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem30" value="콩나물"><label
							for="menuMainItem30">콩나물</label></td>
						<td><input type="checkbox" name="menuItems"
							id="menuMainItem30" value="고추"><label
							for="menuMainItem30">고추</label></td>
					</tr>
				</table>
				<div class="btnContainer">
					<input type="submit" value="검색" class="btn">
					<c:if test="${authInfo.grade >1}">
						<a href="menuForm"><input type="button" value="메뉴등록" class="btn"></a>
					</c:if>
				</div>
			</form>
		</div>
	</div>

	<div class="container">


		<div class="list-box">
			<c:forEach items="${lists }" var="dto" varStatus="cnt">
				<table class="menu-table">
					<tr id="img-tr">
						<td colspan="2"><c:if test="${empty dto.menuImg }">
                                등록된 이미지가 없습니다.
                            </c:if> <c:if test="${!empty dto.menuImg }">
								<a href="menuDetail?menuNo=${dto.menuNo }"> <img
									src='../menu/upload/${dto.menuImg.split(",")[0] }'
									alt="이미지 불러오기 실패" width="250px" height="250px">
								</a>
							</c:if></td>
					</tr>
					<tr>
						<td id="menuNo-td">${cnt.count + (page - 1) * 12 }번메뉴</td>
						<td id="viewCnt-td">조회수 ${dto.menuCnt }</td>
					</tr>
					<tr id="menuName-tr">
						<td colspan="2"><a href="menuDetail?menuNo=${dto.menuNo }">
								${dto.menuName } </a></td>
					</tr>
					<tr>
						<td id="writer-td">${dto.empId }님</td>
						<td id="date-td"><fmt:formatDate value="${dto.menuDate }"
								type="date" pattern="yy-MM-dd" /></td>
					</tr>
				</table>
			</c:forEach>
		</div>
		<div id="include"><%@ include file="../include/includePage.jsp"%></div>
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
        <li><a href="#">EZEN FOOD</a></li>

      </ul>
    </div>
    <div class="ft-main-item">
      <h2 class="ft-title">팀원</h2>
      <ul>
        <li><a href="#">고명현</a></li>
        <li><a href="#">김현우</a></li>
        <li><a href="#">박지현</a></li>
        <li><a href="#">이근호</a></li>
      </ul>
    </div>
    <div class="ft-main-item">
      <h2 class="ft-title">이메일</h2>
      <ul>
        <li><a href="#">aaaa@naver.com</a></li>
        <li><a href="#">bbbb@naver.com</a></li>
        <li><a href="#">cccc@naver.com</a></li>
        <li><a href="#">dddd@naver.com</a></li>
      </ul>
    </div>
    
    <div class="ft-main-item">
      <h2 class="ft-title">Stay Updated</h2>
      <p>Subscribe to our newsletter to get our latest news.</p>
      <form>
        <input type="email" name="email" placeholder="Enter email address">
        <input type="submit" value="Subscribe">
      </form>
    </div>
  </section>

  <!-- Footer social -->
  <section class="ft-social">
    <ul class="ft-social-list">
      <li><a href="#"><i class="fab fa-facebook"></i></a></li>
      <li><a href="#"><i class="fab fa-twitter"></i></a></li>
      <li><a href="#"><i class="fab fa-instagram"></i></a></li>
      <li><a href="#"><i class="fab fa-github"></i></a></li>
      <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
      <li><a href="#"><i class="fab fa-youtube"></i></a></li>
    </ul>
  </section>

  <!-- Footer legal -->
  <section class="ft-legal">
    <ul class="ft-legal-list">
      <li><a href="#">Terms &amp; Conditions</a></li>
      <li><a href="#">Privacy Policy</a></li>
      <li>&copy; 2019 Copyright Nowrap Inc.</li>
    </ul>
  </section>
</footer>
</html>