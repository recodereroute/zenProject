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
            margin: 0;
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

        .btn {
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
        margin: auto;
        }
        .btnContainer{
        margin: auto;
        text-align: center;
        }
    </style>
</head>

<body>
    <div class="chk-list container">
        <h1>
            <a href="../index.jsp">EZEN FOOD</a>
            <br>
             <h2>메뉴 리스트</h2>
        </h1>
        <div class="chkbox-btn">
        <form action="">
            <table class="menu-chk-list">
    <tr>
        <th rowspan="3">main item</th>
        <td><input type="checkbox" name="menuItems" id="menuMainItem1" value="돼지고기"><label
                for="menuMainItem1">돼지고기</label></td>
        <td><input type="checkbox" name="menuItems" id="meat2" value="소고기"><label for="meat2">소고기</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem3" value="닭고기"><label
                for="menuMainItem3">닭고기</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem10" value="오리고기"><label
                for="menuMainItem10">오리고기</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem4" value="달걀"><label
                for="menuMainItem4">달걀</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem5" value="감자"><label
                for="menuMainItem5">감자</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem6" value="베이컨"><label
                for="menuMainItem6">베이컨</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem7" value="버섯"><label
                for="menuMainItem7">버섯</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem8" value="양파"><label
                for="menuMainItem8">양파</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem9" value="마늘"><label
                for="menuMainItem9">마늘</label></td>
    </tr>
    <tr>
        <td><input type="checkbox" name="menuItems" id="menuMainItem11" value="치즈"><label
                for="menuMainItem11">치즈</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem12" value="빵"><label
                for="menuMainItem12">빵</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem13" value="파스타면"><label
                for="menuMainItem13">파스타면</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem14" value="중화면"><label
                for="menuMainItem14">중화면</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem15" value="새우"><label
                for="menuMainItem15">새우</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem16" value="두부"><label
                for="menuMainItem16">두부</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem17" value="연어"><label
                for="menuMainItem17">연어</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem18" value="오징어"><label
                for="menuMainItem18">오징어</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem19" value="대파"><label
                for="menuMainItem19">대파</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem20" value="파프리카"><label
                for="menuMainItem20">파프리카</label></td>
    </tr>
    <tr>
        <td><input type="checkbox" name="menuItems" id="menuMainItem21" value="밥"><label
                for="menuMainItem21">밥</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem22" value="메밀소바"><label
                for="menuMainItem22">메밀소바</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem23" value="우동사리"><label
                for="menuMainItem23">우동사리</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem24" value="양배추"><label
                for="menuMainItem24">양배추</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem25" value="오이"><label
                for="menuMainItem25">오이</label></td>
        <td><input type="checkbox" name="menuItems" id="menuMainItem26" value="가지"><label
                for="menuMainItem26">가지</label></td>
    </tr>

    <tr>
        <td colspan="11">
            <hr>
        </td>
    </tr>
    <tr>
        <th rowspan="3">sub item</th>
        <td><input type="checkbox" name="menuItems" id="menuSubItem1" value="식용유"><label
                for="menuSubItem1">식용유</label></td>
        <td><input type="checkbox" name="menuItems" id="menuSubItem2" value="소금"><label for="menuSubItem2">소금</label>
        </td>
        <td><input type="checkbox" name="menuItems" id="menuSubItem3" value="와인"><label for="menuSubItem3">와인</label>
        </td>
        <td><input type="checkbox" name="menuItems" id="menuSubItem4" value="우유"><label for="menuSubItem4">우유</label>
        </td>
        <td><input type="checkbox" name="menuItems" id="menuSubItem5" value="마요네즈"><label
                for="menuSubItem5">마요네즈</label></td>
        <td><input type="checkbox" name="menuItems" id="menuSubItem6" value="후추"><label for="menuSubItem6">후추</label>
        </td>
        <td><input type="checkbox" name="menuItems" id="menuSubItem7" value="굴소스"><label
                for="menuSubItem7">굴소스</label></td>
        <td><input type="checkbox" name="menuItems" id="menuSubItem8" value="간장"><label for="menuSubItem8">간장</label>
        </td>
        <td><input type="checkbox" name="menuItems" id="menuSubItem9" value="설탕"><label for="menuSubItem9">설탕</label>
        </td>
        <td><input type="checkbox" name="menuItems" id="menuSubItem10" value="고추가루"><label
                for="menuSubItem10">고추가루</label></td>
    </tr>
    <tr>
        <td><input type="checkbox" name="menuItems" id="menuSubItem11" value="식초"><label
                for="menuSubItem11">식초</label></td>
        <td><input type="checkbox" name="menuItems" id="menuSubItem12" value="케첩"><label
                for="menuSubItem12">케첩</label></td>
        <td><input type="checkbox" name="menuItems" id="menuSubItem13" value="참기름"><label
                for="menuSubItem13">참기름</label></td>
        <td><input type="checkbox" name="menuItems" id="menuSubItem14" value="전분"><label
                for="menuSubItem14">전분</label></td>
        <td><input type="checkbox" name="menuItems" id="menuSubItem15" value="맛술"><label
                for="menuSubItem15">맛술</label></td>
        <td><input type="checkbox" name="menuItems" id="menuSubItem16" value="혼다시"><label
                for="menuSubItem16">혼다시</label></td>
        <td><input type="checkbox" name="menuItems" id="menuSubItem17" value="올리고당"><label
                for="menuSubItem17">올리고당</label></td>
        <td><input type="checkbox" name="menuItems" id="menuSubItem18" value="와사비"><label
                for="menuSubItem18">와사비</label></td>
        <td><input type="checkbox" name="menuItems" id="menuSubItem19" value="돈까스소스"><label
                for="menuSubItem19">돈까스소스</label></td>
        <td><input type="checkbox" name="menuItems" id="menuSubItem20" value="된장"><label
                for="menuSubItem20">된장</label></td>
    </tr>
    <tr>
        <td><input type="checkbox" name="menuItems" id="menuSubItem21" value="다시마"><label
                for="menuSubItem21">다시마</label></td>
        <td><input type="checkbox" name="menuItems" id="menuSubItem22" value="육수"><label
                for="menuSubItem22">육수</label></td>
        <td></td>
    </tr>
</table>
            <div class="btnContainer">
            <input type="submit" value="검색" class="btn">
            <c:if test="${authInfo.grade >1}">
            <a href="menuForm"><input type="button" value="메뉴등록" class="btn"></a>
        </c:if>
            </div>
        </form>
        </div>
    </div>

    <div class="container">
       
        
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