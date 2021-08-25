<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
<style>
*{background-color :#EFFFE9;}
.button4 {
 
    font-family: Verdana, Geneva, sans-serif;
    font-size: 24px;
    color: #FFF;
    padding: 5px 50px 5px 50px;
    border: 1px solid #999;
 
    text-shadow: 0px 1px 1px #666;
    text-decoration: none;
 
    -moz-box-shadow: 0 1px 3px #111;
    -webkit-box-shadow: 0 1px 3px #111;
    box-shadow: 0 1px 3px #111;
 
    border-radius: 4px;
    -moz-border-radius: 4px;
    -webkit-border-radius: 4px;
 
    background: #64a724;
    background: -moz-linear-gradient(top, #64a724 0%, #579727 50%, #58982a 51%, #498c25 100%);
    background: -webkit-gradient(linear, left top, left bottom, from(#64a724), to(#498c25), color-stop(0.4, #579727), color-stop(0.5, #58982a), color-stop(.9, #498c25), color-stop(0.9, #498c25));
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#64a724', endColorstr='#498c25', GradientType=0 );
    
.button4:hover {
    border: 1px solid #FFF;
}
</style>
</head>


<body>
<form action="boardModify" method="post" enctype="multipart/form-data">
<div class="container">
<h1 class="h3 mb-3 fw-normal"><a  href="../index.jsp">EZEN FOOD</a></h1>
<h1 class="h3 mb-3 fw-normal">일반 게시판</h1> 
<div class="row">
<div class="col-md-6"> 
<div class="form-group">

<label for="name">글번호:</label>
<input type="text" value="${dto.boardNo }" readonly="readonly" class="form-control" name="boardNo" id="name">
<label for="name">제목:</label>
<input type="text" value="${dto.boardTitle }"  class="form-control" name="boardTitle" id="name">
<label for="content">내용:</label> 
<textarea class="form-control" rows="5" cols="60" name="boardCon" id="content">${dto.boardCon }</textarea>
<div class="filebox bs3-primary">
 
<label for="name">등록일:</label>
<input type="text" value="${dto.boardDate }" readonly="readonly" class="form-control" name="boardDate" id="name">
<label for="name">조회수:</label>
<input type="text" value="${dto.boardCnt }" readonly="readonly" class="form-control" name="boardCnt" id="name">
<br>
<c:forTokens items="${dto.boardOrgFile }" delims="," var="original" varStatus="idx">
			<p>
				<span id="file"> ${original },${dto.boardFile.split(',')[idx.index]},${dto.boardFileSize.split(',')[idx.index] } </span>
				<input type="button" id="btn" onclick="fileDel1(this)" value="파일 삭제" />
			</p>
		</c:forTokens>
		파일 추가 : <input type="file" name="boardFile" multiple="multiple" /> 
		<input type="hidden" name="fileDel" id="fileDel" size="100" />
		<input type="submit" value="수정완료" class="button4"/>
		<input type="button" value="삭제 " class="button4"
			onclick="javascript:location.href='boardDel?boardNo=${dto.boardNo}'" />

</div>
</div>
</div>
</div>
</div>    
</form>    

</body>
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



