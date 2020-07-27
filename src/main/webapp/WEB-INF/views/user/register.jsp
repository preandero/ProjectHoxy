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
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<body>
<div>
    <p>회원가입</p>
    <form method="post">
        <div>
            <input type="text" id="u_id" name="u_id" placeholder="id" required>
        </div>
        <div class="check_font" id="id_check"></div>

        <div>
            <input type="password" id="u_pw" name="u_pw" placeholder="pw" required>
        </div>
        <div class="check_font" id="pw_check"></div>

        <div>
            <input type="password" id="u_pw2"  name="u_pw"  placeholder="Confirm Password" required>
        </div>
        <div class="check_font" id="pw2_check"></div>


        <div>
            <input type="text" id="u_name" name="u_name" placeholder="name">
        </div>
        <div class="check_font" id="name_check"></div>

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
            <a class="btn btn-danger px-3" href="${pageContext.request.contextPath}">
                <i class="fa fa-rotate-right pr-2" aria-hidden="true"></i>취소하기
            </a>&emsp;&emsp;
            <button class="btn btn-primary px-3" id="reg_submit">
                <i class="fa fa-heart pr-2" aria-hidden="true"></i>가입하기
            </button>

        </div>
    </form>
</div>
</body>
<script>

    //모든 공백 체크 정규식
    var empJ = /\s/g;
    //아이디 정규식
    var idJ = /^[a-z0-9]{4,12}$/;
    // 비밀번호 정규식
    var pwJ = /^[A-Za-z0-9]{4,12}$/;
    // 이름 정규식
    var nameJ = /^[가-힣]{2,6}$/;
    // 이메일 검사 정규식
    var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    // 휴대폰 번호 정규식
    var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;

    //비밀번호 유효성 체크
    $('#u_pw').blur(function () {
        if(pwJ.test($('#u_pw').val())){
            console.log('true');
            $('#pw_check').text('');
        }else{
            console.log('false');
            $('#pw_check').text('숫자 or 문자로만 4~12자리');
            $('#pw_check').css('color', 'red');
        }
    });

    $('#u_pw2').blur(function () {
        if($('#u_pw').val() != $(this).val()){
            $('#pw2_check').text('비밀번호 불일치');
            $('#pw2_check').css('color', 'red');
        }else{
            $('#pw2_check').text('');
        }
    });

    // 이름에 특수문자 들어가지 않도록 설정
    $("#u_name").blur(function() {
        if (nameJ.test($(this).val())) {
            console.log(nameJ.test($(this).val()));
            $("#name_check").text('');
        } else {
            $('#name_check').text('이름을 확인해주세요');
            $('#name_check').css('color', 'red');
        }
    });

    // 아이디 유효성 검사(1 = 중복 / 0 != 중복)
    $("#u_id").blur(function() {
        // id = "id_reg" / name = "userId"
        var u_id = $('#u_id').val();
        $.ajax({
            url : '${pageContext.request.contextPath}/user/idCheck?u_id='+ u_id,
            type : 'get',
            success : function(data) {
                console.log("1 = 중복o / 0 = 중복x : "+ data);

                if (data == 1) {
                    // 1 : 아이디가 중복되는 문구
                    $("#id_check").text("사용중인 아이디입니다 :p");
                    $("#id_check").css("color", "red");
                    $("#reg_submit").attr("disabled", true);
                } else {

                    if(idJ.test(u_id)){
                        // 0 : 아이디 길이 / 문자열 검사
                        $("#id_check").text("");
                        $("#reg_submit").attr("disabled", false);

                    } else if(u_id == ""){

                        $('#id_check').text('아이디를 입력해주세요 :)');
                        $('#id_check').css('color', 'red');
                        $("#reg_submit").attr("disabled", true);

                    } else {
                        $('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다 :) :)");
                        $('#id_check').css('color', 'red');
                        $("#reg_submit").attr("disabled", true);
                    }

                }
            }, error : function() {
                console.log("실패");
            }
        });
    });

    // 가입하기 실행 버튼 유효성 검사!
    var inval_Arr = new Array(5).fill(false);
    $('#reg_submit').click(function(){
        // 비밀번호가 같은 경우 && 비밀번호 정규식
        if (($('#u_pw').val() == ($('#u_pw2').val()))
            && pwJ.test($('#u_pw').val())) {
            inval_Arr[0] = true;
        } else {
            inval_Arr[0] = false;
        }
        // 이름 정규식
        if (nameJ.test($('#u_name').val())) {
            inval_Arr[1] = true;
        } else {
            inval_Arr[1] = false;
        }

        var validAll = true;
        for(var i = 0; i < inval_Arr.length; i++){

            if(inval_Arr[i] == false){
                validAll = false;
            }
        }

        if(validAll){ // 유효성 모두 통과
            alert('갓민수님께서 인증 이메일을 보냈으니 확인해주세요!');

        } else{
            alert('입력한 정보들을 다시 한번 확인해주세요 :)')

        }
    });
</script>
</html>