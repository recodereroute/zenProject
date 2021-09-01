<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false"%>
    	<%@include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>칼럼</title>
<style type="text/css">
	.container{
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
a:hover {
   color: rgb(240, 236, 42);
}
li a:link,li a:visited{
color: black;}
button a:link, button a:visited{
color: black;
}
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
</head>
<body>
<div class="container">
<div class="ezen-login">
<div class="ezen-board">
<h1 class="h3 mb-3 fw-normal"><a  href="../index.jsp">EZEN FOOD</a></h1>
<h1 class="h3 mb-3 fw-normal"> <a href="columnList">칼럼 게시판 </a></h1>
</div>
<div class="login-box">
	<c:if test="${empty authInfo }">
			<button id="login-btn">
				<a href="../login/login?page=column/columnList">로그인</a>
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
				<td><a href="../notice/noticeDetail?noticeNo=${columnOne.noticeNo }">${columnOne.noticeTitle }</a></td>
				<td><fmt:formatDate value="${columnOne.noticeDate }" type="date" pattern="yy-MM-dd"/> </td>
				<td>${columnOne.noticeCnt }</td>
			</tr>
		
		
		<c:forEach items="${columnLists }" var="dto" varStatus="cnt"> 
		<tr>
			<td>${cnt.count + (page-1) * 3}</td>
			
			<td><a href="columnDetail?noticeNo=${dto.noticeNo }">${dto.noticeTitle }</a></td>
			<td><fmt:formatDate value="${dto.noticeDate }" type="date" pattern="yy-MM-dd"/> </td>
			<td>${dto.noticeCnt }</td>
		</tr>
		</c:forEach>
		<tr>
		<td colspan ="4">
			<%@ include file="../include/includePage.jsp" %>
		</td>
		</tr>
</table>
	<c:if test="${authInfo.grade > 1 }">
	<a class="btn btn-default" href="columnForm"> 칼럼 등록</a>
	</c:if>
</div>
	<!-- jquery -->

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<!-- BootStrap -->

      <!-- 합쳐지고 최소화된 최신 CSS -->

      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

      <!-- 부가적인 테마 -->

      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
 
      <!-- 합쳐지고 최소화된 최신 자바스크립트 -->

      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>