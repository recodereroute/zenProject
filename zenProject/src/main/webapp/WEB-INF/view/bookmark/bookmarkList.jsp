<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 리스트</title>
</head>
<body>
<div class="container">
<h1 class="h3 mb-3 fw-normal"><a  href="../index.jsp">EZEN FOOD</a></h1>
<h1 class="h3 mb-3 fw-normal">즐겨찾기</h1>
	<table class="table table-hover">
		<tr>
<td>메뉴 이름</td>
<td>Edit</td>
		</tr>

	
		<c:forEach items="${menuName }" var="mn">
	
			<tr>
				<td><a href="../menu/menuDetail?menuNo=${mn.menuNo }">${mn.menuName }</a></td>
				<td><a href="bookmarkDelete?memId=${authInfo.userId}&menuNo=${mn.menuNo }">삭제</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
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