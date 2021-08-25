<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file = "../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 사항</title>
<style type="text/css">
	.container{
	width: 1130px;
	padding: 20px 30px;
	min-width: 1190px;
	margin: auto;
}
</style>
</head>
<body>

    <div class="container">
   <h1 class="h3 mb-3 fw-normal"><a  href="../index.jsp">EZEN FOOD</a></h1>
   <h1 class="h3 mb-3 fw-normal">공지사항</h1> 
        <table class="table">
        <tr>
            <th class="success">글번호</th>
            <td> ${dto.noticeNo }</td>
            <th class="success">조회수</th>
            <td>${dto.noticeCnt }</td>
        </tr>
           
         
        <tr>
            <th class="success">작성자</th>
            <td>${dto.empNo }</td>
            <th class="success">작성일</th>
            <td> <fmt:formatDate value="${dto.noticeDate }" type="date" pattern="yy-MM-dd"/></td>
        </tr>
         
        <tr>
            <th class="success">파일</th>
            <td colspan="3"><c:forTokens items="${dto.noticeOrgFile }" delims="," var="fileName" varStatus="idx">
      <a href="fileDown?str=${dto.noticeFile.split(',')[idx.index] }&org=${fileName}">
      ${fileName }</a>/${dto.noticeFileSize.split(',')[idx.index] }KB<br/>
   </c:forTokens></td>
        </tr>
         
        <tr>
            <th class="success">제목</th>
            <td colspan="3">${dto.noticeTitle }</td>
        </tr>
         
        <tr>
            <th class="success">글 내용</th>
            <td><textarea class="form-control" rows="10" cols="100" name="noticeCon" id="content" readonly="readonly">${dto.noticeCon }</textarea></td>
        </tr>

        </table>
   </div>
<div align="center" class="container">
   <c:if test="${authInfo.grade > 1 }">
   <a class="btn btn-default" href="noticeEdit?noticeNo=${dto.noticeNo }">수정</a>
   </c:if>
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