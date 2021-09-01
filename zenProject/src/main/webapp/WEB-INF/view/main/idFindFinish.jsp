<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<style>
{ margin:14px 7px 0; padding:0 0 29px; color:#333; font-size:13px; }
.info { padding:25px 21px 20px; border:1px solid #d5d5d5; text-align:center; background:#fff; }
.info p:last-child { margin:10px 0 0; }
.info span { color:#508bed; font-size:15px; font-weight:bold; }
.info strong { color:#508bed; font-weight:bold; }
table { margin:7px auto 0; border:1px solid #d5d5d5; color:#353535; background:#fff; }
th { width:80px; padding:0px 5px 14px 14px; text-align:left; color:#757575; font-weight:normal; vertical-align:middle; }
td { padding:0px 14px 14px 14px; vertical-align:middle; }
tr:first-child th,
tr:first-child td { padding-top:14px; }
.list { padding:14px; border:1px solid #d5d5d5; border-top:none; background:#fff; }
.btnArea { margin:20px ; 
			text-align: center; }
.btnArea a:link,.btnArea a:visited {
color: black;
}
a {
	text-decoration: none;
}

</style>
</head>
<body>
<div class="info">
<c:if test="${memId == null }">
			입력한 정보가 부족하여 아이디를 찾지 못했습니다.
	</c:if>
	<c:if test="${memId != null }">
        <p><span>아이디 찾기가 완료되었습니다.</span></p>    
        </c:if>  
    </div>
    <c:if test="${memId != null }">
    <table border="1" summary="">
        <caption>아이디 찾기 결과</caption>
        
        <tr>
            <th scope="row">아이디</th>
            <td>${memId}</td>
        </tr>
    </table>
     </c:if>  

    <div class="btnArea">
       <a href="../login/login" class="btnSubmit">로그인</a> |
        <a href="../search/findPassword" class="btnEm">비밀번호 찾기</a> |
        	<a href="../" >메인 페이지로가기</a>
    </div>




</body>
</html>