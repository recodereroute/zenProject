<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link rel="stylesheet" href="../css/regist.css">
</head>
<body>
<div class="wrap wd668">
   <div class="container">
      <div class="form_txtInput">
         <h2 class="sub_tit_txt">   
         <a  href="../index.jsp">EZEN FOOD</a>
         </h2>
         <div class="join_form">

<form:form action="memRegist" method="post" name="frm" modelAttribute="memberCommand"> 
   <table>
   <colgroup>
      <col width="30%"/>
      <col width="auto"/>
    </colgroup>
    <tbody>
    <tr>
      <th><span>아이디</span></th>
         <td><form:input path="memId" placeholder="ID를 입력하세요." />
            <form:errors path="memId"/>
         </td></tr>
      <tr><th><span>비밀번호</span></th>
         <td><form:password path="memPw" placeholder="비밀번호를 입력하세요." />
         <form:errors path="memPw"/></td></tr>
      <tr><th><span>비밀번호 확인</span></th>
         <td><form:password path="memPwCon" placeholder="비밀번호를 확인하세요." />
         <form:errors path="memPwCon"/></td></tr>
      <tr><th><span>이름</span></th>
         <td><form:input path="memName" />
         <form:errors path="memName"/></td></tr>
      <tr><th><span>닉네임</span></th>
         <td><form:input path="memNick"/>
            <form:errors path="memNick"/></td></tr>
      <tr><th><span>휴대폰 번호</span></th>
         <td><form:input path="memPhone" />
         <form:errors path="memPhone"/></td></tr>
         
      <tr><th><span>성별</span></th>
         <td class="as"><form:radiobutton path="memSex"  value="M" checked="checked" />남자
            <form:radiobutton path="memSex" value="F" />여자
            <form:errors path="memSex"/></td></tr>
      <tr><th><span>이메일</span></th>
         <td><form:input path="memEmail" />
         <form:errors path="memEmail"/></td></tr>
         
      <tr><th><span>이메일 수신여부</span></th>
         <td class="as"><input type="radio" name="memEmailChk" value="Y" checked />예
         <input type="radio" name="memEmailChk" value="N" />아니오
         <form:errors path="memEmailChk"/></td></tr>
         </tbody>
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
                <li><span class="red_txt">항목 : 성별, 생년월일</span></li>
                <li>고객님께서는 위의 개인정보 및 회원정보 수정 등을 통해 추가로 수집하는 개인정보에<br/>
                  대해 동의하지 않거나 개인정보를 기재하지 않음으로써 거부하실 수 있습니다.<br/>
                  다만 이때 회원 대상 서비스가 제한될 수 있습니다.
                </li>
              </ul>
            </div>
          </div>
      <tr><td colspan="2" align="center">
            <input type="submit" value="가입 완료" />
      
         </td></tr>
         
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