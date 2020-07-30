<%--
  Created by IntelliJ IDEA.
  User: bhd44
  Date: 2020-07-14
  Time: 오후 4:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/testtest.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/testtest2.css"/>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script
            src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
</head>
<link rel="shortcut icon" type="image/x-icon"
      href="https://i.imgur.com/8AyMFrx.png">
<body>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>


<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/JS/jquery.lettering-0.6.1.min.js"></script>


<script src="${pageContext.request.contextPath }/JS/testtest.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>


<nav role="navigation">

    <div id="menuToggle">
        <!--
        A fake / hidden checkbox is used as click reciever,
        so you can use the :checked selector on it.
        -->
        <input type="checkbox"/>

        <!--
        Some spans to act as a hamburger.

        They are acting like a real hamburger,
        not that McDonalds stuff.
        -->
        <span></span>
        <span></span>
        <span></span>

        <!--
        Too bad the menu has to be inside of the button
        but hey, it's pure CSS magic.
        -->

        <ul id="menu">
            <a href="#">
                <li><a href="/hire/hirelist.do">지역별 채용공고</a></li>
            </a>
            <a href="#">
                <li>BLIND-BOARD</li>
            </a>
            <a href="#">
                <li>이력서 관리</li>
            </a>
            <a href="#">
                <li>지원 관리</li>
            </a>
            <a href="#">
                <li>기업서비스</li>
            </a>

        </ul>
    </div>
</nav>
<c:choose>
    <c:when test="${u_name!=null}">
        <h1 id="main_username">${u_name} 님 안녕하세요</h1>
        <h1 id="main_login" onclick='location.href="/logout"'>Logout</h1>
    </c:when>
    <c:otherwise>
        <h1 id="main_login"><a href="/user/login">Login</a></h1>
    </c:otherwise>
</c:choose>

<section class="container">
    <div id="main_header_log"></div>
    <h1>
        <%--  <span class="title">This is</span>
          <span class="title">a long</span>--%>
        <span class="title">일할래 Hoxy?</span>
    </h1>

    <%--<div class="button">restart</div>--%>
</section>


<div class="wrap">
    <div class="search">
        <input type="text" class="searchTerm" placeholder="What are you looking for?">
        <input type="text" class="searchTerm searchTerm1" placeholder="What are you looking for?">
        <button type="submit" class="searchButton">
            <i class="fas fa-search"></i>
        </button>
    </div>
</div>

<%--
<div id = "main_box">
    <div id="Awesome" class="anim750">

        <div class="reveal circle_wrapper">
            <div class="circle">Hello!</div>
        </div>

        <div class="sticky anim750">
            <div class="front circle_wrapper anim750">
                <div class="circle anim750"></div>
            </div>
        </div>

        <h4>Peel Me!</h4>

        <div class="sticky anim750">
            <div class="back circle_wrapper anim750">
                <div class="circle anim750"></div>
            </div>
        </div>

    </div>

</div>--%>
<nav class="menu">
    <input type="checkbox" href="#" class="menu-open" name="menu-open" id="menu-open"/>
    <label class="menu-open-button" for="menu-open">
        <span class="hamburger hamburger-1"></span>
        <span class="hamburger hamburger-2"></span>
        <span class="hamburger hamburger-3"></span>
    </label>

    <a href="#" class="menu-item"> <i class="fa fa-bar-chart"></i> </a>
    <a href="#" class="menu-item"> <i class="fa fa-plus"></i> </a>
    <a href="#" class="menu-item"> <i class="fa fa-heart"></i> </a>
    <a href="#" class="menu-item"> <i class="fa fa-envelope"></i> </a>
    <a href="#" class="menu-item"> <i class="fa fa-cog"></i> </a>
    <a href="#" class="menu-item"> <i class="fa fa-ellipsis-h"></i> </a>

</nav>


</body>

</html>
