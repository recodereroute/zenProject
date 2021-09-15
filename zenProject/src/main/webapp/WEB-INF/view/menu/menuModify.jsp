<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 수정</title>
<style>
.container {
	width: 1130px;
	padding: 20px 30px;
	min-width: 1160px;
	margin: auto;
}

.menu-chk-list {
	max-width: 1200px;
	margin: auto;
	text-align: left;
	background-color: #72CC82;
	border-radius: 7px;
	color: #EFFFE9;
	margin-top: 20px;
	margin-bottom: 20px;
}

.menu-chk-list th {
	background-color: #3CB371;
	text-align: center;
	min-width: 110px;
	border-radius: 10px;
	color: #EFFFE9;
}

.menu-chk-list td {
	padding: 5px;
	min-width: 110px;
	width: 110px;
}

.menu-chk-list hr {
	border: 1px solid #3CB371;
}

.menu-chk-list label:hover {
	color: #e5f50b;
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
</style>
</head>
<body>
	<form:form action="menuModify" method="post"
		enctype="multipart/form-data" modelAttribute="menuCommand">
		<div class="container">
			<h1 class="h3 mb-3 fw-normal">
				<a href="../index.jsp">만개의 레시피로 냉장고를 부탁해</a>
			</h1>
			<h1 class="h3 mb-3 fw-normal">
				<a href="menuList">메뉴 게시판 </a>
			</h1>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">



						<input type="hidden" class="form-control" name="menuNo"
							value="${menuCommand.menuNo }" id="name">
						<form:errors path="menuNo" />
						<label for="name">메뉴 이름:</label> <input type="text"
							class="form-control" name="menuName" id="name"
							value="${menuCommand.menuName }">
						<form:errors path="menuName" />

					</div>
				</div>
			</div>

			<table class="menu-chk-list">
				<tr>
					<th rowspan="3">main item</th>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem1" value="돼지고기"><label for="menuMainItem1">돼지고기</label></td>
					<td><input type="checkbox" name="menuMainItem" id="meat2"
						value="소고기"><label for="meat2">소고기</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem3" value="닭고기"><label for="menuMainItem3">닭고기</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem10" value="오리고기"><label
						for="menuMainItem10">오리고기</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem4" value="달걀"><label for="menuMainItem4">달걀</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem5" value="감자"><label for="menuMainItem5">감자</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem6" value="베이컨"><label for="menuMainItem6">베이컨</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem7" value="버섯"><label for="menuMainItem7">버섯</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem8" value="양파"><label for="menuMainItem8">양파</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem9" value="마늘"><label for="menuMainItem9">마늘</label></td>

				</tr>

				<tr>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem11" value="치즈"><label for="menuMainItem11">치즈</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem12" value="빵"><label for="menuMainItem12">빵</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem13" value="파스타면"><label
						for="menuMainItem13">파스타면</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem14" value="중화면"><label
						for="menuMainItem14">중화면</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem15" value="새우"><label for="menuMainItem15">새우</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem16" value="두부"><label for="menuMainItem16">두부</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem17" value="연어"><label for="menuMainItem17">연어</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem18" value="오징어"><label
						for="menuMainItem18">오징어</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem19" value="대파"><label for="menuMainItem19">대파</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem20" value="파프리카"><label
						for="menuMainItem20">파프리카</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem21" value="밥"><label for="menuMainItem21">밥</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem22" value="메밀소바"><label
						for="menuMainItem22">메밀소바</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem23" value="우동사리"><label
						for="menuMainItem23">우동사리</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem24" value="양배추"><label
						for="menuMainItem24">양배추</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem25" value="오이"><label for="menuMainItem25">오이</label></td>
					<td><input type="checkbox" name="menuMainItem"
						id="menuMainItem26" value="가지"><label for="menuMainItem26">가지</label></td>
				</tr>

				<tr>
					<td colspan="11">
						<hr>
					</td>
				</tr>
				<tr>
					<th rowspan="3">sub item</th>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem1" value="식용유"><label for="menuSubItem1">식용유</label></td>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem2" value="소금"><label for="menuSubItem2">소금</label></td>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem3" value="와인"><label for="menuSubItem3">와인</label></td>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem4" value="우유"><label for="menuSubItem4">우유</label></td>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem5" value="마요네즈"><label for="menuSubItem5">마요네즈</label></td>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem6" value="후추"><label for="menuSubItem6">후추</label></td>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem7" value="굴소스"><label for="menuSubItem7">굴소스</label></td>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem8" value="간장"><label for="menuSubItem8">간장</label></td>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem9" value="설탕"><label for="menuSubItem9">설탕</label></td>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem10" value="고추가루"><label for="menuSubItem10">고추가루</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem11" value="식초"><label for="menuSubItem11">식초</label></td>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem12" value="케첩"><label for="menuSubItem12">케첩</label></td>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem13" value="참기름"><label for="menuSubItem13">참기름</label></td>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem14" value="전분"><label for="menuSubItem14">전분</label></td>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem15" value="맛술"><label for="menuSubItem15">맛술</label></td>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem16" value="혼다시"><label for="menuSubItem16">혼다시</label></td>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem17" value="올리고당"><label for="menuSubItem17">올리고당</label></td>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem18" value="와사비"><label for="menuSubItem18">와사비</label></td>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem19" value="돈까스소스"><label
						for="menuSubItem19">돈까스소스</label></td>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem20" value="된장"><label for="menuSubItem20">된장</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem21" value="다시마"><label for="menuSubItem21">다시마</label></td>
					<td><input type="checkbox" name="menuSubItem"
						id="menuSubItem22" value="육수"><label for="menuSubItem22">육수</label></td>
					<td></td>
				</tr>

			</table>
			<form:errors path="menuMainItem" />
			<input type="hidden" value="${menuCommand.menuImg }" id="imgNames">
			<div>
				<c:if test="${!empty menuCommand.menuImg}">
				<label for="content">수정 전 이미지:</label><br>
				<c:forTokens items="${menuCommand.menuImg }" var="img" delims=",">
					<img src="../menu/upload/${img}" width="250px" height="250px">
				</c:forTokens>
				<br><label for="content">수정 후 이미지:</label><br>
				<c:forTokens items="${menuCommand.menuImg }" var="img" delims=",">
					<input type="file" name="menuImg" accept="image/jpeg,image/png" onchange="setThumbnail(event)">
				</c:forTokens>
				</c:if>
				<c:if test="${empty menuCommand.menuImg }">
					<label for= "content">이미지 추가</label>
					<input type="file" name="menuImg" accetp="image/jpeg,image/png" onchange="setThumbnail(event)" multiple="multiple"> 
				</c:if>
				<div class="img-field"></div>
			</div>
			<label for="content">조리법:</label>
			<c:forTokens items="${menuCommand.menuRecipe }" var="mr" delims=",">
				<textarea class="form-control" rows="5" cols="60" name="menuRecipe"
					id="content">${mr }</textarea>
				<form:errors path="menuRecipe" />
			</c:forTokens>
			
			<div class="filebox bs3-primary">

					<input type="hidden" value="${menuCommand.menuDate }" class="form-control" name="menuDate" id="name"> 
					
					<input type="hidden" value="${menuCommand.menuCnt }" class="form-control" name="menuCnt" id="name"> 
					<input type="submit" value="수정 완료" class="button4" />
				<div id="image-feild"></div>

			</div>
		</div>

	</form:form>

</body>
<script type="text/javascript">
function setThumbnail(event) { 
	var reader = new FileReader(); 
	reader.onload = function(event) { 
		var img = document.createElement("img"); 
		img.setAttribute("src", event.target.result); 
		img.style.width = "250px";
		img.style.heigth = "250px";
		document.querySelector(".img-field").appendChild(img); }; 
		reader.readAsDataURL(event.target.files[0]); 
var inputFile = document.getElementById("inputfile");
console.log(inputFile.value);
	}
</script>
<script type="text/javascript">
	function fileDel(btn) {
		var fileDel = $("#fileDel").val()
		if ($(btn).attr("value") == "삭제") {
			$(btn).attr("value", "삭제취소");
			$("#fileDel").val(
					$(btn).parent().children("#fileName").text().trim() + ","
							+ delFile)
		} else {
			$(btn).attr("value", "삭제");
			fileName = $(btn).parent().children("#fileName").text().trim()
					+ ",";
			$("#fileDel1").val(delFile.replace(fileName, ""));
		}
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