<%--
  Created by IntelliJ IDEA.
  User: bhd44
  Date: 2020-07-23
  Time: 오후 1:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <!--부트스트랩 차트 그리기-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- 차트 링크 -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>


    <!--폰트어썸-->
    <script src="https://kit.fontawesome.com/bb29575d31.js"></script>


    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/reset.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/yoondoo.css"/>
    <script src="${pageContext.request.contextPath }/JS/yj.js"></script>


    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">


    <link rel="shortcut icon" type="image/x-icon"
          href="https://i.imgur.com/8AyMFrx.png">

    <title>채용공고</title>
</head>

<body class="bk_gray">
<div id="header" class="row">

    <div class="col-md-2"></div>
    <div id="small_logo" class="col-md-2"></div>

    <ul class="col-md-4" class="inline">
        <li>
            <a href="#"><i class="fas fa-bars"></i></a>
            <a href="#">
                지역별
            </a>
            <a href="#">
                BLIND_BOARD
            </a>
        </li>


    </ul>
    <ul class="col-md-4" class="inline">
        <li>
            <a href="#"><i class="fas"></i></a>
            <a href="#">
                로그인
            </a>
            <a href="#" id="header_sub_a1">
                이력서 관리

            </a>

            <a href="#">
                지원 관리
            </a>
            <a href="#">
                기업 서비스
            </a>
        </li>


    </ul>


</div>

<div class="main_box div_950">
    <div class="main_box_content row">
        <%--공고 타이틀 자리임--%>

            <h2 class="main_box_title inline col-md-12">(${view[0].name })</h2>
            <h1 class="main_box_title inline col-md-8">${view[0].title }</h1>

        <button class="gray_Btn inline col-md-1"> ☆</button>
        <button id="btnWrite" class="org_Btn inline col-md-3">즉시지원</button>
    </div>
    <div class="main_box_content">

    </div>
    <div class="main_box_content row">
        <h2 class="main_box_title inline col-md-12">지원자 통계</h2>
        <div class="col-md-6">
            <h2>지원자 수</h2>${totalApp }
        </div>
        <div class="col-md-6">
            <h2>성별별 현황</h2>
            <h2><i class="fas fa-male"></i> 남자 : ${gender1}</h2>
            <h2><i class="fas fa-female"></i> 여자 : ${gender2}</h2>
            <canvas id="myChart2"></canvas>

        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
                crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
                crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
                crossorigin="anonymous"></script> <!-- 차트 -->
        <script> data = {
            datasets: [{
                backgroundColor: ['rgb(172,217,248)', 'rgb(250,106,113)'],
                data: [${gender1}, ${gender2}]
            }], // 라벨의 이름이 툴팁처럼 마우스가 근처에 오면 나타남
            labels: ['남자', '여자']
        };
        // 도넛형 차트
        var ctx2 = document.getElementById("myChart2");
        var myDoughnutChart = new Chart(ctx2, {type: 'doughnut', data: data, options: {}});

        </script>


        <div class="col-md-6">
            <h2>연령별 현황</h2>
            <canvas id="myChart"></canvas>
        </div> <!-- 부트스트랩 -->
        <script>
            <c:forEach var="Color" items="${Color }">
            var color1 = '${Color.color1}';
            var color2 = '${Color.color2}';
            var color3 = '${Color.color3}';

            </c:forEach>
            var ctx = document.getElementById('myChart');
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ['20대', '30대', '40대', '50대', '60대 이상'],
                    datasets: [{
                        label: "",
                        data: [${age20}, ${age30}, ${age40}, ${age50}, ${age60}, ${age70}],
                        backgroundColor: [color1, color2, color3, color1, color2],
                        borderColor: [color1, color2, color3, color1, color2],
                        borderWidth: 0.5

                    }]
                },
                options: {scales: {yAxes: [{ticks: {beginAtZero: true}}]}}
            });


        </script>


        <div class="col-md-6">
            <h2>TOEIC</h2>
            <canvas id="myChart3"></canvas>
        </div> <!-- 부트스트랩 -->

        <script>
            <c:forEach var="Color" items="${Color }">
            var color1 = '${Color.color1}';
            var color2 = '${Color.color2}';
            var color3 = '${Color.color3}';

            </c:forEach>
            var ctx = document.getElementById('myChart3');
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ['600미만', '700미만', '800미만', '900미만', '900이상'],
                    datasets: [{
                        label: "toeic",
                        data: [${toeic500}, ${toeic600}, ${toeic700}, ${toeic800}, ${toeic900}],
                        backgroundColor: [color1, color2, color3, color1, color2],
                        borderColor: [color1, color2, color3, color1, color2],
                        borderWidth: 0.5

                    }]
                },
                options: {scales: {yAxes: [{ticks: {beginAtZero: true}}]}}
            });


        </script>

        <div class="col-md-6">
            <h2>경력별 현황</h2>
            <canvas id="myChart4"></canvas>
        </div> <!-- 부트스트랩 -->

        <script>
            <c:forEach var="Color" items="${Color }">
            var color1 = '${Color.color1}';
            var color2 = '${Color.color2}';
            var color3 = '${Color.color3}';

            </c:forEach>
            var ctx = document.getElementById('myChart4');
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ['신입', '1년미만', '1~3년', '3~5년', '5년 이상'],
                    datasets: [{
                        label: "toeic",
                        data: [${career0}, ${career1}, ${career3}, ${career5}, ${career10}],
                        backgroundColor: [color1, color2, color3, color1, color2],
                        borderColor: [color1, color2, color3, color1, color2],
                        borderWidth: 0.5

                    }]
                },
                options: {scales: {yAxes: [{ticks: {beginAtZero: true}}]}}
            });


        </script>

    </div>


