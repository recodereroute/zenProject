<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file = "../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 리스트</title>
<style type="text/css">
	.container{
		width: 1130px;
		padding: 20px 30px;
		min-width: 1190px;
		margin: auto;
	}
</style>
</head>
<body>
<div class="container">
<h1 class="h3 mb-3 fw-normal"><a  href="index.jsp">EZEN FOOD</a></h1>
회원 리스트 페이지입니다. <br />
<c:if test="${!empty memList }">
<table class = "table table-hover">
   <tr><td>닉네임</td><td>이름</td><td>이메일</td></tr>
   <c:forEach items="${memList }" var = "dto">
      <tr><td><a href ="memInfo?${dto.memId}">${dto.memNick }</a></td>
      <td>${dto.memName }</td><td>${dto.memEmail }</td></tr>
   </c:forEach>
   <tr><td colspan="3">
      <%@ include file="../include/includePage.jsp" %>
   </td></tr>
</table>
</c:if>
<c:if test="${empty memList }">
등록된 회원이 없습니다.
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