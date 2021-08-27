<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>직원 정보</title>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
	font-family: 'Poor Story', cursive;
}

a {
	text-decoration: none;
}

a:link {
	color: #EFFFE9;
}

a:visited {
	color: #EFFFE9;
}

a:hover {
	color: rgb(240, 236, 42);
}

li {
	list-style: none;
}

/* table */
body {
	font-size: 30px;
	color: #EFFFE9;
}

.container {
	width: 700px;
	padding: 100px;
	max-width: 760px;
	margin: auto;
}

table {
	width: 500px;
	height: 500px;
	border: #72CC82 solid 1px;
	background-color: #109972;
	border-radius: 10px;
	width: 500px;
	height: 500px;
	text-align: center;
}

button {
	width: 90%;
	height: 45px;
	border-radius: 10px;
	background-color: #754F44;
	color: #EFFFE9;
	font-size: 30px;
	border: 2px #EFFFE9 solid;
}
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap"
	rel="stylesheet">
</head>

<body>
	<div class="container">
		<table class="table" id="table">
			<tr>
				<td colspan="2">
					<h1>직원 정보</h1>
				</td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>${emp.empId }</td>
			</tr>

			<tr>
				<th>이름</th>
				<td>${emp.empName}</td>
			</tr>
			<tr>
				<th>입사일</th>
				<td><fmt:formatDate value="${emp.empHireDate }" type="date"
						pattern="yyyy-MM-dd" /></td>
			</tr>
			<tr>
				<th>직무</th>
				<td>${emp.empJob }</td>
			</tr>
			<tr>
				<th>연락처</th>
				<td>${emp.empPhone }</td>
			</tr>
			<tr>
				<th>사무실번호</th>
				<td>${emp.empOfficeNum }</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>${emp.empEmail }</td>
			</tr>
			<tr>
				<th>우편번호</th>
				<td>${emp.empPost}</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>${emp.empAddr }</td>
			</tr>
			<tr>
				<th>상세주소</th>
				<td>${emp.empDetailAddr }</td>
			</tr>
			<tr>
				<td colspan="2"><a href="empModify?empNo=${emp.empNo }"><button>수정
							완료</button></a></td>
			</tr>
			<tr>
				<td colspan="2"><a href="../index.jsp">메인으로 돌아가기</a></td>
			</tr>
		</table>
	</div>
</body>
</html>