</div>

<div id="dlg_write" class="modal">
    <div class="modal-content">
        <span class="close" title="Close Modal">&times;</span>
        <h1 class="hire_title">공고 제목 뽑아오기</h1><%--TODO--%>
        <form action="/app/appWriteOk" method="post">
            <input type="hidden" value="1" name="u_uid">
            <input type="hidden" value="1" name="h_uid">

            <h2>제출 서류</h2>
            <c:forEach var="RList" items="${Rlist }">

                <table class="rlist_table">
                    <tr>
                        <th>
                            <input type="radio" name="r_uid" value="${RList.r_uid}">&nbsp;&nbsp;&nbsp;${RList.r_title }
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <h3 class="blue_a inline"> 이력서 </h3>${RList.r_date } 수정
                        </td>
                    </tr>
                </table>
            </c:forEach>

            <input type="submit" value="지원하기" class="org_Btn fullbutton">

        </form>
    </div>
</div>


<div id="main_footer">

    <div id="main_footer_nav">
        <nav>
            <ul>

                <li>회사소개</li>
                <li>보도기사</li>
                <li>찾아오시는길</li>
                <li>회원약간</li>
                <li>개인정보처리방침</li>
                <li>이메일무단수집거부</li>
                <li>채용정보API</li>
                <li>제휴문의</li>
                <li>고객센터</li>

            </ul>

        </nav>
    </div>
    <div class="row">
        <div class="col-md-3 ">
        </div>
        <div id="main_footer_img" class="col-md-1 ">
        </div>
        <div id="main_footer_content" class="div_1260 col-md-8">
            <a>사람인 고객센터 02-2025-4733 (평일 09:00~19:00, 주말·공휴일 휴무)</a><br>
            <br>
            <a>이메일 : help@saramin.co.kr, Fax : 02-6937-0039(대표), 02-6937-0035(세금계산서) 이메일문의 사람인 네이버 블로그 사람인 페이스북
                페이지</a><br>
            <br>
            <a>(주)사람인HR, 우 : 08378, 서울특별시 구로구 디지털로34길 43, 201호(구로동), 대표 : 김용환</a><br>
            <br>
            <a>사업자등록 : 113-86-00917, 직업정보제공사업 : 서울 관악 제 2005-6호, 통신판매업 : 제 2339호, Copyright (c) (주)사람인HR. All rights
                reserved.</a><br>
        </div>
    </div>
</div>


</body>
</html>
