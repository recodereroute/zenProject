<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <form action="menuModify" method="post" enctype="multipart/form-data">

      글번호 : <input type="text" value="${dto.menuNo }" readonly="readonly"
         name="menuNo" />
   메뉴이름 : <input type="text"
         value="${dto.menuName }" name="menuName" /><br>
         
         
   메뉴이미지:   <p>
            <span id="file"> ${dto.menuImg.split(',')[idx.index]}
            </span> <input type="button" id="btn" onclick="fileDel1(this)"
               value="이미지 삭제" />
         </p>
         
   이미지 추가 : <input type="file" name="menuImg" multiple="multiple" /><br>
   주재료 : <input type="checkbox" name="menuMainItem" id="menuMainItem" value="육류"/>
                     <label for="menuMainItem">육류</label>
                     <input type="checkbox" name="menuMainItem" id="menuMainItem" value="채소"/>
                     <label for="menuMainItem">채소</label>
                    <input type="checkbox" name="menuMainItem" id="menuMainItem" value="유제품"/>
                    <label for="menuMainItem">유제품</label>
                  <input type="checkbox" name="menuMainItem" id="menuMainItem" value="생선류"/>
                   <label for="menuMainItem">생선류</label><br /><br>
   부재료 : <input type="checkbox" name="menuSubItem" id="menuSubItem" value="소금"/>
                   <label for="menuSubItem">소금</label>
                    <input type="checkbox" name="menuSubItem" id="menuSubItem" value="간장"/>
                     <label for="menuSubItem">간장</label>
                     <input type="checkbox" name="menuSubItem" id="menuSubItem" value="후추"/>
                     <label for="menuSubItem">후추</label>
                     <input type="checkbox" name="menuSubItem" id="menuSubItem" value="마늘"/>
                     <label for="menuSubItem">마늘</label><br>
   조리법 : <textarea rows="5" cols="60" name="menuRecipe">${dto.menuRecipe }</textarea><br>
   등록일 : ${dto.menuDate }<br>
   조회수 : ${dto.menuCnt }<br>
   <a href="menuList">리스트로 돌아가기</a><br>
      <input type="submit" value="수정 완료"/>
   </form>
</body>
</html>