<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메뉴 리스트</title>
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }

        body {
            background-color: #f7f7f7;
        }

        a {
            text-decoration: none;
        }


        /* menu-chk-list */
        .chk-list {
            padding-bottom: 20px;
        }
		.chkbox-btn{
			display: flex;
			flex-direction: column;
			align-items: center;
		}
        .menu-chk-list {
            max-width: 1200px;
            margin: auto;
            text-align: left;
            background-color: #72CC82;
            border-radius: 7px;
            color: #EFFFE9;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .menu-chk-list th {
            background-color: #3CB371;
            text-align: center;
            min-width: 120px;
            border-radius: 10px;
            color: #EFFFE9;
        }

        .menu-chk-list td {
            padding: 5px;
            min-width: 120px;
            width: 120px;
        }

        .menu-chk-list hr {
            border: 1px solid #3CB371;
        }

        .menu-chk-list label:hover {
            color: #e5f50b;
        }

        h1 {
            margin-top: 30px;
            margin-left: 50px;
        }

        h1 a:link,
        h1 a:visited {
            color: #66afe9;
        }

        #btn {
            width: 100px;
            height: 25px;
            background-color: #754F44;
            border: 0px;
            border-radius: 5px;
            color: #EFFFE9;
            font-size: 15px;
        }

        /* menu-table */
        .container {
            background-color: white;
            max-width: 1444px;
            width: 1444px;
            margin: auto;
            margin: auto;
        }

        .list-box {
            max-width: 1200px;
            width: 1200px;
            margin: auto;
            margin: auto;
        }

        .menu-table {
            display: inline-block;
            max-width: 250px;
            height: 400px;
            width: 250px;
            margin: 20px;
        }

        #img-tr {
            width: 250px;
            height: 250px;
        }

        #img-tr img {
            border-radius: 5px;
        }

        #date-td,
        #viewCnt-td {
            text-align: right;
        }

        h2 {
            margin-left: 50px;
            margin-bottom: 20px;
            color: #123456;
        }
        #include{
       	width: 200px;
       	max-width: 1000px;
        margin: auto;}
    </style>
</head>

<body>
    <div class="chk-list container">
        <h1>
            <a href="../index.jsp">EZEN FOOD</a>
        </h1>
        <div class="chkbox-btn">
        <form action="">
            <table class="menu-chk-list">
                <tr>
                    <th rowspan="3">main item
                     
                    </th>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="돼지고기"><label for="menuMainItem">돼지고기</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="소고기"><label for="menuMainItem">소고기</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="닭고기"><label for="menuMainItem">닭고기</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="오리고기"><label for="menuMainItem">오리고기</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="달걀"><label for="menuMainItem">달걀</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="감자"><label for="menuMainItem">감자</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="베이컨"><label for="menuMainItem">베이컨</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="버섯"><label for="menuMainItem">버섯</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="양파"><label for="menuMainItem">양파</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="마늘"><label for="menuMainItem">마늘</label></td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="치즈"><label for="menuMainItem" >치즈</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="빵"><label for="menuMainItem">빵</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="파스타면"><label for="menuMainItem">파스타면</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="중화면"><label for="menuMainItem">중화면</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="새우"><label for="menuMainItem">새우</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="두부"><label for="menuMainItem">두부</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="연어"><label for="menuMainItem">연어</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="오징어"><label for="menuMainItem">오징어</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="대파"><label for="menuMainItem">대파</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="파프리카"><label for="menuMainItem">파프리카</label></td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="밥"><label for="menuMainItem">밥</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="메밀소바"><label for="menuMainItem">메밀소바</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="우동사리"><label for="menuMainItem">우동사리</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="양배추"><label for="menuMainItem">양배추</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="오이"><label for="menuMainItem">오이</label></td>
                    <td><input type="checkbox" name="menuMainItem" id="menuMainItem" value="가지"><label for="menuMainItem">가지</label></td>   
                </tr>
                <tr>
                    <td colspan="11">
                        <hr>
                    </td>
                </tr>
                <tr>
                    <th rowspan="3">sub item
                    </th>
                    <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="식용유"><label for="menuSubItem">식용유</label></td>
                    <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="소금"><label for="menuSubItem">소금</label></td>
                    <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="와인"><label for="menuSubItem">와인</label></td>
                    <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="우유"><label for="menuSubItem">우유</label></td>
                    <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="마요네즈"><label for="menuSubItem">마요네즈</label></td>
                    <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="후추"><label for="menuSubItem">후추</label></td>
                    <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="굴소스"><label for="menuSubItem">굴소스</label></td>
                    <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="간장"><label for="menuSubItem">간장</label></td>
                    <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="설탕"><label for="menuSubItem">설탕</label></td>
                    <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="고추가루"><label for="menuSubItem">고추가루</label></td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="식초"><label for="menuSubItem">식초</label></td>
                    <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="케첩"><label for="menuSubItem">케첩</label></td>
                    <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="참기름"><label for="menuSubItem">참기름</label></td>
                    <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="전분"><label for="menuSubItem">전분</label></td>
                    <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="맛술"><label for="menuSubItem">맛술</label></td>
                    <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="혼다시"><label for="menuSubItem">혼다시</label></td>
                    <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="올리고당"><label for="menuSubItem">올리고당</label></td>
                    <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="와사비"><label for="menuSubItem">와사비</label></td>
                    <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="돈까스소스"><label for="menuSubItem">돈까스소스</label></td>
                    <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="된장"><label for="menuSubItem">된장</label></td>          
                </tr>
                <tr>
                <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="다시마"><label for="menuSubItem">다시마</label></td> 
                <td><input type="checkbox" name="menuSubItem" id="menuSubItem" value="육수"><label for="menuSubItem">육수</label></td>                   
                 <td></td>
                </tr>
            </table>
            <div class ="container">
            <input type="submit" value="검색" id="btn">
            </div>
        </form>
        </div>
    </div>

    <div class="container">
        <h2>메뉴 리스트</h2>
        <c:if test="${authInfo.grade >1}">
            <a class="btn btn-default" href="menuForm">메뉴 등록</a>
        </c:if>
        <div class="list-box">
            <c:forEach items="${lists }" var="dto" varStatus="cnt">
                <table class="menu-table">
                    <tr id="img-tr">
                        <td colspan="2">
                            <c:if test="${empty dto.menuImg }">
                                등록된 이미지가 없습니다.
                            </c:if>
                            <c:if test="${!empty dto.menuImg }">
                                <a href="menuDetail?menuNo=${dto.menuNo }">
                                    <img src='../menu/upload/${dto.menuImg.split(",")[0] }' alt="이미지 불러오기 실패"
                                        width="250px" height="250px">
                                </a>
                            </c:if>
                        </td>
                    </tr>
                    <tr>
                        <td id="menuNo-td">${cnt.count + (page - 1) * 12 }번메뉴</td>
                        <td id="viewCnt-td">
                            조회수 ${dto.menuCnt }
                        </td>
                    </tr>
                    <tr id="menuName-tr">
                        <td colspan="2">
                            <a href="menuDetail?menuNo=${dto.menuNo }">
                                ${dto.menuName }
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td id="writer-td">${dto.empId }님</td>
                        <td id="date-td">
                            <fmt:formatDate value="${dto.menuDate }" type="date" pattern="yy-MM-dd" />
                        </td>
                    </tr>
                </table>
            </c:forEach>
        </div>
	    <div id="include"><%@ include file="../include/includePage.jsp" %></div>
    </div>
</body>

</html>