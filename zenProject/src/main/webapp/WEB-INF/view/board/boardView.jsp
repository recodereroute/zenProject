<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardView.jsp</title>
</head>
<body>
	글번호 : ${dto.boardNo }
	<br /> 글제목 : ${dto.boardTitle }
	<br /> 글내용 : ${dto.boardCon }
	<br /> 등록일 :
	<fmt:formatDate value="${dto.boardDate }" type="date" pattern="yy-MM-dd" />
	<br /> 조회수 : ${dto.boardCnt }
	<br /> 등록한 아이디 : ${dto.memId }
	<br /> 파일 :
	<c:forTokens items="${dto.boardOrgFile }" delims="," var="fileName" varStatus="idx">
		<a
			href="fileDown?str=${dto.boardFile.split(',')[idx.index]}&org=${fileName}">
			${fileName }</a> / ${dto.boardFileSize.split(',')[idx.index]}KB<br />
	</c:forTokens>
	<br />
	<c:if test="${authInfo.userId == dto.memId }">
		<a href="boardUpdate?boardNo=${dto.boardNo }">수정</a>
	</c:if>
	
	<c:if test="${authInfo.grade == 1 }">
	<form action="bcmntWrite" method="post" >
		<input type="hidden" name="cmntMemId"  value="${authInfo.userId}"/>
		<input type ="hidden" name = "boardNo" value = "${dto.boardNo }"/>
		<input type = "hidden" name = "boardMemId" value = "${dto.memId }"/>
		<table>
			<tr>
				<td>${authInfo.userId}</td>
				<td><textarea rows="2" cols="30" name="boardCmntCon"></textarea></td>
				<td><input type = "submit" value="등록"/></td>
			</tr>
		</table>
	</form>
	</c:if>
	
		<c:forEach items="${bcmntList }" var="bcmnt" varStatus="cnt">
		<div id = "content${cnt.count }">
		<table border = 1>
			<tr>
				<td>${bcmnt.cmntMemId }</td>
				<td id="nowcomment">${bcmnt.boardCmntCon }</td>
				<td id ="nowdate">${bcmnt.boardCmntDate }</td>
				<c:if test="${authInfo.userId == bcmnt.cmntMemId }">
					<td>
						<div>
						<a href="javascript:bcmntModify('content${cnt.count }','${bcmnt.boardCmntNo }','${dto.boardNo}');">수정</a>
						/<a href="bcmntDelete?boardCmntNo=${bcmnt.boardCmntNo }&boardNo=${dto.boardNo}">삭제</a>
						</div></td>
				</c:if>
			</tr>
		</table>
		</div>
		</c:forEach>
	
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.js"></script>
<script type="text/javascript">
	function bcmntModify(ele,b,c){
		$.ajax({ //비동기식 - jquery.form.js가 있어야만 사용가능
			type : "post",
			url : "bcmntModify",// 여기로부터 받아온 값
			dataType : "html",//보여주려는 결과 data-type
			data : {"boardCmntNo":b,"boardNo":c},
			//익명함수(이름이 없는 함수) : 직접 실행시킬수 없음 - 실행시키기 위한 객체가 필요
			success : function(result){//result : data 넘겨줘서 나온 동기식 결과 페이지
				$("#"+ele).html(result);
			},
			error : function(){
				alert("에러가 발생했습니다.");
				return;
			}
		});
	}
</script>
</html>