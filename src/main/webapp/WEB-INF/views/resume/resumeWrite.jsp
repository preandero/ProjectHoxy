<!--
Created by IntelliJ IDEA.
User: suu
Date: 2020/07/20
Time: 1:06 PM
To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
-->
<html lang="ko">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>NEXT 이력서 등록하기</title>
    <!-- Latest compiled and minified CSS -->
    <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    />
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/resumeWrite.css"/>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/yoondoo.css"/>

</head>
<body>
<div>
    <header>
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
    </header>

    <section class="mb-5">
        <div class="d-flex justify-content-center my-5">
        <input type="text" id="subject" class="p-4 my-3 border-5 w-50 border-dark" placeholder="이력서 제목을 입력하세요.">
<%--            <input type="text" placeholder="이력서 제목을 입력하세요."/>--%>
        </input>
        </div>

        <div class="container p-3"><h4>기본정보</h4></div>

        <div id="basic" class="container p-5 border bg-white">
            <div class="form-group row">
                <label class="ml-3 my-2">이름</label><span class="req my-2">필수</span>
                <input type="text" class="form-control w-25 ml-5" id="basicName">
                    <select class="browser-default custom-select w-25 ml-5">
                        <option selected>구직상태 선택</option>
                        <option value="1">구직준비중(재학생)</option>
                        <option value="2">구직중</option>
                        <option value="3">재직중</option>
                    </select>
                <input type="hidden" id="resumeStatus" name="status" value="1">

                        <form  id="uploadForm" enctype="multipart/form-data">
                            <div class="custom-file row ml-3">
                            <label class="custom-file-label w-75" for="file-name">Choose file</label>
                                <input class="custom-file-input" type="file" name="file" id="file-name"/>
