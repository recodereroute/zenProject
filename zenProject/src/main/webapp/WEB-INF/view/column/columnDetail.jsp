<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    <%@include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>칼럼 게시판</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap"
	rel="stylesheet">
<style type="text/css">
	.container{
		width: 1130px;
		padding: 20px 30px;
		min-width: 1160px;
		margin: auto;
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
.login-box a:link,.login-box a:visited{
color:black;


}
</style>
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
        <table class="table">
        <tr>
            <th class="success">글번호</th>
            <td> ${dto.noticeNo }</td>
            <th class="success">조회수</th>
            <td>${dto.noticeCnt }</td>
        </tr>
           
         
        <tr>
            <th class="success">작성자</th>
            <td>${dto.empNo }</td>
            <th class="success">작성일</th>
            <td> <fmt:formatDate value="${dto.noticeDate }" type="date" pattern="yy-MM-dd"/></td>
        </tr>        
         
        <tr>
            <th class="success">제목</th>
            <td colspan="3">${dto.noticeTitle }</td>
        </tr>
         
        <tr>
            <th class="success">글 내용</th>
            <td><textarea class="form-control" rows="10" cols="100" name="noticeCon" id="content" readonly="readonly">${dto.noticeCon }</textarea></td>
        </tr>

        </table>

   </div>
    <div align="center" class="container">
    <c:if test="${authInfo.grade > 1 }">
<a class="btn btn-default" href="columnUpdate?noticeNo=${dto.noticeNo }">수정</a>
</c:if>
  </div>

</body>
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