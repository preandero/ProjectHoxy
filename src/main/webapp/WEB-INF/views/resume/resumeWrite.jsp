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
    <link rel="stylesheet" type="text/css" href="CSS/Write.css"/>
</head>
<body>
<div>
    <header></header>

    <section>
        <div id="subject" class="container p-3 my-3 border">
            <h4>이력서 제목을 입력하세요</h4>
        </div>

        <div class="container p-3"><h4>기본정보</h4></div>

        <div id="basic" class="container border p-5">
            <div class="form-group row">
                <label class="m-auto">이름</label>
                <input type="text" class="form-control w-50" id="basicName">
                <span class="dropdown m-auto">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      구직상태 선택
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                      <button class="dropdown-item" type="button">구직준비중(재학생)</button>
                      <button class="dropdown-item" type="button">구직중</button>
                      <button class="dropdown-item" type="button">재직중</button>
                    </div>
                        <form action="/resume/upload" method="post" enctype="multipart/form-data">
                                <input type="file" name="file"/>
                                <input type="submit" value="Upload"/>
                        </form>
                    </span>


            </div>
            <div class="form-group row">
                <label class="m-auto">생년월일</label>
                <input type="text" class="form-control w-50" id="basicBirth">
            </div>
            <div class="form-group row">
                <label class="m-auto">이메일</label>
                <input type="text" class="form-control w-50" id="basicEmail">
            </div>
            <div class="form-group row">
                <label class="m-auto">휴대폰</label>
                <input type="text" class="form-control w-50" id="basicPhone">
            </div>
            <div class="form-group row">
                <label class="m-auto">주소</label>
                <input type="text" class="form-control w-50" id="basicAddrs">
            </div>
        </div>
    </section>

    <footer></footer>
</div>
</body>
</html>
