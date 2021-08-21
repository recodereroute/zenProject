<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/index.css">
</head>

<body>
    <div class="header">

        <div class="logo">
            <a href="index.jsp">EZEN FOOD</a>
        </div>

        <div class="search-box">
            <form action="">
                <label for="search-bar">뭐 해 먹을까?</label>
                <input type="search" name="search-bar" id="search-bar">
                <input type="submit" value="검색">
            </form>
        </div>

        <div class="login-box">
            <form action="login/login" method="post" name="frm">
                <c:if test="${empty authInfo }">
                    <!--<a href="search/idFind">아이디 찾기</a> |
                    <a href="search/findPassword">비밀번호 찾기</a>|-->
                    <a href="register">회원가입</a>
                    <a href="login/login">로그인</a><input type="submit" value="로그인">
                </c:if>
                <!--<c:if test="${!empty authInfo }">
                    <a href="login/logOut">logOut</a>
                </c:if>
                <c:if test="${!empty authInfo }">
                    <c:if test="${authInfo.grade == 1 }">
                        <a href="member/myPage">마이페이지</a>
                    </c:if>
                    <c:if test="${authInfo.grade != 1 }">
                        <a href="employee/empMyPage">마이페이지</a>
                        <a href="memList">회원리스트</a>
                        <a href="employee/empList">직원 리스트</a>
                        <a href="notice/noticeList">공지사항</a>
                    </c:if>
                </c:if>-->
            </form>
        </div>

    </div>

    <div class="nav">
        <a href="notice/noticeList">공지사항</a>
        <a href="board/boardList">게시판</a>
        <a href="menu/menuList">음식</a>
        <a href="column/columnList">칼럼</a>
        <a href="#">즐겨찾기</a>
    </div>

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