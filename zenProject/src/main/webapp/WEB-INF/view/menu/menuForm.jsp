<%@page import="org.springframework.web.multipart.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<form action="menuWrite" method="post" enctype="multipart/form-data">
		메뉴이름 : <input type="text" name="menuName" /> <br />
		주재료 : <input type="checkbox" name="menuMainItem" id="menuMainItem" value="육류"/>
               		<label for="menuMainItem">육류</label>
               		<input type="checkbox" name="menuMainItem" id="menuMainItem" value="채소"/>
               		<label for="menuMainItem">채소</label>
              		<input type="checkbox" name="menuMainItem" id="menuMainItem" value="유제품"/>
      		        <label for="menuMainItem">유제품</label>
    		        <input type="checkbox" name="menuMainItem" id="menuMainItem" value="생선류"/>
 		            <label for="menuMainItem">생선류</label><br />
      	부재료 : <input type="checkbox" name="menuSubItem" id="menuSubItem" value="소금"/>
        	        <label for="menuSubItem">소금</label>
             	    <input type="checkbox" name="menuSubItem" id="menuSubItem" value="간장"/>
               		<label for="menuSubItem">간장</label>
               		<input type="checkbox" name="menuSubItem" id="menuSubItem" value="후추"/>
               		<label for="menuSubItem">후추</label>
               		<input type="checkbox" name="menuSubItem" id="menuSubItem" value="마늘"/>
               		<label for="menuSubItem">마늘</label> <br />
		조리방법 : <textarea rows="5" cols="60" name="menuRecipe"></textarea> <br />
		사진 첨부 : 
			<input type="file" name="menuImg" multiple="multiple" onchange="setThumbNail(event);">
			<input type="submit" value="submit">
			<input type="reset" value="reset" />
			<div id="image-feild"></div>
	</form>
</body>
<script type="text/javascript">
	function setThumbNail(event) {
		for(var image of event.target.files){
			var reader = new FileReader();
			reader.onload = function(event){ 
				var idNum = 0;
				var img = document.createElement("img");
				img.setAttribute("src",event.target.result);
				img.style.width = "300px";
				img.style.height = "300px";
				document.querySelector("#image-feild").appendChild(img);
				if(img.src.indexOf("jpeg") < 0 && img.src.indexOf("png") < 0){
					alert("jpg, png 파일만 등록할 수 있습니다.");
					img.parentNode.removeChild(img);
				}
			}
			reader.readAsDataURL(image);			
		}
	}
</script>
</html>