<%--                                <button type="button" id="btn-upload" >upload</button>--%>
                            </div>
                        </form>


            </div>
            <div class="form-group row">
                <label class="ml-3 my-3 mr-1">생년월일<span class="req my-3">필수</span></label>
                <input type="text" class="form-control w-25 ml-3 my-2 mr-5" id="basicBirth">
                <div class="btn-group btn-group-toggle ml-5 h-50 my-2 px-3 mr-5" data-toggle="buttons">
                    <label class="btn btn-secondary active">
                        <input type="radio" name="options" id="option1" autocomplete="off" checked> 남
                    </label>
                    <label class="btn btn-secondary">
                        <input type="radio" name="options" id="option2" autocomplete="off"> 여
                    </label>
                </div>
                <div class="row d-flex justify-content-end align-items-start px-5 ml-5">
                <button type="button" class="input-group-text h-50 my-2 ml-5" id="btn-upload">사진 업로드</button>
                </div>
            </div>
            <div class="form-group row">
                <label class="ml-3 my-3 mr-2">이메일<span class="req my-3">필수</span></label>
                <input type="text" class="form-control w-25 ml-4 my-2" id="basicEmail">
            </div>
            <div class="form-group row">
                <label class="ml-3 my-3 mr-2">휴대폰<span class="req my-3">필수</span></label>
                <input type="text" class="form-control w-25 ml-4 my-2" id="basicPhone">
            </div>
            <script	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
            <div class="form-group row">
                <label class="ml-3 my-3">주소<span class="req my-3">필수</span></label>
                <input type="text" class="form-control w-50 ml-5 pl-1 my-2" id="basicAddrs" readonly>
                <input type="button" onclick="juso()" value="주소 찾기" id="sample4_btn" class="ml-5 h-50 my-2 btn btn-secondary">
            </div>
                <input type="text" class="form-control w-75" id="basicAddrs2"/>
        </div>

        <div class="container p-3 mt-5"><h4>학력사항</h4></div>

        <div id="edu" class="container pr-5 pl-5 pb-5 pt-0 mt-0 border bg-white">
            <div class="container btn-group border-bottom p-4  d-flex justify-content-start" role="group" aria-label="First group">
                <button type="button" class="btn btn-secondary border" id="eduElebtn">초등학교 졸업</button>
                <button type="button" class="btn btn-secondary border" id="eduMedbtn">중학교 졸업</button>
                <button type="button" class="btn btn-secondary border" id="eduHighbtn">고등학교 졸업</button>
                <button type="button" class="btn btn-secondary border" id="eduUnibtn">대학, 대학원 이상 졸업</button>
            </div>

            <div id="eduEle">

                <h5 class="mt-5">초등학교 정보 입력</h5>
            <div class="form-group row mt-5">
                <label class="ml-3 my-2">학교명</label><span class="req my-2">필수</span>
                <input type="text" class="form-control w-25 ml-5" id="EleEduName">

            </div>
            <div class="form-group row">
                <label class="ml-3 my-3 mr-2">재학기간<span class="req my-3">필수</span></label>
                <input type="text" class="form-control w-25 my-2" id="eduElePeriod">
                 <span class="d-flex justify-content-center my-2 ml-3"> <h2> ~ </h2> </span>
                <input type="text" class="form-control w-25 ml-4 my-2" id="eduElePeriod2">
            </div>
            <div class="form-group row my-2">
                <label class="ml-3 my-3 mr-4 pr-2">지역</label>
                <select class="browser-default custom-select w-25 ml-5 my-2">
                    <option selected>지역 선택</option>
                    <option value="1">서울</option>
                    <option value="2">경기</option>
                    <option value="3">인천</option>
                </select>

            </div>

            </div>

            <div id="eduMed">
                <h5 class="mt-5">중학교 정보 입력</h5>
                <div class="form-group row mt-5">
                    <label class="ml-3 my-2">학교명</label><span class="req my-2">필수</span>
                    <input type="text" class="form-control w-25 ml-5" id="EduMedName">

                </div>
                <div class="form-group row">
                    <label class="ml-3 my-3 mr-2">재학기간<span class="req my-3">필수</span></label>
                    <input type="text" class="form-control w-25 my-2" id="eduMedPeriod">
                    <span class="d-flex justify-content-center my-2 ml-3"> <h2> ~ </h2> </span>
                    <input type="text" class="form-control w-25 ml-4 my-2" id="eduMedPeriod2">
                </div>
                <div class="form-group row my-2">
                    <label class="ml-3 my-3 mr-4 pr-2">지역</label>
                    <select class="browser-default custom-select w-25 ml-5 my-2">
                        <option selected>지역 선택</option>
                        <option value="1">서울</option>
                        <option value="2">경기</option>
                        <option value="3">인천</option>
                    </select>

                </div>
            </div>

                <div id="eduHigh">
                    <h5 class="mt-5">고등학교 정보 입력</h5>
                    <div class="form-group row mt-5">
                        <label class="ml-3 my-2">학교명</label><span class="req my-2">필수</span>
                        <input type="text" class="form-control w-25 ml-5" id="EduHighName">

                    </div>
                    <div class="form-group row">
                        <label class="ml-3 my-3 mr-2">재학기간<span class="req my-3">필수</span></label>
                        <input type="text" class="form-control w-25 my-2" id="eduHighPeriod">
                        <span class="d-flex justify-content-center my-2 ml-3"> <h2> ~ </h2> </span>
                        <input type="text" class="form-control w-25 ml-4 my-2" id="eduHighPeriod2">
                    </div>
                    <div class="form-group row">
                        <label class="ml-3 my-3 pr-2 mr-3">전공 계열</label>
                        <select class="browser-default custom-select w-25 ml-4 my-2">
                            <option selected>전공계열 선택</option>
                            <option value="1">문과계열</option>
                            <option value="2">이과계열</option>
                            <option value="3">전문(실업)계</option>
                            <option value="4">예체능계</option>
                            <option value="5">특수목적고</option>
                        </select>
                    </div>
                    <div class="form-group row">
                        <label class="ml-3 my-3 mr-4 pr-2">지역</label>
                        <select class="browser-default custom-select w-25 ml-5 my-2">
                            <option selected>지역 선택</option>
                            <option value="1">서울</option>
                            <option value="2">경기</option>
                            <option value="3">인천</option>
                        </select>
                    </div>
                </div>

            </div>

    </section>

    <footer><div id="main_footer">

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
    </div></footer>
</div>
</body>
<script src="../../../JS/resumeWrite.js" type="text/javascript"></script>

</html>
