<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 페이지</title>
</head>
<body>
	메뉴번호 : ${dto.menuNo }<br>
	메뉴이름 : ${dto.menuName }<br>
	메뉴이미지 : <img src ="../menu/upload/${dto.menuImg.split(',')[0]}" width="500"/><br>
	주재료 : ${dto.menuMainItem }<br>
	부재료 : ${dto.menuSubItem }<br>
	조리법 : ${dto.menuRecipe }<br>
	등록일 : <fmt:formatDate value="${dto.menuDate }" type="date" pattern="yy-MM-dd"/><br>
	조회수 : ${dto.menuCnt }<br>
	
	<a href="" id ="bookmarkAdd"><input type="button" value="즐겨찾기 등록"/></a><br/>
	
	<a href="menuList">리스트로 돌아가기</a><br>
	<c:if test="${authInfo.grade > 1 }">
		<a href="menuEdit?menuNo=${dto.menuNo }">메뉴 수정</a>
		<a href="menuDel?menuNo=${dto.menuNo }">메뉴 삭제</a>
	</c:if>
		<c:if test="${authInfo.grade == 1 }">
		
		
	  <form action="../bookmark/bookmarkList" method="post" name="bmkfrm"
	  onsubmit="return bmkAddConfirm()">
	  	<input type="hidden" name="memId"  value="${authInfo.userId}"/>
		<input type ="hidden" name = "menuNo" value = "${dto.menuNo }"/>
		<input type="submit" value="즐겨찾기 등록"/>
	
	  </form>
	
		
		
		
	<form action="mcmntWrite" method="post" >
		<input type="hidden" name="memId"  value="${authInfo.userId}"/>
		<input type ="hidden" name = "menuNo" value = "${dto.menuNo }"/>
		
		<table>
			<tr>
				<td>${authInfo.userId}</td>
				<td><textarea rows="2" cols="30" name="menuCmntCon"></textarea></td>
				<td><input type = "submit" value="등록"/></td>
			</tr>
		</table>
	</form>
	</c:if>
	<table border = 1>
		<c:forEach items="${mcmntList }" var="mcmnt">
			<tr>
				<td>${mcmnt.memId }</td>
				<td id="nowComment">${mcmnt.menuCmntCon }</td>
				<td id ="nowDate">${mcmnt.menuCmntDate }</td>
				<c:if test="${authInfo.userId == mcmnt.memId }">
					<td>
						<a href="#">수정</a>
						/<a href="#">삭제</a></td>
				</c:if>
			</tr>
		</c:forEach>
	</table>
	
	
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	
		function bmkAddConfirm(){
		if(confirm("이동하시겠습니까?")){
			document.frm.submit();
		}else{
			return false;
		}
	}
	
	</script>
	
	
	
	
	
	
	
	
</body>
</html>