<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>아이디 찾기</title>
  <link rel="stylesheet" href="../css/idSearch.css">
</head>

<body>
  <div class="wrap wd668">
    <div class="container">
      <div class="form_txtInput">
        <h2 class="sub_tit_txt">
          <a href="../index.jsp">만개의 레시피로 냉장고를 부탁해</a>
        </h2>
        <div class="join_form">

          <form action="idFindFinish" method="post">
            <table>
              <colgroup>
                <col width="30%" />
                <col width="auto" />
              </colgroup>
              <tr>
                <th><span>이름</span></th>
                <td> <input type="text" name="memName"></td>
              </tr>
              <tr>
                <th><span>이메일</span></th>
                <td> <input type="email" name="memEmail"></td>
              </tr>
              <tr>
                <th><span>핸드폰</span></th>
                <td> <input type="text" name="memPhone"></td>
              </tr>

            </table>
            <div class="exform_txt"><span>
                표시는 필수적으로 입력해주셔야 가입이 가능합니다.
              </span></div>
            <input type="submit" value="아이디 찾기" />

          </form>
        </div>
      </div>
    </div>
  </div>
</body>

</html>