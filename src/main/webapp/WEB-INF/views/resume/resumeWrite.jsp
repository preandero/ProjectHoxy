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
    <link rel="stylesheet" type="text/css" href="../../../CSS/resumeWrite.css"/>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

</head>
<body>
<div>
    <header></header>

    <section>
        <div class="d-flex justify-content-center">
        <input type="text" id="subject" class="p-3 my-3 border w-50" placeholder="이력서 제목을 입력하세요.">
<%--            <input type="text" placeholder="이력서 제목을 입력하세요."/>--%>
        </input>
        </div>

        <div class="container p-3"><h4>기본정보</h4></div>

        <div id="basic" class="container border p-5">
            <div class="form-group row">
                <label class="ml-3 my-2">이름</label>
                <input type="text" class="form-control w-25 ml-3" id="basicName">

                    <select class="browser-default custom-select w-25 ml-5">
                        <option selected>구직상태 선택</option>
                        <option value="1">구직준비중(재학생)</option>
                        <option value="2">구직중</option>
                        <option value="3">재직중</option>
                    </select>

                        <form  id="uploadForm" enctype="multipart/form-data">
                            <div class="custom-file">
                            <label class="custom-file-label" for="file-name">Choose file</label>
                                <input class="custom-file-input" type="file" name="file" id="file-name"/>
                                <button type="button" class="input-group-text row" id="btn-upload">Upload</button>
<%--                                <button type="button" id="btn-upload" >upload</button>--%>
                            </div>
                        </form>

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
<script src="../../../JS/resumeWrite.js" type="text/javascript"></script>

</html>
