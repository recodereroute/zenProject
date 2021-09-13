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
.container {
   width: 1130px;
   padding: 20px 30px;
   min-width: 1190px;
   margin: auto;
}
.notice{
background-color: aliceblue;
}

.button4 {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 24px;
	color: #FFF;
	padding: 5px 50px 5px 50px;
	border: 1px solid #999;
	text-shadow: 0px 1px 1px #666;
	text-decoration: none;
	-moz-box-shadow: 0 1px 3px #111;
	-webkit-box-shadow: 0 1px 3px #111;
	box-shadow: 0 1px 3px #111;
	border-radius: 4px;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	background: #64a724;
	background: -moz-linear-gradient(top, #64a724 0%, #579727 50%, #58982a 51%, #498c25
		100%);
	background: -webkit-gradient(linear, left top, left bottom, from(#64a724),
		to(#498c25), color-stop(0.4, #579727), color-stop(0.5, #58982a),
		color-stop(.9, #498c25), color-stop(0.9, #498c25));
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#64a724',
		endColorstr='#498c25', GradientType=0); .
	button4: hover{
    border: 1px solid #FFF;
}
[href]{color: black;}
.comment-table{border: 1px red solid;}
</style>
</head>
<body>
	<div class="container">
	<div class="ezen-login">
	<div class="ezen-board">
		<h1 class="h3 mb-3 fw-normal">
			<a href="../index.jsp">만개의 레시피로 냉장고를 부탁해</a>
		</h1>
		<h1 class="h3 mb-3 fw-normal"> <a href="boardList">일반 게시판 </a></h1>
		</div>
		
		<div class="login-box">
				<c:if test="${empty authInfo }">
			
			<button id="login-btn">
				<a href="../login/login?page=board/boardDetail?boardNo=${dto.boardNo }">로그인</a>
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
		<table class="table">
			<tr>
				<th class="success">글번호</th>
				<td>${dto.boardNo }</td>
				<th class="success">조회수</th>
				<td>${dto.boardCnt }</td>
			</tr>


			<tr>
				<th class="success">작성자</th>
				<td>${dto.memId }</td>
				<th class="success">작성일</th>
				<td><fmt:formatDate value="${dto.boardDate }" type="date"
						pattern="yy-MM-dd" /></td>
			</tr>

			<tr>
				<th class="success">파일</th>
				<td colspan="3"><c:forTokens items="${dto.boardOrgFile }"
						delims="," var="fileName" varStatus="idx">
						<a
							href="fileDown?str=${dto.boardFile.split(',')[idx.index]}&org=${fileName}">
							${fileName }</a> / ${dto.boardFileSize.split(',')[idx.index]}KB<br />
					</c:forTokens></td>
			</tr>

			<tr>
				<th class="success">제목</th>
				<td colspan="3">${dto.boardTitle }</td>
			</tr>

			<tr>
				<th class="success">글 내용</th>
				<td><textarea class="form-control" rows="10" cols="100"
						name="menuRecipe" id="content" readonly="readonly">${dto.boardCon }</textarea></td>
			</tr>

		</table>
	</div>
	

	<div align="center" class="container">
		<c:if test="${authInfo.userId == dto.memId }">
			<a class="btn btn-default" href="boardUpdate?boardNo=${dto.boardNo }">수정</a>
		</c:if>
<div class="container">
   <form action="bcmntWrite" method="post">
      <input type="hidden" name="cmntMemId" value="${authInfo.userId}" />
				<input type="hidden" name="boardNo" value="${dto.boardNo }" />
				<input type="hidden" name="boardMemId" value="${dto.memId }" />
					<c:if test="${authInfo.grade == 1 }">
      <table class="table table-striped table-bordered" border="1">
         <tr>
            <td>${authInfo.userId}</td>
            <td><textarea rows="2" cols="30" name="boardCmntCon"></textarea></td>
            <td><input type = "submit" value="등록" class="button4"/></td>
         </tr>
      </table>
   </c:if>
   </form>
   </div>
		
		<div class="container">
  <c:forEach items="${bcmntList }" var="bcmnt" varStatus="cnt">
      <div id ="content${cnt.count }">
      <table class="table table-striped table-bordered"  border="1">
               
         <tr>
                    <tr>
                        <td>닉네임 : ${bcmnt.cmntMemId }</td>
                        <td id ="nowDate">작성일자 : ${bcmnt.boardCmntDate }</td>
                    </tr>
 

                    <tr>
                        <td id="nowComment" colspan="2">댓글 내용 : ${bcmnt.boardCmntCon }</td>
                    </tr>
           
            <c:if test="${authInfo.userId == bcmnt.cmntMemId }">
               <td colspan="2">
                  <a href="javascript:bcmntModify('content${cnt.count}','${bcmnt.boardCmntNo }','${dto.boardNo}');" class="btn btn-default">수정</a>
                  <a href="bcmntDelete?boardCmntNo=${bcmnt.boardCmntNo }&boardNo=${dto.boardNo }" class="btn btn-default">삭제</a></td>
            </c:if>
         
      </table>
      </div>

    </c:forEach>
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
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.js"></script>
<script type="text/javascript">
	function bcmntModify(ele, b, c) {
		$.ajax({ //비동기식 - jquery.form.js가 있어야만 사용가능
			type : "post",
			url : "bcmntModify",// 여기로부터 받아온 값
			dataType : "html",//보여주려는 결과 data-type
			data : {
				"boardCmntNo" : b,
				"boardNo" : c
			},
			//익명함수(이름이 없는 함수) : 직접 실행시킬수 없음 - 실행시키기 위한 객체가 필요
			success : function(result) {//result : data 넘겨줘서 나온 동기식 결과 페이지
				$("#" + ele).html(result);
			},
			error : function() {
				alert("에러가 발생했습니다.");
				return;
			}
		});
	}
</script>
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