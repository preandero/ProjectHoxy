<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>채용 공고</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath }/JS/woo.js"></script>
    <link rel="stylesheet"
          href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath }/CSS/woo.css"/>
</head>


<body>
<h2>세션 생성</h2>




<%
    String sessionName = "id";
    int sessionValue = 1;

    // 세션생성
    // setAttribute(String arg0, Object arg1) 두번째 매개변수는 Object 타입이다
    session.setAttribute(sessionName, sessionValue);

%>

<script>
    alert("<%= sessionName %> 세션 생성");
    location.href = "session.do";
</script>





</body>
</html>





