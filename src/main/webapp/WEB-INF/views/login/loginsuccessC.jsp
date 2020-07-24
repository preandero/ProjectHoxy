<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SpringWebMVC</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style>
        div {
            margin-bottom: 5px;
        }
    </style>

    <script>
        $(document).ready(function() {

        });
    </script>

</head>
<body>

<div class="container">
    <h1>회사 전용 페이지</h1>

    <p>
        <%-- Spring Security에 지정한 로그아웃 요청 주소 지정 --%>
        <%-- 로그인 정보 확인은 ${pageContext.request.userPrincipal.name} 표현 사용 --%>
        <a href="j_spring_security_logout">[COMPANY Logout (${pageContext.request.userPrincipal.name})]</a>
    </p>
</div>

</body>
</html>