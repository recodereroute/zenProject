<%@page import="org.springframework.web.multipart.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
   <%@ include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 등록</title>
<style>
.container{
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
    background: -moz-linear-gradient(top, #64a724 0%, #579727 50%, #58982a 51%, #498c25 100%);
    background: -webkit-gradient(linear, left top, left bottom, from(#64a724), to(#498c25), color-stop(0.4, #579727), color-stop(0.5, #58982a), color-stop(.9, #498c25), color-stop(0.9, #498c25));
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#64a724', endColorstr='#498c25', GradientType=0 );
    
.button4:hover {
    border: 1px solid #FFF;
}
</style>
</head>

<body>

<form:form action="menuWrite" method="post" enctype="multipart/form-data"
	 modelAttribute="menuCommand">
   <input type="hidden" name="empNo" value="${authInfo.grade }"/>
<div class="container">
<h1 class="h3 mb-3 fw-normal"><a  href="../index.jsp">EZEN FOOD</a></h1>
<div class="row">
<div class="col-md-6"> 
<div class="form-group">
<label for="name">메뉴이름:</label>
  <input type="text" class="form-control" name="menuName" id="name" placeholder="Enter name" value="${menuCommand.menuName }">
 <form:errors path="menuName"/> 

</div>
</div>
</div>
주재료 : <input type="checkbox" name="menuMainItem" id="menuMainItem" value="육류"/>
                     <label for="menuMainItem">육류</label>
                     <input type="checkbox" name="menuMainItem" id="menuMainItem" value="채소"/>
                     <label for="menuMainItem">채소</label>
                    <input type="checkbox" name="menuMainItem" id="menuMainItem" value="유제품"/>
                    <label for="menuMainItem">유제품</label>
                  <input type="checkbox" name="menuMainItem" id="menuMainItem" value="생선류"/>
                   <label for="menuMainItem">생선류</label>&nbsp;&nbsp;&nbsp;<form:errors path="menuMainItem" /><br />
                   
부재료 : <input type="checkbox" name="menuSubItem" id="menuSubItem" value="소금"/>
                   <label for="menuSubItem">소금</label>
                    <input type="checkbox" name="menuSubItem" id="menuSubItem" value="간장"/>
                     <label for="menuSubItem">간장</label>
                     <input type="checkbox" name="menuSubItem" id="menuSubItem" value="후추"/>
                     <label for="menuSubItem">후추</label>
                     <input type="checkbox" name="menuSubItem" id="menuSubItem" value="마늘"/>
                     <label for="menuSubItem">마늘</label> <br />
                     <div class="form-group">
                     <br> 
           
               
<label for="content">조리법:</label> 

<textarea class="form-control" rows="5" cols="60" name="menuRecipe" 
 id="content"  placeholder="Enter recipe"
>${menuCommand.menuRecipe }</textarea>

<form:errors path="menuRecipe" />

<div class="filebox bs3-primary">
<br>
<label for="File">이미지 첨부:</label> 
<input type="file" id="File" name="menuImg" multiple="multiple" onchange="setThumbNail(event);" >
 <div id="image-feild"></div>
<br>

<input type="submit" value="submit" class="button4">
         <input type="reset" value="reset" class="button4" />
         <div id="image-feild"></div>
</div>
</div>        
   
</div>
</form:form>
</body>
<script>
var lBar = $(".load");
var bar = $("button span");
var button = $("button");
button.on("click", function(){
     lBar.addClass("loading");
     setTimeout(function(){
        lBar.removeClass("loading");
        button.addClass("complete");
     },500);
});
</script>
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