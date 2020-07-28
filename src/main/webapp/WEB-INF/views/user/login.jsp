<%--
  Created by IntelliJ IDEA.
  User: yjiwo
  Date: 2020-07-27
  Time: 오후 5:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <title>Title</title>
</head>
<body>
<!-- Cookie가 비어있지 않을 때 checked 속성을 줌 -->
<c:if test="${not empty cookie.user_check}">
    <c:set value="checked" var="checked"/>
</c:if>
<div class="container">
    <div class="area_inputs wow fadeIn">
        <div class="form-group">
            <label class="font-weight-bold text-white" for="u_id">아이디</label>
            <div>
                <input type="text" class="form-control" id="u_id" name="u_id" value="${cookie.user_check.value}" placeholder="아이디">
            </div>
        </div>
        <div class="form-group">
            <label class="font-weight-bold text-white" for="u_pw">비밀번호</label>
            <div>
                <input type="password" class="form-control" id="u_pw" name="u_pw" placeholder="비밀번호">
            </div>
        </div>
        <div class="form-group">
					<span class="font-weight-bold text-white bg-dark"
                          id="spanLoginCheck"></span>
        </div>
        <div class="form-group">
            <label class="font-weight-bold text-white">
                <input type="checkbox" id="remember_us" name="remember_userId" ${checked}> 아이디 기억하기
            </label>
            <div class="interval_height a_none">
                <a href="${pageContext.request.contextPath}/user/userSearch">&nbsp; 아이디 / 비밀번호 찾기</a>
            </div>
            <div>
                <button id="loginBtn" type="button"	class="btn btn-primary btn-block">로그인</button>
            </div>
        </div>
        <div class="form-group">
            <a class="btn btn-deep-orange btn-block" href="${pageContext.request.contextPath}/user/register">회원가입</a>
        </div>
    </div>
</div>
</div>
<script>
    // 로그인 id / pw 확인
    $('#loginBtn').click(function() {
        var id = $('#u_id').val();
        var pw = $('#u_pw').val();
        var remember_us = $('#remember_us').is(':checked');
        $.ajax({
            type : 'post',
            url : '${pageContext.request.contextPath}/',
            data : {
                u_id : id,
                u_pw : pw,
                remember_userId : remember_us
            },
            success : function(data) {
                if (data == 0) { //로그인 실패시
                    console.log(data);
                    $('#spanLoginCheck').text('로그인 정보를 정확히 입력해주세요.');
                } else if (data == -2) { //인증하지 않았다면?
                    console.log(data);
                    $('#spanLoginCheck').text('이메일 인증을 해주셔야 합니다!');
                } else if (data == -3) { // 아이디가 사용중이라면?
                    console.log(data);
                    location.href = '${pageContext.request.contextPath}/user/redundant?u_id=' + id + '&u_pw=' + pw + '&remember_userId=' + remember_us;
                } else { //로그인 성공시
                    console.log(data);
                    location.href = '${pageContext.request.contextPath}/';
                }
            }
        });
    });
</script>
</body>
</html>