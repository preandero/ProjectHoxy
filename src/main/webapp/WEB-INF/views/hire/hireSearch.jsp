<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${pageContext.request.contextPath }/JS/woo.js"></script>
<link rel="stylesheet"
      href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css"
      href="${pageContext.request.contextPath }/CSS/woo.css"/>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>공고 검색</title>
</head>


<body>
<h2>공고 검색</h2>
<form name='frm' method='get' action='list.do'
      style="display: block; margin-top: 5px;">
    <select id="hirelist" name="hirelist">
        <option value="1">강남</option>
        <option value="2">역삼</option>
        <option value="3">수원</option>
        <option value="4">서울</option>
        <option value="5">서초</option>
        <option value="6">방배</option>
        <option value="7">교대</option>
        <option value="" selected> 지역 선택</option>
    </select>

    <input type="text" name='word' value=''
           placeholder="특수문자 입력불가" aria-label="특수문자 입력 불가"
           aria-describedby="button-addon2">
    <div>
        <button type="submit">검색</button>
    </div>
</form>


</body>
</html>





