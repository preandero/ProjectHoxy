<%--
  Created by IntelliJ IDEA.
  User: bhd44
  Date: 2020-07-23
  Time: 오후 4:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>

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
    <script src="http://code.jquery.com/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/JS/yj.js"></script>


    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">


    <link rel="shortcut icon" type="image/x-icon"
          href="https://i.imgur.com/8AyMFrx.png">

    <title>입사지원관리</title>
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
    <div class="main_box_content">
        <h1>입사 지원 관리</h1>
        <br>
        <br>
        <h3>유의사항</h3>
        <h3>최근 2년간의 지원내역에 대한 확인이 가능합니다. (단, 지원서류는 최근 2개월동안 확인 가능)</h3>
        <form action="/app/appcomList" method="post">
            <div class="select_option row">
                <div class="col-md-2">
                    <h3>검색조건</h3>
                    <h3>(최근 2년)</h3>
                </div>
                <div class="col-md-9">
                    <h3 class="inline" >공고 선택</h3>
                    <select name = "hid">
                        <option value="0">공고를 선택하세요</option>
                    <c:forEach var="HList" items="${Hlist }">
                        <option value="${HList.h_uid}">[ ${HList.h_uid} ] ${HList.h_name} : ${HList.h_title}</option>

                    </c:forEach>
                    </select>
                    <br>
                    <h3 class="inline">열람 여부</h3>
                    <select class="inline" name="view">
                        <option value="2">모두</option>
                        <option value="1">열람</option>
                        <option value="0">미열람</option>
                    </select>
                    <h3 class="inline">검색</h3>
                    <input type="text" name="search" class="inline search_content" placeholder="내용을 입력해 주세요">
                </div>
                <div class="col-md-1">
                    <button class="search" type="submit">검색</button>
                </div>
            </div>
        </form>
        <h2 class="inline">지원 현황 </h2>
        <h2 class="inline red"> ${fn:length(Alist) } </h2>
        <h2 class="inline"> 건</h2>
    </div>
    <c:choose>
        <c:when test="${fn:length(Alist) == 0 }">
            <div class="main_box_content center">

                <h2> 지원한 내역이 없습니다. </h2>

            </div>
        </c:when>

        <c:otherwise>
            <div class="main_box_content row">

                <c:forEach var="AList" items="${Alist }">

                    <div class="app col-md-9">

                        <c:choose>
                            <c:when test="${AList.a_view == 0 }">
                                <h2 id ="viewBtn_${AList.a_uid }" class="inline grey_box">미열람</h2>
                            </c:when>
                            <c:otherwise>
                                <h2 class="inline grey_box red_box">열람</h2>
                            </c:otherwise>
                        </c:choose>

                        <br>
                        <br>
                        <h2>${AList.h_title }</h2>
                        <h2>지원번호 ${AList.a_uid }</h2>
                        <h2>이름 ${AList.u_name }</h2>
                        <h2 class="blue_a"> º 지원일 : ${AList.a_date }</h2>
                        <h2> º 지원 부분 : ${AList.h_part }</h2>
                        <br>
                    </div>
                    <div class="app_btn col-md-3">
                        <button id="btnAUpdate_${AList.a_uid}"
                               >지원 열람
                        </button>
                    </div>

                    <div id="dlg_write_${AList.a_uid}" class="modal">
                        <div class="modal-content">
                            <span class="close" title="Close Modal">&times;</span>
                            <h1 class="hire_title">지원 내역</h1><%--TODO--%>
                                <input type="hidden" name="a_uid" value="${AList.a_uid}">
                                <h2>지원 부분</h2>
                                <h2 class="bold">${AList.h_title }</h2>
                                <br>
                                <h2>직무</h2>
                                <h2 class="bold">${AList.h_part }</h2>
                                <br>
                                <h2>제출 서류</h2>


                                    <table class="rlist_table">
                                        <tr>
                                            <th>
                                               &nbsp;&nbsp;${AList.r_title }
                                            </th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h3 class="blue_a inline"> 이력서 </h3>${AList.r_date } 수정
                                            </td>
                                        </tr>
                                    </table>

                                <div class="padding20"></div>
                                <input type="button" value="이력서 열람하기" class="org_Btn fullbutton"  onclick="upView(${AList.a_uid })">
                        </div>
                    </div>
                </c:forEach>

            </div>

        </c:otherwise>
    </c:choose>
    <div class="main_box_content">


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
