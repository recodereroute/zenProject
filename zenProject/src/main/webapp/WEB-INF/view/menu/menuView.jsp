<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 페이지</title>
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
* {
	margin: 0;
	padding: 0;
}

.container {
	padding-right: 15px;
	padding-left: 15px;
	margin-right: 15px;
	margin-left: 15px;
}

.ezen-login {
	display: flex;
	justify-content: space-between;
}

.login-btn {
	background-color: white;
	border: none;
	display: flex;
	justify-content: space-between;
}

.login-btn a:link, .login-btn a:visited {
	color: black;
}

.login-box {
	display: flex;
	justify-content: space-between;
}

.after a:link, .after a:visited {
	color: black;
}
.all{
	width: 1130px;
	max-width: 1190px;
	padding: 20px,50px;
	margin: auto;
}
</style>     
</head>
<body>
<div class="all">
	<div class="ezen-login">
		<div class="ezen-board">
			<h1 class="h3 mb-3 fw-normal">
				<a href="../index.jsp">EZEN FOOD</a>
			</h1>

			<h1 class="h3 mb-3 fw-normal">
				<a href="menuList">메뉴 게시판 </a>
			</h1>
		</div>

		<div class="login-box">

			<c:if test="${empty authInfo }">
				<button class="login-btn">
					<a href="../login/login?page=menu/menuList">로그인</a> <a
						href="../register">회원가입</a>
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





	<div class="table table-responsive">
		<table class="table" >
			<tr>
				<th class="success">메뉴이름</th>
				<td>${dto.menuName }</td>
			</tr>
			<tr>
				<th class="success">조회수</th>
				<td>${dto.menuCnt }</td>
			</tr>
			<tr>
				<th class="success">작성자</th>
				<td>${dto.empId }</td>
			</tr>
			<tr>
				<th class="success">작성일</th>
				<td><fmt:formatDate value="${dto.menuDate }" type="date"
						pattern="yy-MM-dd" /></td>
			</tr>
			<tr>
				<th class="success">주재료</th>
				<td colspan="3">${dto.menuMainItem }</td>
			</tr>
			<tr>
				<th class="success">부재료</th>
				<td colspan="3">${dto.menuSubItem }</td>
			</tr>
			<tr>

			</tr>

			<tr>
				<th class="success">조리법</th>

				<td style="text-align: center;">
					<c:forEach items="${dto.menuImg }" var="img" varStatus="cnt">
						<img src="../menu/upload/${img}" width="250px" height="250px" />
						<p>${dto.menuRecipe.split(",")[cnt.index] }</p>
					</c:forEach>
				</td>
		</table>

	</div>
</div>

	<div align="center">
		<a class="btn btn-default" href="menuList">리스트로 돌아가기</a><br>
		<c:if test="${authInfo.grade == dto.empNo }">
			<a class="btn btn-default" href="menuEdit?menuNo=${dto.menuNo }">메뉴
				수정</a>
			<a class="btn btn-default" href="menuDel?menuNo=${dto.menuNo }">메뉴
				삭제</a>
		</c:if>


		<c:if test="${authInfo.grade == 1 }">

			<button type="button" onclick='bmkAddConfirm();'>즐겨찾기 등록</button>
			<div class="container">
				<form action="mcmntWrite" method="post">
					<input type="hidden" name="memId" value="${authInfo.userId}" /> <input
						type="hidden" name="menuNo" value="${dto.menuNo }" />

					<table class="table table-striped table-bordered" border="1">
						<tr>
							<td>${authInfo.userId}</td>
							<td><textarea rows="2" cols="30" name="menuCmntCon"></textarea></td>
							<td><input type="submit" value="등록" class="button4" /></td>
						</tr>
					</table>

				</form>
			</div>
		</c:if>
	</div>

	<div class="container">
		<c:forEach items="${mcmntList }" var="mcmnt" varStatus="cnt">
			<div id="content${cnt.count }">
				<table class="table table-striped table-bordered" border="1">

					<tr>
					<tr>

						<td>닉네임 : ${mcmnt.memId }</td>
						<td id="nowDate">작성일자 : ${mcmnt.menuCmntDate }</td>
					</tr>


					<tr>
						<td id="nowComment" colspan="2">댓글 내용 : ${mcmnt.menuCmntCon }</td>
					</tr>

					<c:if test="${authInfo.userId == mcmnt.memId }">
						<td colspan="2"><a
							href="javascript:mcmntModify('content${cnt.count}','${mcmnt.menuCmntNo }','${dto.menuNo}');"
							class="btn btn-default">수정</a> <a
							href="mcmntDelete?menuCmntNo=${mcmnt.menuCmntNo }&menuNo=${dto.menuNo }"
							class="btn btn-default">삭제</a></td>
					</c:if>

				</table>
			</div>

		</c:forEach>
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
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.js"></script>
<script type="text/javascript">
function mcmntModify(ele,b,c){
   $.ajax({ //비동기식 - jquery.form.js가 있어야만 사용가능
      type : "post",
      url : "mcmntModify",// 여기로부터 받아온 값
      dataType : "html",//보여주려는 결과 data-type
      data : {"menuCmntNo":b,"menuNo":c},
      //익명함수(이름이 없는 함수) : 직접 실행시킬수 없음 - 실행시키기 위한 객체가 필요
      success : function(result){//result : data 넘겨줘서 나온 동기식 결과 페이지
         $("#"+ele).html(result);
      },
      error : function(){
         alert("에러가 발생했습니다.");
         return;
      }
   });
}
</script>

<script type="text/javascript">
	
	function bmkAddConfirm(){
			
			$.ajax({ //비동기식 - jquery.form.js가 있어야만 사용가능
				type : "post",
				url : "../bookmark/bookmarkAdd",// 여기로부터 받아온 값
				dataType : "html",//보여주려는 결과 data-type
				data : {"memId":${authInfo.userId},"menuNo":${dto.menuNo }},
				//익명함수(이름이 없는 함수) : 직접 실행시킬수 없음 - 실행시키기 위한 객체가 필요
				success : function(result){
					swal({title:"",
						text:"즐겨찾기로 이동하시겠습니까?",
							icon:"success",
								buttons:["아니요","네!"]}).then((value)=>{if(value){location.href='../bookmark/bookmarkList?memId='+${authInfo.userId}} 
								
								
								})
							
				
				},
				error : function(){
				swal("","이미등록된 메뉴입니다.","info")
					return;
				}
			});
	}
	
	</script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

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