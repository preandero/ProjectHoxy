$('#btn-upload').on('click', function () {
    console.log('btn-upload');
    var form = new FormData(document.getElementById('uploadForm'));

    if($('#file-name').val() == ""){
        Swal.fire({
            icon: 'error',
            title: 'Warning',
            text: '파일을 선택해주세요!',
        })
    } else {
        $.ajax({
            url: "/resume/upload",
            data: form,
            dataType: 'text',
            processData: false,
            contentType: false,
            type: 'POST',
            success: function () {
                Swal.fire({
                    icon: 'success',
                    title: 'complete',
                    text: 'Upload Sucess!',
                })
            },
            error: function ( ) {
                Swal.fire({
                    icon: 'error',
                    title: 'Warning',
                    text: 'Upload Fail!',
                })
            }
        });
    }
});


