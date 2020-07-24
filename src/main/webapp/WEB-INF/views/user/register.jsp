<%--
  Created by IntelliJ IDEA.
  User: yjiwo
  Date: 2020-07-23
  Time: 오후 8:43
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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Title</title>
</head>
<body>
<div>
    <p>회원가입</p>
    <form action="${path}/user/register" method="post">
        <div>
            <input type="text" name="u_id" placeholder="id">
        </div>
        <div>
            <input type="text" name="u_pw" placeholder="pw">
        </div>
        <div>
            <input type="text" name="u_name" placeholder="name">
        </div>
        <div>
            <input type="text" name="u_jumin" placeholder="jumin">
        </div>
        <div>
            <input type="text" name="u_email" placeholder="email">
        </div>
        <div>
            <input type="text" name="u_phoneNum" placeholder="phone">
        </div>
        <div>
            <button type="submit">가입</button>
        </div>
    </form>
</div>
</body>
</html>