<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 등록</title>
<style>
    @charset "UTF-8";
* {margin:0;padding:0;}
html {height:100%;}
body {height:100%; font-family: 'Noto Sans KR';}
table, tr, td, th, div, p, em, ol, ul, li, dl, dt, dd, a, address, img, h1, h2, h3, h4, h5, h6 {font-size:11pt; color:#666;text-decoration: none;}
img {border:0; }
h1 { float:left; padding:0 0 0 0px;}
h2 {padding:0 0 0 0px;}
ul, li { list-style:none;}
ul{list-style:none; }
.red_txt{color:#ee7272;}
.blind {display:block;overflow:hidden;position:absolute;left:0;top:-5000px}
.wrap{max-width:960px; margin: auto;}
.wrap.wd668{max-width:628px;}
.wrap.wd668.line{border:1px solid #ececec;padding:30px 20px;}
.container{width:100%; margin: auto;}
.sub_tit_txt{margin:80px 0 20px 20px; color: #2f2f2f; font-size: 25px;}
.wrap.wd668.line .sub_tit_txt{margin:0px 0 20px 20px; }
.con_term .term_txt{border:1px solid #ececec;padding:30px; height:210px; overflow-y: auto; margin:0 0 15px;}
.con_term .term_txt ul li,.con_term .term_txt p ,.con_term .term_txt div{color:#818181;font-size:12px; line-height:17px;margin: 0 0 15px;}
.left_margin{margin:0 0 0 20px;}
.con_term .term_txt div.txt_bold{font-weight: bold; margin:0 0 25px;}
.btn_wrap{text-align:center; margin:40px 0 30px;}
.btn_wrap a{color: #fff; background-color: #4380ce; font-weight: bold; padding: 10px;  height: 30px; line-height: 30px; width: 168px; display: block; text-align: center; margin: 0 auto;}
.btn_wrap a.wide{width:587px;margin: 0 0 0 20px;}
.find_txt ul li{color:#9a9a9a;font-size:13px;text-align:center; line-height:17px; margin:0 0 20px;}
.form_txtInput .checkbox_wrap {position: relative;padding: 5px;text-align: right;}
.form_txtInput .checkbox_wrap input[type="checkbox"] {position: absolute;width: 1px;height: 1px;padding: 0;margin: -1px;overflow: hidden;clip: rect(0,0,0,0);border: 0;}
.form_txtInput .checkbox_wrap input[type="checkbox"] + label {display: inline-block; line-height:14px;position: relative;padding-left: 20px;font-size: 13px;color: #818181;cursor: pointer;-webkit-user-select: none;-moz-user-select: none;-ms-user-select: none;}
.form_txtInput .checkbox_wrap input[type="checkbox"] + label:before {content: '';position: absolute;top: 0px;left: 0;width: 12px;height: 12px;text-align: center;background: #fff;border: 1px solid #c2c2c2;}
.form_txtInput .checkbox_wrap input[type="checkbox"] + label:active:before, .checkbox_wrap input[type="checkbox"]:checked + label:active:before {box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px 1px 3px rgba(0,0,0,0.1);}
.form_txtInput .checkbox_wrap input[type="checkbox"]:checked + label:before {background: #fff;border-color: #ddd;}
.form_txtInput .checkbox_wrap input[type="checkbox"]:checked + label:after {content: '✓';color: #0094ff;position: absolute;top:0px;left:2px;width: 7px;height: 7px;font-size: 13px;font-weight: bold;}
.exTxt{font-size:14px;color:#9a9a9a;display: block;margin:0 0 45px 20px;}
.join_form{width:100%;max-width:668px;}
.join_form table {border-spacing: 0;margin:0;padding:0; border:0;width:100%;}
.join_form table input{ border:1px solid #ececec;font-size:14px;color:#4c4c4c;height:20px;}
.join_form table input.email{width:162px; display: inline-block;}
.join_form table input.email2{width:192px;}
.join_form.idpwFind table input{width:519px;}
.join_form.idpwFind table input.email{width:223px;}
.join_form.idpwFind table input.email2{width:263px}
.join_form.idpwFind table input.phone{width:182px;margin: 0 12px 0 11px;}
.join_form.idpwFind table input.phone2{width:182px;}
.join_form table input.send_number{width:383px;}
.join_form table th span{color:#404040;font-size:14px; display:inline-block; position:relative;padding:0 10px 0 0; text-indent:20px;}
.join_form table th{text-align:left;}
.join_form table td{padding:6px 0;position: relative;}
.join_form table th span:after{content:'*';font-size:13px;color:#f95427;position:absolute;top:0;right:0px;}
.join_form.idpwFind table th span:after{content:none;}
.join_form table td a.btn_confirm{display: inline-block; float:left;width:115px; height:48px;margin:5px 0 0 0px;border:1px solid #cfcfcf;background:#dedede;color:#626262;text-align:center; vertical-align: top;line-height: 50px;}
.join_form.idpwFind table td select { -webkit-appearance: none; -moz-appearance: none;  appearance: none; background: url(https://secsales.interparkb2b.co.kr/data/G94/main/sele_arr.gif) no-repeat 95% 50%;text-indent:20px; width:124px; height:50px;border:1px solid #ececec; font-size:14px; color:#ccc; float:left;}
.join_form.idpwFind table td select::-ms-expand { display: none;}
.join_form.idpwFind table td  tr.phone td select {text-align: center; text-indent: 10px;}
.join_form.idpwFind table tr.email input:after,.mar10:after,  .join_form.idpwFind table td select:after,.join_form table td a.btn_confirm:after{content:'';display: block;clear:both;}
.agree_wrap{margin:36px 0 0;}
.agree_wrap .checkbox_wrap{text-align:left;}
::placeholder {color: #c4c4c4;opacity: 1;}
:-ms-input-placeholder {color: #c4c4c4!important;}
::-ms-input-placeholder {color: #c4c4c4!important;}
.mar27{margin:27px 0 0;}
.mar10{margin:14px 5px 0 10px; display: inline-block;padding:0; float:left;}
.exform_txt{padding:12px 0 19px 0; text-align:right;color:#9a9a9a;font-size:13px;border-bottom:1px solid #ececec;}
.exform_txt span{display: inline-block;position:relative;  padding-left:10px}
.exform_txt span:after{content:'*';position:absolute;left:0;top:0; color:#f95427; font-size: 13px; font-weight: bold;}
.explan_txt {margin:3px 0 0 22px;}
.explan_txt li{color:#b2b2b2;font-size:13px; line-height:17px;}
.popWrap{border:1px solid #ececec;padding:30px; max-width:400px;width:100%;margin:30px auto 0;display: none;position: absolute;top:0;left:50%;transform: translateX(-50%);background: #fff;z-index:5;}
.popWrap.is-open{display: block;}
.popWrap .pop_txt_con .pop_exTxt{font-size:14px;color:#9a9a9a;line-height:20px;}
.popWrap .pop_txt_con .pop_exTxt span{color:#254ee9}
.popWrap .pop_btnWrap{margin:30px 0 0;}
.popWrap .pop_btnWrap a{color: #fff; background-color: #4380ce; font-weight: bold; padding: 10px;  height: 22px; line-height: 22px; width: 103px; display: block; text-align: center;}
.join_form table input.send_number::placeholder{text-align:right;}
.join_form table input.send_number:-ms-input-placeholder {text-align:right;}
.join_form table input.send_number::-ms-input-placeholder {text-align:right;}
.overlayer {  position: fixed;display: none;width: 100%;  height: 100%;  top: 0;  left: 0;  right: 0;  bottom: 0;  background-color: rgba(0,0,0,0.5);  z-index: 2;  cursor: pointer;}
.overlayer.is-open{  display: block;}
/* @media ( max-width: 1023px ) {
  .wrap{margin: 30px auto;}
  .wrap,.wrap.wd668.line{max-width:80vw;}
  .wrap.wd668{width:90vw;}
  .join_form{max-width:90vw;}
  .join_form table th span{text-indent: 0;font-size:13px;}
  .join_form table{}
  
  .join_form table input.email{width:30%; display: inline-block;}
  .join_form table input.email2{width:60%;}
  .join_form.idpwFind table input{width:100%;}
  .join_form.idpwFind table tr.email input{float:left;}
  .mar10{margin:5px 2% 0 2%; float:left;}
  .join_form.idpwFind table input.email{width:36%;}
  .join_form.idpwFind table input.email2{width:53%}
  .join_form.idpwFind table input.phone{width:30%;margin:0 4% 0 4%;}
  .join_form.idpwFind table input.phone2{width:31%;}
  .join_form table input.send_number{width: 53%; }
  .exTxt{margin:0 0 25px 0px}
  .wrap.wd668.line .sub_tit_txt,.wrap .sub_tit_txt{margin:0 0 10px 0;}
  .btn_wrap a,.btn_wrap a.wide{width:auto;margin:0;}
  .btn_wrap{overflow: hidden;}
  .join_form.idpwFind table td select{width:30%;height:37px; float:left;}
  .join_form.idpwFind table tr.email input:after,.mar10:after,  .join_form.idpwFind table td select:after{content:'';display: block;clear:both;}
  .popWrap{right: auto; max-width: 80vw; margin: 30px auto 0; left: 50%; transform: translateX(-50%);}
  .join_form table td a.btn_confirm{width: 100px; height: 35px;line-height: 35px; font-size: 12px;margin:5px 0 0 ;}
  .join_form table input.send_number + a{margin:0 0 0 5px;}
} */




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
}
</style>
<script
   src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
   //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
   function sample4_execDaumPostcode() {
      new daum.Postcode(
            {
               oncomplete : function(data) {
                  // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                  // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                  // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                  var roadAddr = data.roadAddress; // 도로명 주소 변수
                  var extraRoadAddr = ''; // 참고 항목 변수

                  // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                  // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                  if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                     extraRoadAddr += data.bname;
                  }
                  // 건물명이 있고, 공동주택일 경우 추가한다.
                  if (data.buildingName !== '' && data.apartment === 'Y') {
                     extraRoadAddr += (extraRoadAddr !== '' ? ', '
                           + data.buildingName : data.buildingName);
                  }
                  // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                  if (extraRoadAddr !== '') {
                     extraRoadAddr = ' (' + extraRoadAddr + ')';
                  }

                  // 우편번호와 주소 정보를 해당 필드에 넣는다.
                  document.getElementById('sample4_postcode').value = data.zonecode;
                  document.getElementById("sample4_roadAddress").value = roadAddr;

                  // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                  if (roadAddr !== '') {
                     document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                  } else {
                     document.getElementById("sample4_extraAddress").value = '';
                  }

                  var guideTextBox = document.getElementById("guide");
                  // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                  if (data.autoRoadAddress) {
                     var expRoadAddr = data.autoRoadAddress
                           + extraRoadAddr;
                     guideTextBox.innerHTML = '(예상 도로명 주소 : '
                           + expRoadAddr + ')';
                     guideTextBox.style.display = 'block';

                  } else {
                     guideTextBox.innerHTML = '';
                     guideTextBox.style.display = 'none';
                  }
               }
            }).open();
   }
</script>
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
<div class="wrap wd668">
   <div class="container">
      <div class="form_txtInput">
         <h2 class="sub_tit_txt">   
          <a href="../index.jsp">EZEN FOOD</a>
         </h2>
         <div class="join_form">
   <form:form action="empJoin" method="post" name="frm"
      modelAttribute="employeeCommand">
            <input name="empNo" type="hidden" value="${empNo }" />
             <form:errors path="empNo" />
      <table>
      <colgroup>
      <col width="30%"/>
      <col width="auto"/>
    </colgroup>
         <tr border=>
            
            <th><span>사원아이디</span></th>
            <td><form:input path="empId" placeholder="ID를 입력하세요."/> <form:errors path="empId" /></td>
            <td><hr></td>
         </tr>
         <tr>
            <th><span>비밀번호</span></th>
            <td><form:password path="empPw" placeholder="비밀번호를 입력하세요."/> <form:errors path="empPw" />
            </td>
            <td><hr></td>
         </tr>
         <tr>
            <th><span>비밀번호 확인</span></th>
            <td><form:password path="empPwCon" placeholder="비밀번호를 확인하세요."/> <form:errors
                  path="empPwCon" /></td>
                  <td><hr></td>
         </tr>
         <tr>
            <th><span>이름</span></th>
            <td><form:input path="empName" /> <form:errors path="empName" />
            </td>
            <td><hr></td>
         </tr>
         <tr>
            <th><span>입사일</span></th>
            <td><input type="date" name="empHireDate" /> <form:errors
                  path="empHireDate" /></td>
                  <td><hr></td>
         </tr>
         <tr>
            <th><span>직무</span></th>
            <td><form:input path="empJob" /> <form:errors path="empJob" /></td>
            <td><hr></td>
         </tr>
         <tr>
            <th><span>연락처</span></th>
            <td><form:input path="empPhone" placeholder="010-1234-1234" />
               <form:errors path="empPhone" /></td>
               <td><hr></td>
         </tr>
         <tr>
            <th><span>사무실번호</span></th>
            <td><form:input path="empOfficeNum" placeholder="02-1234-1234" />
               <form:errors path="empOfficeNum" /></td>
               <td><hr></td>
         </tr>
         <tr>
            <th><span>이메일</span></th>
            <td><form:input path="empEmail" /> <form:errors
                  path="empEmail" /></td>
                  <td><hr></td>
         </tr>
         <tr>
            <th><span>우편번호</span></th>
            <td><input type="text" name="empPost" id="sample4_postcode"
                  readonly="readonly" /> <form:errors path="empPost" /></td>
                  <td><hr></td>
         </tr>
         <tr>
            <th><span>주소</span></th>
            <td><input type="text" name="empAddr" id="sample4_roadAddress"
                  size="30" readonly="readonly" /> <a
               href="javascript:sample4_execDaumPostcode();">주소 검색</a> <form:errors
                  path="empAddr" /></td>
                  <td><hr></td>
         </tr>
         <tr>
            <th><span>상세주소</span></th>
            <td><form:input path="empDetailAddr" /> <form:errors
                  path="empDetailAddr" /></td>
         </tr>
            </table>
            <div class="exform_txt"><span>
      표시는 필수적으로 입력해주셔야 가입이 가능합니다.
      </span></div>
       <div class="agree_wrap">
            <div class="checkbox_wrap">
              <input type="checkbox" id="news_letter" name="news_letter" class="agree_chk">
              <label for="news_letter">[선택]뉴스레터 수신동의</label>
            </div>
            <div class="checkbox_wrap mar27">
              <input type="checkbox" id="marketing" name="marketing" class="agree_chk">
              <label for="marketing">[선택]마케팅 목적 개인정보 수집 및 이용에 대한 동의</label>
              <ul class="explan_txt">
                <li><span class="red_txt">항목 : 주소, 이름</span></li>
                <li>고객님께서는 위의 개인정보 및 회원정보 수정 등을 통해 추가로 수집하는 개인정보에<br/>
                  대해 동의하지 않거나 개인정보를 기재하지 않음으로써 거부하실 수 있습니다.<br/>
                  다만 이때 회원 대상 서비스가 제한될 수 있습니다.
                </li>
              </ul>
            </div>
          </div>
         <tr>
            <td colspan="2"><input type="submit" value="가입 완료" /></td>
         </tr>
   
   </form:form>
   </div>
   </div>
   </div>
   </div>
</body>
<footer>
   <div class="foo_div">
   <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0itTHT2c-YUs4XTgSWRfruN6wAMDNJKt_dv_F69pvU3e45EjusjxDPexHDd--vf6QWnQ&usqp=CAU"
                alt="불러오기 실패">
   </div>
   <div class="foo_div1">
      <span>EZEN FOOD</span>
      <p>팀원: 111, 222, 333, 444</p>
      <p>팀원 이메일: 111, 222, 333, 444</p>
      <img src="https://t1.daumcdn.net/cfile/tistory/2764774853DBB4C927">
         
   </div>
</footer>
</html>