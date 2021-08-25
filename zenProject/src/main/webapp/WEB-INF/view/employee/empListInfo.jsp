<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 정보</title>
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
    <a href="employee/empModify?empNo=${emp.empNo }" class="button4">수정</a> 
	<a href="javascript:history.back();" class="button4">뒤로가기</a>
</div>
</body>
</html>