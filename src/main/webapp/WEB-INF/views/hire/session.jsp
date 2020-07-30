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
<h2>채용 공고</h2>

<%--임의의 세션값 삭제해주기 ---------------------------------------------%>
<%
    String sessionName;
    int sessionValue;
    Enumeration enumeration = session.getAttributeNames();  // Enumeratoin<String> 리턴

    int i = 0;
    while(enumeration.hasMoreElements()){
        sessionName = enumeration.nextElement().toString();
        sessionValue = (Integer)session.getAttribute(sessionName);
        out.println((i + 1) + "] " + sessionName + " : " + sessionValue + "<br>");
        i++;
    }
    if(i == 0){

    }
%>


<br>
<form action="sessionCreate.do" method="get">
    <input type="submit" value="세선생성">
</form>

<br>
<form action="sessionDelete.do" method="get">
    <input type="submit" value="세션삭제">
</form>

<form action="hirelist.do" method="get">
    <input type="submit" value="목록보기">
</form>






<br>
<%
    String sessionId = session.getId();
    int sessionInterval = session.getMaxInactiveInterval();

    out.println("세션 ID: " + sessionId + "<br>");
    out.println("세션 유효시간: " + sessionInterval + "<br>");
%>
<br><br>




</body>
</html>





