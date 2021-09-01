<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 수정</title>
</head>
<body>

<div class="container">
  <form action="bcmntModifyOk" method="post" name="frm">
     <input type ="hidden" name = "boardNo" value = "${dto.boardNo }"/>
	<input type ="hidden" name = "boardCmntNo" value = "${dto.boardCmntNo }"/>
      <table class="table table-striped table-bordered"  border="1">
               
                    <tr>
                        <td>닉네임 :${authInfo.userId}</td>
                        <td id ="nowDate">작성일자 :${dto.boardCmntDate }</td>
                    </tr>

                    <tr>
                        <td colspan="2"><textarea rows="2" cols="30" name="boardCmntCon" >${dto.boardCmntCon }</textarea></td>
                    </tr>            
               <td colspan="2">
                  <input type = "submit" value="수정" class="btn btn-default"/>
                  <button type="button" onclick="javascript:location.href=''" class="btn btn-default">취소</button>
               </td>       
      </table>
      </form>
      </div>

</body>
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