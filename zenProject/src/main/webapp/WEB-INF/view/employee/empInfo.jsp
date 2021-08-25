<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 정보</title>
<style type="text/css">
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
<div class="row">
    <div class="col-xs-2 col-md-2"></div>
    <div class="col-xs-8 col-md-8">
   <h1 class="h3 mb-3 fw-normal"><a  href="../index.jsp">EZEN FOOD</a></h1>
   <h1 class="h3 mb-3 fw-normal">직원 정보</h1> 
    <div class="table table-responsive">
        <table class="table">
        <tr>
            <th class="success">사원번호</th>
            <td> ${emp.empNo }</td>
        </tr>
      
        <tr>
            <th class="success">아이디</th>
            <td>${emp.empId }</td>            
        </tr>
      
        <tr>
            <th class="success">이름</th>
            <td colspan="3">${emp.empName}</td>
        </tr>
        <tr>
            <th class="success">입사일</th>
            <td colspan="3"><fmt:formatDate value="${emp.empHireDate }" type="date" pattern="yyyy-MM-dd"/></td>
        </tr>
        <tr>
            <th class="success">직무</th>
            <td colspan="3">${emp.empJob }</td>
        </tr>
        <tr>
            <th class="success">연락처</th>
            <td colspan="3">${emp.empPhone }</td>
        </tr>
        <tr>
            <th class="success">사무실번호</th>
            <td colspan="3">${emp.empOfficeNum }</td>
        </tr>
        <tr>
            <th class="success">이메일</th>
            <td colspan="3">${emp.empEmail }</td>
        </tr>
        <tr>
            <th class="success">우편번호</th>
            <td colspan="3">${emp.empPost}</td>
        </tr>
        <tr>
            <th class="success">주소</th>
            <td colspan="3">${emp.empAddr }</td>
        </tr>
        <tr>
            <th class="success">상세주소</th>
            <td colspan="3">${emp.empDetailAddr }</td>
        </tr>
         
        </table>

   </div>
    </div>
    </div>
    <div align="center">
    <a href="empModify?empNo=${emp.empNo }">수정</a> | 
<a href="#" onclick = "javascript:history.back();">뒤로가기</a>
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