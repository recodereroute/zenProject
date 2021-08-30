<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 수정</title>
</head>
<body>
<div class="container">
  <form action="mcmntModifyOk" method="post" name="frm">
     <input type ="hidden" name = "menuNo" value = "${command.menuNo }"/>
	<input type ="hidden" name = "menuCmntNo" value = "${command.menuCmntNo }"/>
      <table class="table table-striped table-bordered"  border="1">
               
         <tr>
         <tr>
                        <td colspan="2"><br></td>
                    </tr>
 
                    <tr>
                        <td>닉네임 :${authInfo.userId}</td>
                        <td id ="nowDate">작성일자 :${mcmnt.menuCmntDate }</td>
                    </tr>
 

                    <tr>
                        <td colspan="2"><textarea rows="2" cols="30" name="menuCmntCon" >${command.menuCmntCon }</textarea></td>
                    </tr>
           
            
               <td colspan="2">
                  <input type = "submit" value="수정" class="btn btn-default"/>
                  <button type="button" onclick="javascript:location.href=''" class="btn btn-default">취소</button>
               </td>
            
         
      </table>
      </form>
      </div>

    
</div>

</body>
</html>