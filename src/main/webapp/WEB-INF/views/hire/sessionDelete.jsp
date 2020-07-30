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
<h2>세션 삭제</h2>
<%
    String sessionName = "id";

    // 세션 삭제 (name)
    session.removeAttribute(sessionName);
%>
<script>
    alert("<%= sessionName %> 세션 삭제");
    location.href = "session.do";
</script>






</body>
</html>





