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
<body><div class="row">
    <div class="col-xs-2 col-md-2"></div>
    <div class="col-xs-8 col-md-8">
   <h1 class="h3 mb-3 fw-normal"><a  href="../index.jsp">EZEN FOOD</a></h1>
   <h1 class="h3 mb-3 fw-normal">메뉴 게시판</h1> 
    <div class="table table-responsive">
        <table class="table">
        <tr>
            <th class="success">메뉴번호</th>
            <td> ${dto.menuNo }</td>
            <th class="success">조회수</th>
            <td>${dto.menuCnt }</td>
        </tr>
       
        <tr>
            <th class="success">작성자</th>
            <td>${dto.empNo }</td>
            <th class="success">작성일</th>
            <td> <fmt:formatDate value="${dto.menuDate }" type="date" pattern="yy-MM-dd"/></td>
        </tr>
         
         <tr>
            <th class="success">주재료</th>
            <td colspan="3">${dto.menuMainItem }</td>
        </tr>
        <tr>
            <th class="success">부재료</th>
            <td colspan="3">${dto.menuSubItem }</td>
        </tr>
        <tr>
            <th class="success">메뉴이름</th>
            <td colspan="3">${dto.menuName }</td>
        </tr>
         
        <tr>
            <th class="success">조리법</th>
            <td><textarea class="form-control" rows="10" cols="100" name="menuRecipe" id="content" readonly="readonly">${dto.menuRecipe }</textarea></td>
        </tr>
        <tr>
        <th class="success">이미지</th>
            <td><img src ="../menu/upload/${dto.menuImg.split(',')[0]}" width="500"/></td>
        </tr>

        </table>

   </div>
    </div>
    </div>
   <div align="center">
   <a class="btn btn-default" href="menuList">리스트로 돌아가기</a><br>
   <c:if test="${authInfo.grade == dto.empNo }">
      <a class="btn btn-default" href="menuEdit?menuNo=${dto.menuNo }">메뉴 수정</a>
      <a class="btn btn-default" href="menuDel?menuNo=${dto.menuNo }">메뉴 삭제</a>
   </c:if>
   
   
   <c:if test="${authInfo.grade == 1 }">
   
   <button type="button" onclick='bmkAddConfirm();'>즐겨찾기 등록</button>
   
   <form action="mcmntWrite" method="post" >
      <input type="hidden" name="memId"  value="${authInfo.userId}"/>
      <input type ="hidden" name = "menuNo" value = "${dto.menuNo }"/>
      <table>
         <tr>
            <td>${authInfo.userId}</td>
            <td><textarea rows="2" cols="30" name="menuCmntCon"></textarea></td>
            <td><input type = "submit" value="등록" class="button4"/></td>
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
   </div>

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
			
			$.ajax({ //비동기식 - jquery.form.js가 있어야만 사용가능
				type : "post",
				url : "../bookmark/bookmarkAdd",// 여기로부터 받아온 값
				dataType : "html",//보여주려는 결과 data-type
				data : {"memId":${authInfo.userId},"menuNo":${dto.menuNo }},
				//익명함수(이름이 없는 함수) : 직접 실행시킬수 없음 - 실행시키기 위한 객체가 필요
				success : function(result){//result : data 넘겨줘서 나온 동기식 결과 페이지
					if(confirm("즐겨 찾기로 이동하시겠습니까?")){
						location.href='../bookmark/bookmarkList?memId='+${authInfo.userId}
					}else{
						return false;
					}
				},
				error : function(){
					alert("에러가 발생했습니다.");
					return;
				}
			});
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