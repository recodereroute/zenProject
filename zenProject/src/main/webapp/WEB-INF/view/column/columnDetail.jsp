<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    <%@include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>칼럼 게시판</title>
</head>
<body>


<div class="row">
    <div class="col-xs-2 col-md-2"></div>
    <div class="col-xs-8 col-md-8">
   <h1 class="h3 mb-3 fw-normal"><a  href="../index.jsp">EZEN FOOD</a></h1> 
   <h1 class="h3 mb-3 fw-normal">칼럼 게시판</h1> 
    <div class="table table-responsive">
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
            <th class="success">제목</th>
            <td colspan="3">${dto.noticeTitle }</td>
        </tr>
         
        <tr>
            <th class="success">글 내용</th>
            <td><textarea class="form-control" rows="10" cols="100" name="noticeCon" id="content" readonly="readonly">${dto.noticeCon }</textarea></td>
        </tr>

        </table>

   </div>
    </div>
    </div>
    <div align="center">
    <c:if test="${authInfo.grade > 1 }">
<a class="btn btn-default" href="columnUpdate?noticeNo=${dto.noticeNo }">수정</a>
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