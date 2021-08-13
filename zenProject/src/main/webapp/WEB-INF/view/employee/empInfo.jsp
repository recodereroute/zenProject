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
사원번호 : ${emp.empNo }<br />
아이디: ${emp.empId }<br />
이름 : ${emp.empName }<br />
입사일: <fmt:formatDate value="${emp.empHireDate }" type="date" pattern="yyyy-MM-dd"/> <br />
직무 : ${emp.empJob }<br />
연락처 : ${emp.empPhone }<br />
사무실번호 : ${emp.empOfficeNum }<br />
이메일: ${emp.empEmail }<br />
주소 : ${emp.empAddr }<br />
<a href="empModify?empNo=${emp.empNo }">수정</a> | 
<a href="#" onclick = "javascript:history.back();">뒤로가기</a>
</body>
</html>