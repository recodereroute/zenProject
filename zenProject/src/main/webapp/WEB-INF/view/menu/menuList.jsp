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

        a:link,a:visited {
        	color: black;
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
                    <th rowspan="2">육류
                        <p>해산물</p>
                    </th>
                    <td><input type="checkbox" name="" id="meat1"><label for="meat1">돼지고기</label></td>
                    <td><input type="checkbox" name="" id="meat2"><label for="meat2">닭고기</label></td>
                    <td><input type="checkbox" name="" id="meat3"><label for="meat3">소고기</label></td>
                    <td><input type="checkbox" name="" id="meat4"><label for="meat4">오리고기</label></td>
                    <td><input type="checkbox" name="" id="meat5"><label for="meat5">계란</label></td>
                    <td><input type="checkbox" name="" id="meat6"><label for="meat6">기타 육류</label></td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id="fish1"><label for="fish1">오징어</label></td>
                    <td><input type="checkbox" name="" id="fish2"><label for="fish2">낙지</label></td>
                    <td><input type="checkbox" name="" id="fish3"><label for="fish3">조개</label></td>
                    <td><input type="checkbox" name="" id="fish4"><label for="fish4">새우</label></td>
                    <td><input type="checkbox" name="" id="fish5"><label for="fish5">게</label></td>
                    <td><input type="checkbox" name="" id="fish6"><label for="fish6">생선</label></td>
                    <td><input type="checkbox" name="" id="fish7"><label for="fish7">기타 해산물</label></td>
                </tr>
                <tr>
                    <td colspan="11">
                        <hr>
                    </td>
                </tr>
                <tr>
                    <th rowspan="2">채소
                        <p>가공 식품</p>
                    </th>
                    <td><input type="checkbox" name="" id="vege1"><label for="vege1">콩나물</label></td>
                    <td><input type="checkbox" name="" id="vege2"><label for="vege2">고구마</label></td>
                    <td><input type="checkbox" name="" id="vege3"><label for="vege3">감자</label></td>
                    <td><input type="checkbox" name="" id="vege4"><label for="vege4">애호박</label></td>
                    <td><input type="checkbox" name="" id="vege5"><label for="vege5">호박</label></td>
                    <td><input type="checkbox" name="" id="vege6"><label for="vege6">양파</label></td>
                    <td><input type="checkbox" name="" id="vege7"><label for="vege7">고추</label></td>
                    <td><input type="checkbox" name="" id="vege8"><label for="vege8">깻잎</label></td>
                    <td><input type="checkbox" name="" id="vege9"><label for="vege9">버섯</label></td>
                    <td><input type="checkbox" name="" id="vege10"><label for="vege10">기타 채소류</label></td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id="food1"><label for="food1">김치</label></td>
                    <td><input type="checkbox" name="" id="food2"><label for="food2">어묵</label></td>
                    <td><input type="checkbox" name="" id="food3"><label for="food3">만두</label></td>
                    <td><input type="checkbox" name="" id="food4"><label for="food4">햄&소세지</label></td>
                    <td><input type="checkbox" name="" id="food5"><label for="food5">두부</label></td>
                    <td><input type="checkbox" name="" id="food6"><label for="food6">면</label></td>
                    <td><input type="checkbox" name="" id="food7"><label for="food7">빵</label></td>
                    <td><input type="checkbox" name="" id="food8"><label for="food8">젓갈류</label></td>
                    <td><input type="checkbox" name="" id="food9"><label for="food9">기타 가공식품</label></td>
                    <td><input type="submit" value="검색" id="btn"></td>
                </tr>
            </table>
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
                        <td id="writer-td">${dto.empNo }님</td>
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