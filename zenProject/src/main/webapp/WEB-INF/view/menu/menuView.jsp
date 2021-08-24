<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 페이지</title>
<style type="text/css">
*{margin:0;padding:0;}li{list-style-type:none;}
img, fieldset{border:none;}li img, dd img{vertical-align:top;}

body{background:#EFFFE9 ; font:13px/1.5 "굴림",Gulim;color:#333;}

#wrapper{width:630px;margin:0 auto;}


h1 span{font-size:150%;}
h1 em{font-style:normal;font-size:200%;color:#ccc;}
#menuindex{position:relative;width:100%;background: #EFFFE9;}
   #menu{position:absolute;left:0;top:0;width:150px;padding:20px;}
      #menu li{padding:5px 0;}
      #menu li a{color:#000;}
      #menu li a:hover{color:#662;border-bottom:1px dashed #662;}
   #content{position:relative;left:130px;width:500px;background:#fff;}
      h2{padding:10px 20px;font:bold 25px "궁서",Gungseo;background:#EFFFE9;color:#ee0;}
      p{padding:20px;text-align:justify;}
#footer{background:#aaa;}
   address{font-style:normal;padding:10px 20px;color:#000;}
    footer{
     background-color: #3c3935;
  }
  footer img{
     width: 90px; height: 90px; border-radius:50%; margin-top:7px;
  }
  .foo_div{float: left;}
  .foo_div1{text-align: center;}
  .foo_div1 span{font-size:15px; color: white;}
  .foo_div1 p{margin-top: 5px; color: white;}
  .foo_div1 img{width: 25px; height:25px; margin-top:10px;}
</style>
</head>
<body>
<div id="wrapper">
   <div id="header">
      <h1 class="h3 mb-3 fw-normal"><a  href="../index.jsp">EZEN FOOD</a></h1>
   </div>
   <div id="menuindex">
      <ul id="menu">
         <li>메뉴번호 : ${dto.menuNo }</li>
         <li>주재료 : ${dto.menuMainItem }</li>
         <li>부재료 : ${dto.menuSubItem }</li>
         <li>등록일 : <fmt:formatDate value="${dto.menuDate }" type="date" pattern="yy-MM-dd"/></li>
         <li>조회수 : ${dto.menuCnt }</li>
      </ul>
      <div id="content">
         <h2> ${dto.menuName } </h2>
         <p><img src ="../menu/upload/${dto.menuImg.split(',')[0]}" width="500"/></p>
         <h2>  조리법</h2>
         <p>  ${dto.menuRecipe }</p>
      </div>
   </div>
   
</div>
   <div align="center">
   <a class="btn btn-default" href="menuList">리스트로 돌아가기</a><br>
   <c:if test="${authInfo.grade == dto.empNo }">
      <a class="btn btn-default" href="menuEdit?menuNo=${dto.menuNo }">메뉴 수정</a>
      <a class="btn btn-default" href="menuDel?menuNo=${dto.menuNo }">메뉴 삭제</a>
   </c:if>
   </div>
   
   <c:if test="${authInfo.grade == 1 }">
   
        <form action="../bookmark/bookmarkAdd" method="post" name="bmkfrm"
     onsubmit="return bmkAddConfirm()">
        <input type="hidden" name="memId"  value="${authInfo.userId}"/>
      <input type ="hidden" name = "menuNo" value = "${dto.menuNo }"/>
      <input type="submit" value="즐겨찾기 등록"/>
     </form>
   
   
   <form action="mcmntWrite" method="post" >
      <input type="hidden" name="memId"  value="${authInfo.userId}"/>
      <input type ="hidden" name = "menuNo" value = "${dto.menuNo }"/>
      <table>
         <tr>
            <td>${authInfo.userId}</td>
            <td><textarea rows="2" cols="30" name="menuCmntCon"></textarea></td>
            <td><input type = "submit" value="등록"/></td>
         </tr>
      </table>
   </form>
   </c:if>
   <c:forEach items="${mcmntList }" var="mcmnt" varStatus="cnt">
      <div id ="content${cnt.count }">
      <table border = 1>
         <tr>
            <td>${mcmnt.memId }</td>
            <td id="nowComment">${mcmnt.menuCmntCon }</td>
            <td id ="nowDate">${mcmnt.menuCmntDate }</td>
            <c:if test="${authInfo.userId == mcmnt.memId }">
               <td>
                  <a href="javascript:mcmntModify('content${cnt.count}','${mcmnt.menuCmntNo }','${dto.menuNo}');">수정</a>
                  /<a href="mcmntDelete?menuCmntNo=${mcmnt.menuCmntNo }&menuNo=${dto.menuNo }">삭제</a></td>
            </c:if>
         </tr>
      </table>
      </div>
   </c:forEach>
</body>

<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.js"></script>
<script type="text/javascript">
function mcmntModify(ele,b,c){
   $.ajax({ //비동기식 - jquery.form.js가 있어야만 사용가능
      type : "post",
      url : "mcmntModify",// 여기로부터 받아온 값
      dataType : "html",//보여주려는 결과 data-type
      data : {"menuCmntNo":b,"menuNo":c},
      //익명함수(이름이 없는 함수) : 직접 실행시킬수 없음 - 실행시키기 위한 객체가 필요
      success : function(result){//result : data 넘겨줘서 나온 동기식 결과 페이지
         $("#"+ele).html(result);
      },
      error : function(){ 
         alert("에러가 발생했습니다.");
         return;
      }
   });
}
</script>


<script type="text/javascript">
   
      function bmkAddConfirm(){
      if(confirm("이동하시겠습니까?")){
         document.frm.submit();
      }else{
         return false;
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