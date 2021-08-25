<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 정보</title>
<style type="text/css">
<style type="text/css">
#container{
	width: 700px;
	padding:20px 30px;
	margin: auto;
}
#table{
	width: 100%;
	max-width: 700px;
	text-align: center;}
th{
	text-align: center;
	width: 200px;
}
</style>
</head>
<body>
<div id="container">
   <h1 class="h3 mb-3 fw-normal"><a  href="../index.jsp">EZEN FOOD</a></h1>
   <h1 class="h3 mb-3 fw-normal">직원 정보</h1> 
        <table class="table" id="table">
        <tr>
            <th class="success">사원번호</th>
            <td> ${emp.empNo }</td>
        </tr>
      
        <tr>
            <th class="success">아이디</th>
            <td>${emp.empId }</td>            
        </tr>
      
        <tr>
            <th class="success">이름</th>
            <td colspan="3">${emp.empName}</td>
        </tr>
        <tr>
            <th class="success">입사일</th>
            <td colspan="3"><fmt:formatDate value="${emp.empHireDate }" type="date" pattern="yyyy-MM-dd"/></td>
        </tr>
        <tr>
            <th class="success">직무</th>
            <td colspan="3">${emp.empJob }</td>
        </tr>
        <tr>
            <th class="success">연락처</th>
            <td colspan="3">${emp.empPhone }</td>
        </tr>
        <tr>
            <th class="success">사무실번호</th>
            <td colspan="3">${emp.empOfficeNum }</td>
        </tr>
        <tr>
            <th class="success">이메일</th>
            <td colspan="3">${emp.empEmail }</td>
        </tr>
        <tr>
            <th class="success">우편번호</th>
            <td colspan="3">${emp.empPost}</td>
        </tr>
        <tr>
            <th class="success">주소</th>
            <td colspan="3">${emp.empAddr }</td>
        </tr>
        <tr>
            <th class="success">상세주소</th>
            <td colspan="3">${emp.empDetailAddr }</td>
        </tr>
         
        </table>

   </div>
    <div align="center" id="container">
    <a href="empModify?empNo=${emp.empNo }" class="button4">수정</a> 
<a href="#" onclick = "javascript:history.back();" class="button4">뒤로가기</a>
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