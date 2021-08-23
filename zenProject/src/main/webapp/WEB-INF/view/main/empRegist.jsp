<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 등록</title>
<link rel="stylesheet" href="../css/empRegist.css">
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
      <table>
      <colgroup>
      <col width="30%"/>
      <col width="auto"/>
    </colgroup>
         <tr>
            <th><span>사원번호</span></th>
            <td><form:input path="empNo" value="${empNo }" /> <form:errors
                  path="empNo" /></td>
         </tr>
         <tr>
            <th><span>사원아이디</span></th>
            <td><form:input path="empId" placeholder="ID를 입력하세요."/> <form:errors path="empId" /></td>
         </tr>
         <tr>
            <th><span>비밀번호</span></th>
            <td><form:password path="empPw" placeholder="비밀번호를 입력하세요."/> <form:errors path="empPw" />
            </td>
         </tr>
         <tr>
            <th><span>비밀번호 확인</span></th>
            <td><form:password path="empPwCon" placeholder="비밀번호를 확인하세요."/> <form:errors
                  path="empPwCon" /></td>
         </tr>
         <tr>
            <th><span>이름</span></th>
            <td><form:input path="empName" /> <form:errors path="empName" />
            </td>
         </tr>
         <tr>
            <th><span>입사일</span></th>
            <td><input type="date" name="empHireDate" /> <form:errors
                  path="empHireDate" /></td>
         </tr>
         <tr>
            <th><span>직무</span></th>
            <td><form:input path="empJob" /> <form:errors path="empJob" /></td>
         </tr>
         <tr>
            <th><span>연락처</span></th>
            <td><form:input path="empPhone" placeholder="010-1234-1234" />
               <form:errors path="empPhone" /></td>
         </tr>
         <tr>
            <th><span>사무실번호</span></th>
            <td><form:input path="empOfficeNum" placeholder="02-1234-1234" />
               <form:errors path="empOfficeNum" /></td>
         </tr>
         <tr>
            <th><span>이메일</span></th>
            <td><form:input path="empEmail" /> <form:errors
                  path="empEmail" /></td>
         </tr>
         <tr>
            <th><span>우편번호</span></th>
            <td><form:input path="empPost" id="sample4_postcode"
                  readonly="readonly" /> <form:errors path="empPost" /></td>
         </tr>
         <tr>
            <th><span>주소</span></th>
            <td><form:input path="empAddr" id="sample4_roadAddress"
                  size="30" readonly="readonly" /> <a
               href="javascript:sample4_execDaumPostcode();">주소 검색</a> <form:errors
                  path="empAddr" /></td>
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