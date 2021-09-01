<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<style type="text/css">

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
   background-color: #3CB371;
   height: 100px;
   border-radius: 7px;
   color: white;
   float:left;	
   font-family: 'Poor Story', cursive;
}
li {
   list-style: none;
}
#login-btn {
   width: 100px;
   height: 30px;
   background-color: #754F44;
   border: 0px;
   color: #EFFFE9;
   border-radius: 5px;
   font-size: 15px;
}
a:hover {
   color: rgb(240, 236, 42);
}
li a:link,li a:visited{
color: white;}
button a:link, button a:visited{
color: white;
}
</style>

</head>
<body>
	<div class="container">
	<div class="ezen-login">
	<div class="ezen-board">
		<h1 class="h3 mb-3 fw-normal">
			<a href="../index.jsp">EZEN FOOD</a>
		</h1>
		<h1 class="h3 mb-3 fw-normal"> <a href="boardList">일반 게시판 </a></h1>
		</div>
		<div class="login-box">
		<c:if test="${empty authInfo }">
		
			<button id="login-btn">
				<a href="../login/login?page=board/boardList">로그인</a>
			</button>
			<ul class="">
				<li><a href="../register">회원가입</a></li>
				<li><a href="../search/idFind">아이디 찾기</a></li>
				<li><a href="../search/findPassword">비밀번호 찾기</a></li>
			</ul>
		</c:if>
		<c:if test="${!empty authInfo }">
			<ul class="">
					<li><a href="../login/logOut">로그아웃</a></li>
			</ul>
		</c:if>


		<c:if test="${!empty authInfo }">
			<c:if test="${authInfo.grade == 1 }">

				<ul class="">
					<li><a href="../member/myPage">마이페이지</a></li>
				</ul>
			</c:if>

			<c:if test="${authInfo.grade != 1 }">

				<ul class="">
					<li><a href="../employee/empMyPage">마이페이지</a></li>

				</ul>
			</c:if>
		</c:if>
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
</body>
</html>