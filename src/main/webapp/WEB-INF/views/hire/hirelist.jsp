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
<%-- 글목록 --%>
<div id="list">
    <div class="d01">
        <div class="left" id="pageinfo"></div>
        <div class="right" id="pageRows"></div>
    </div>

    <form id="frmList" name="frmList">
        <table>
            <thead>
            <th>공고 제목</th>
            <th>기업명</th>
            <th>공고 번호</th>
            <th>마감기한</th>


            </thead>


            <tbody>
            </tbody>
        </table>
    </form>

    <%--버튼 --%>
    <div class="d01">
        <div class="left">
            <button onclick="location.href='write.do'">공고등록</button>
        </div>
    </div>


</div>

<br>
<%-- 페이징 --%>
<div class="center">
    <ul class="pagination" id="pagination">

    </ul>
</div>



</body>
</html>





