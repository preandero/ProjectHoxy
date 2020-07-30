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
<div class="container">
    <div class="area_inputs wow fadeIn">
        <div class="form-group">
            <label class="font-weight-bold text-white" for="c_id">아이디</label>
            <div>
                <input type="text" class="form-control" id="c_id" name="c_id" value="${cookie.com_check.value}" placeholder="아이디">
            </div>
        </div>
        <div class="form-group">
            <label class="font-weight-bold text-white" for="c_pw">비밀번호</label>
            <div>
                <input type="password" class="form-control" id="c_pw" name="c_pw" placeholder="비밀번호">
            </div>
        </div>
        <div class="form-group">
					<span class="font-weight-bold text-white bg-dark"
                          id="spanLoginCheck"></span>
        </div>
        <div class="form-group">
            <div>
                <button id="loginBtn" type="button"	class="btn btn-primary btn-block">로그인</button>
            </div>
        </div>
        <div class="form-group">
            <a class="btn btn-deep-orange btn-block" href="${pageContext.request.contextPath}/user/c_register">회원가입</a>
        </div>
    </div>
</div>
</div>
<script>
    // 로그인 id / pw 확인
    $('#loginBtn').click(function() {
        var id = $('#c_id').val();
        var pw = $('#c_pw').val();
        $.ajax({
            type : 'post',
            url : '/com/login',
            data : {
                c_id : id,
                c_pw : pw,
            },
            success : function(data) {
                if (data == 0) { //로그인 실패시
                    console.log(data);
                    $('#spanLoginCheck').text('로그인 정보를 정확히 입력해주세요.');
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