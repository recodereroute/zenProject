<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>

<body>
	<form action="boardModify" method="post" enctype="multipart/form-data">

		글번호 : <input type="text" value="${dto.boardNo }" readonly="readonly" name="boardNo" /> <br />
		글제목 :<input type="text" value="${dto.boardTitle }" name="boardTitle" /><br /> 
		글내용 : <textarea rows="5" cols="30" name="boardCon">${dto.boardCon }</textarea> <br />
		등록일 : ${dto.boardDate }<br />
		조회수 : ${dto.boardCnt }<br />
		등록한 회원 : ${dto.memId }<br />
		파일 :<br />
		<c:forTokens items="${dto.boardOrgFile }" delims="," var="original" varStatus="idx">
			<p>
				<span id="file"> ${original },${dto.boardFile.split(',')[idx.index]},${dto.boardFileSize.split(',')[idx.index] } </span>
				<input type="button" id="btn" onclick="fileDel1(this)" value="파일 삭제" />
			</p>
		</c:forTokens>
		파일 추가 : <input type="file" name="boardFile" multiple="multiple" /> 
		<input type="hidden" name="fileDel" id="fileDel" size="100" />
		<input type="submit" value="수정완료" />
		<input type="button" value="삭제 "
			onclick="javascript:location.href='boardDel?boardNo=${dto.boardNo}'" />
	</form>
</body>
</html>



<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js">
	
</script>
<script type="text/javascript">
	function fileDel1(btn) {
		var fileDel = $("#fileDel").val();
		if ($(btn).attr("value") == "파일 삭제") {
			$(btn).attr("value", "삭제취소");
			$("#fileDel").val(
					$(btn).parent().children("#file").text().trim() + "/"
							+ fileDel);
		} else {
			$(btn).attr("value", "파일 삭제");
			fileName = $(btn).parent().children("#file").text().trim();
			$("#fileDel").val(fileDel.replace(fileName + "/", ""));

		}

	}
</script>