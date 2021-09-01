<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<style type="text/css">
.container {
	width: 1130px;
	padding: 20px 30px;
	min-width: 1190px;
	margin: auto;
}

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
	background: -moz-linear-gradient(top, #64a724 0%, #579727 50%, #58982a 51%, #498c25
		100%);
	background: -webkit-gradient(linear, left top, left bottom, from(#64a724),
		to(#498c25), color-stop(0.4, #579727), color-stop(0.5, #58982a),
		color-stop(.9, #498c25), color-stop(0.9, #498c25));
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#64a724',
		endColorstr='#498c25', GradientType=0); .
	button4: hover{
    border: 1px solid #FFF;
}
[href]{color: black;}
.comment-table{border: 1px red solid;}
</style>
</head>
<body>
	<div class="container">
		<h1 class="h3 mb-3 fw-normal">
			<a href="../index.jsp">EZEN FOOD</a>
		</h1>
		<h1 class="h3 mb-3 fw-normal">일반 게시판</h1>
		<table class="table">
			<tr>
				<th class="success">글번호</th>
				<td>${dto.boardNo }</td>
				<th class="success">조회수</th>
				<td>${dto.boardCnt }</td>
			</tr>


			<tr>
				<th class="success">작성자</th>
				<td>${dto.memId }</td>
				<th class="success">작성일</th>
				<td><fmt:formatDate value="${dto.boardDate }" type="date"
						pattern="yy-MM-dd" /></td>
			</tr>

			<tr>
				<th class="success">파일</th>
				<td colspan="3"><c:forTokens items="${dto.boardOrgFile }"
						delims="," var="fileName" varStatus="idx">
						<a
							href="fileDown?str=${dto.boardFile.split(',')[idx.index]}&org=${fileName}">
							${fileName }</a> / ${dto.boardFileSize.split(',')[idx.index]}KB<br />
					</c:forTokens></td>
			</tr>

			<tr>
				<th class="success">제목</th>
				<td colspan="3">${dto.boardTitle }</td>
			</tr>

			<tr>
				<th class="success">글 내용</th>
				<td><textarea class="form-control" rows="10" cols="100"
						name="menuRecipe" id="content" readonly="readonly">${dto.boardCon }</textarea></td>
			</tr>

		</table>
	</div>
	

	<div align="center" class="container">
		<c:if test="${authInfo.userId == dto.memId }">
			<a class="btn btn-default" href="boardUpdate?boardNo=${dto.boardNo }">수정</a>
		</c:if>
<div class="container">
   <form action="bcmntWrite" method="post">
      <input type="hidden" name="cmntMemId" value="${authInfo.userId}" />
				<input type="hidden" name="boardNo" value="${dto.boardNo }" />
				<input type="hidden" name="boardMemId" value="${dto.memId }" />
      <table class="table table-striped table-bordered" border="1">
         <tr>
            <td>${authInfo.userId}</td>
            <td><textarea rows="2" cols="30" name="boardCmntCon"></textarea></td>
            <td><input type = "submit" value="등록" class="button4"/></td>
         </tr>
      </table>
   
   </form>
   </div>
		
		<div class="container">
  <c:forEach items="${bcmntList }" var="bcmnt" varStatus="cnt">
      <div id ="content${cnt.count }">
      <table class="table table-striped table-bordered"  border="1">
               
         <tr>
                    <tr>
                        <td>닉네임 : ${bcmnt.cmntMemId }</td>
                        <td id ="nowDate">작성일자 : ${bcmnt.boardCmntDate }</td>
                    </tr>
 

                    <tr>
                        <td id="nowComment" colspan="2">댓글 내용 : ${bcmnt.boardCmntCon }</td>
                    </tr>
           
            <c:if test="${authInfo.userId == bcmnt.cmntMemId }">
               <td colspan="2">
                  <a href="javascript:bcmntModify('content${cnt.count}','${bcmnt.boardCmntNo }','${dto.boardNo}');" class="btn btn-default">수정</a>
                  <a href="bcmntDelete?boardCmntNo=${bcmnt.boardCmntNo }&boardNo=${dto.boardNo }" class="btn btn-default">삭제</a></td>
            </c:if>
         
      </table>
      </div>

    </c:forEach>
</div>

		
	</div>


</body>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.js"></script>
<script type="text/javascript">
	function bcmntModify(ele, b, c) {
		$.ajax({ //비동기식 - jquery.form.js가 있어야만 사용가능
			type : "post",
			url : "bcmntModify",// 여기로부터 받아온 값
			dataType : "html",//보여주려는 결과 data-type
			data : {
				"boardCmntNo" : b,
				"boardNo" : c
			},
			//익명함수(이름이 없는 함수) : 직접 실행시킬수 없음 - 실행시키기 위한 객체가 필요
			success : function(result) {//result : data 넘겨줘서 나온 동기식 결과 페이지
				$("#" + ele).html(result);
			},
			error : function() {
				alert("에러가 발생했습니다.");
				return;
			}
		});
	}
</script>
<!-- jquery -->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- BootStrap -->

<!-- 합쳐지고 최소화된 최신 CSS -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- 부가적인 테마 -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</html>