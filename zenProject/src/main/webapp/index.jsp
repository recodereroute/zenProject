<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>이젠 프로젝트 메인 페이지</title>
    
    <script src="https://kit.fontawesome.com/1b82e6f304.js" crossorigin="anonymous"></script>
   <style>
   #input1{
		width: 300px;
		height: 50px;
		background-color: orange;
		border: 3px solid black;
		border-radius: 5px;	
	}
   </style>
    <!-- jQuery -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>



<!-- Bootstrap CSS -->

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">



<!-- common CSS -->

<link rel="stylesheet" href="<c:url value='/resources/common/css/common.css'/>" >
</head>

<body>
    <header class="p-3 bg-dark text-white">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
        </a>

        <h1 class="h3 mb-3 fw-normal"><a  href="../index.jsp">EZEN FOOD</a></h1>
        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
        
          <li><a href="notice/noticeList" class="nav-link px-2 text-white">공지사항</a></li>
          <li><a href="board/boardList" class="nav-link px-2 text-white">게시판</a></li>
          <li><a href="menu/menuList" class="nav-link px-2 text-white">음식</a></li>
          <li><a href="column/columnList" class="nav-link px-2 text-white">칼럼</a></li>
          <li><a href="#" class="nav-link px-2 text-white">즐겨찾기</a></li>
        </ul>

        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
          <input type="search" class="form-control form-control-dark" placeholder="Search..." aria-label="Search">
        </form>
        
        <form action="login/login" method="post" name="frm"> 
			  <c:if test="${empty authInfo }">  
			     <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
					<li><a href="search/idFind" class="nav-link px-2 text-secondary">아이디 찾기</a></li>
					<li><a href="search/findPassword" class="nav-link px-2 text-secondary">비밀번호 찾기</a></li>
					<li><a href="register" class="nav-link px-2 text-secondary">회원가입</a></li>
				</ul>
			
			      <input type="submit" id="input1" value="로그인 하기">
			      </c:if>
			      <c:if test="${!empty authInfo }"> 
			      <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
					<li><a href="login/logOut" class="nav-link px-2 text-secondary">로그아웃</a></li>
				</ul>   
			      </c:if>
			      
			      
			     <c:if test="${!empty authInfo }">
				<!-- 로그인 되었을 때 -->
				<c:if test="${authInfo.grade == 1 }">
				<!-- 일반 사용자 -->
				<ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
					<li><a href="member/myPage" class="nav-link px-2 text-secondary">마이페이지</a></li>
				</ul>
				</c:if>
				
				<c:if test="${authInfo.grade != 1 }">
				<!-- 관리자 -->
				<ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
					<li><a href="employee/empMyPage" class="nav-link px-2 text-secondary">마이페이지</a></li>
					<li><a href="memList" class="nav-link px-2 text-secondary">멤버리스트</a></li>
					<li><a href="employee/empList" class="nav-link px-2 text-secondary">직원리스트</a></li>
				</ul>
</c:if>
			</c:if>		
		    </form>
     
      </div>
    </div>
  </header>
</body>

    <div class="menu-view-box">

        <div class="menu-view-title">
            <h3>오늘의 인기 메뉴</h3>
        </div>

        <div class="menu-thumbnail">
            <button>prev button </button>
                    <a href="#"><img src="" alt="조회수가 높은 이미지"></a>
                    <a href="#"><img src="" alt="조회수가 높은 이미지"></a>
                    <a href="#"><img src="" alt="조회수가 높은 이미지"></a>
                    <button> next button</button>
        </div>

        <div class="more-menu">
            <a href="menu/menuList">메뉴 더보기</a>
        </div>

    </div>

    <div class="contents">

        <div class="notice-box">
            <a href="#">공지사항 1</a>
            <a href="#">공지사항 2</a>
            <a href="#">공지사항 3</a>
            <a href="#">공지사항 4</a>
        </div>

        <div class="board-box">
            <a href="#">게시판 글 1</a>
            <a href="#">게시판 글 2</a>
            <a href="#">게시판 글 3</a>
            <a href="#">게시판 글 4</a>
        </div>

    </div>

    <div class="footer">

        <div class="team-logo-box">
            <img src="" alt="팀 로고">
        </div>

        <div class="team-name-box">
            <ul>
                <li>팀원 1</li>
                <li>팀원 2</li>
                <li>팀원 3</li>
                <li>팀원 4</li>
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

    </div>
</body>

</html>