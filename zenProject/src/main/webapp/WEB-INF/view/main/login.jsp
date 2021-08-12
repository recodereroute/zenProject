<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    
</head>
<body>
<c:if test="${empty authInfo }">
	<form:form action="loginOk" method="post" name="frm" 
		modelAttribute="loginCommand">
	<table>
		<tr><td colspan="3">
			  아이디저장<input type="checkbox" name="idStore" 
			  <c:if test="${!empty isId }">checked</c:if> />
			 | 자동로그인<input type="checkbox" name="autoLogin" /></td></tr>
		<tr><td>아이디</td>
			<td><form:input path="userId"  value="${isId }"  />
				<form:errors path="userId"  /> </td>
			<td rowspan="2">
			<input type="submit" value="로그인"/>
	 		</td></tr>
		<tr><td>비밀번호</td>
			<td>
				<form:password path="userPw"/>
				<form:errors path="userPw"  />
			</td></tr>
	
	</table>
	</form:form>
</c:if>

</body>
</html>