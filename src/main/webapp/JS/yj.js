$(document).ready(function() {


    // 글작성 버튼 누르면 팝업
    $("#btnWrite").click(function(){
        $("#dlg_write").show();
    });

    // 모달 대화상자에서 close 버튼 누르면 닫기
    $(".modal .close").click(function(){
        $(this).parents(".modal").hide();
    });


    $("#header_sub_nav1").hide();
    $("#header_sub_a1").mouseenter(function() {
        $("#header_sub_nav1").show();
    });
    $("#header_sub_nav1").mouseleave(function() {
        $("#header_sub_nav1").hide();

    });




    $('button[id^="btnAUpdate_"]').click(function(){
        var id = $(this).attr('id').split("_")[1];
        $('#dlg_write_' + id).show()
    });



    $('button[id^="period"]').click(function() {
        $('button[id^="period"]').css("background-color","rgb(240,240,240)")
        $('button[id^="period"]').css("color","rgb(0,0,0)")
        $(this).css("background-color","orange")
        $(this).css("color","white")
        var period = $(this).attr('id').split("riod")[1];

        $('#period_input').val(period)
    });




});
function upView(aid){

    $.ajax({
        url : '/app/appviewUpdate',
        type: 'post',
        data : { 'a_uid' : aid },
        success : function(){
            $(".modal").hide();
            $("#viewBtn_"+aid).addClass('red_box');
            $("#viewBtn_"+aid).text('열람');
            window.open('http://www.naver.com')
            return true
        },
        error:function(){
            return false
        }
    });

}
function chkDelete(aid){
    var r = confirm("삭제하시겠습니까?");
    if(r){
        location.href = 'appDelete?a_uid=' + aid;
    }
}

function chkUpdateResume(aid, rid){
    $('#dlg_write_'+aid+' input:radio[name="r_uid"][value='+rid+']').prop('checked', true);

}

