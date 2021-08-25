<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file = "../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 리스트</title>
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
<h1 class="h3 mb-3 fw-normal"><a  href="../index.jsp">EZEN FOOD</a></h1>
직원 리스트
   <c:if test="${empty list }">
      등록된 직원이 없습니다.
   </c:if>
   <table class="table table-hover">
      <tr>
         <td>사원번호</td>
         <td>이름</td>
         <td>직무</td>
         <td>입사일</td>
         <td>사무실 번호</td>
      </tr>
      <c:forEach var="empDTO" items="${list}">
      <tr>
         <td><a href="empInfo?empNo=${empDTO.empNo }">${empDTO.empNo }</a></td>
         <td>${empDTO.empName }</td>
         <td>${empDTO.empJob }</td>
         <td><fmt:formatDate value = "${empDTO.empHireDate }" type = "date" pattern = "yy-MM-dd"/></td>
         <td>${empDTO.empOfficeNum }</td>
      </tr>
      </c:forEach>
      <tr>
         <td colspan="5">
            <%@ include file="../include/includePage.jsp" %>
         </td>
      </tr>
      
   </table>
   <a class="btn btn-default" href="main/empRegist">직원 등록</a>
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