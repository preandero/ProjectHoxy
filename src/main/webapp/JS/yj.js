$(document).ready(function() {

    $("#header_sub_nav1").hide();
    $("#header_sub_a1").mouseenter(function() {
        $("#header_sub_nav1").show();
    });
    $("#header_sub_nav1").mouseleave(function() {
        $("#header_sub_nav1").hide();

    });




    // 글작성 버튼 누르면 팝업
    $("#btnWrite").click(function(){
        $("#dlg_write").show();
    });

    // 모달 대화상자에서 close 버튼 누르면 닫기
    $(".modal .close").click(function(){
        $(this).parents(".modal").hide();
    });

});
