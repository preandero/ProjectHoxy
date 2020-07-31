$(document).ready(function(){
	// 게시판 목록 1페이지 로딩


	var a = $.trim($('#a').html());
	
	
	loadPage(a);
	
	$("#frmWrite").submit(function(){
		
		return chkWrite();
	});
	
	
	var link = document.location.href;

	
	$('#copy_btn').click(function(){
		$.trim($('#copy_text_input').val(link));
		$('#copy_text_input').select() //복사할 텍스트를 선택
		document.execCommand("copy") //클립보드 복사 실행
		alert('복사완료')
	})

	
   
	
	
	
	
});

function loadPage(page){
	
	$.ajax({
		
		url : "list.ajax?uid=" + page
		, type : "GET"
		, cache : false
		, success : function(data, status){
			
			if(status == "success"){
				
				if(updateList(data)){
					
					$(".deletebtn").click(function(){
						
						deleteUid($(this).attr('data-uid'));
						
						
					});
					
					$(".updatebtn").click(function(){
						
						$(".updatebtn").hide();
						var lastcontent = $("#btnclick"+($(this).attr('updata-uid'))).html();
						var result = "";
							result += "<div class='input-group'>"
							result +=  "<textarea class='input newtextarea form-control' style='width: 50%'>"+lastcontent + "</textarea>"
							result += "<div class='input-group-append' id='button-addon4'>"
							result += "<button type='button' class='submitbtn btn btn-outline-secondary' com-uid='"+ ($(this).attr('updata-uid'))+ "'>수정완료</button><div class='output' style='display: none'>출력</div>";
							result += "<button type='button' class='canclebtn btn btn-outline-secondary' com-uid='"+ ($(this).attr('updata-uid'))+ "'>취소</button>"
							result += "</div></div>"
						
						
					
						$("#btnclick"+($(this).attr('updata-uid'))).html(result);
						      
						      
						$(".input").keyup(function(){
							
							$(".output").text($(".input").val());
						})
					  $(".submitbtn").click(function(){
					   
									  var content = $.trim($('.output').html());
							  var uid =(($(this).attr('com-uid')));
							  
							  updateUid(uid,content);
							  
						  })

						$(".canclebtn").click(function () {

							var content = $.trim($('.output').html());

							$(".updatebtn").show();
							$("#btnclick"+($(this).attr('com-uid'))).html(content);
						})
						

						
						
					});
					
				
					
				
					
					// 업데이트된 list 에 필요한 이벤트 가동
					
					// ★ 만약 위 코드를 $(document).ready() 에 두면 동작 안할것이다.!
				}
				
			}			
		}
	});

}

function updateList(jsonObj){
	result = "";
	result2 = "";
	if(jsonObj.status == "OK"){
		
		var count = jsonObj.count;
		
		var i;
		var items = jsonObj.data;  
		for(i = 0; i < count; i++){
			result2 += "<div class='row' style='height: 70px; margin-top: 10px'>\n";
			result2 += "<div class='col-md-1'><i class='fas fa-user-tie'></i></div>\n";
			result2 += "<div class='col-md-1'>" + "익명" + (i+1)+ "</div>\n";
			result2 += "<div class='col-md-6' id='btnclick"+ items[i].uid + "'>" + items[i].content + "</div>\n";
			result2 += "<div class='col-md-2'>" + items[i].regdate + "</div>\n";
			result2 += "<div class='col-md-1'>" + "<button class='updatebtn border_btn' updata-uid='"+ items[i].uid + "' type='button'>수정</button> "+  "</div>\n";
			result2 += "<div class='col-md-1'>" + "<button class='deletebtn border_btn' data-uid='"+ items[i].uid + "' type='button'>삭제</button> "+  "</div>\n";
			result2 += "</div>\n"


			result += "<tr>\n";
			result += "<td class='retd'>" +"<i class='fas fa-user-tie'></i>" + "</td>\n";


			result += "<td class='retd2'>" + "익명 " +  (i+1)+ "]</td>\n";

			result += "<td id='btnclick"+ items[i].uid + "'>" + items[i].content + "</td>\n";

			result += "<td>" + items[i].regdate + "</td>\n";
			result += "<td>" + "<button class='updatebtn' updata-uid='"+ items[i].uid + "' type='button'>수정</button> "+  "</td>\n";
			result += "<td>" + "<button class='deletebtn' data-uid='"+ items[i].uid + "' type='button'>삭제</button> "+  "</td>\n";



			result += "</tr>\n";
		} // end for
		$("#list tbody").html(result);
		$("#ajaxin").html(result2);
		$("#replycnt").html("댓글수:" + count);
		return true;
	}
	
} // end updateList()


function chkWrite(){
	var data = $("#frmWrite").serialize();
	var c = $.trim($('#a').html());
	$.ajax({
		url : "writeOk.ajax",
		type : "POST",
		cache : false,
		data : data,  // POST 로 ajax request 하는 경우 parameter 담기
		success : function(data, status){
			if(status == "success"){
				
				if(data.status == "OK"){
				loadPage(c);
				
				} else {
					alert("INSERT 실패 " + data.status + " : " + data.message);
				}
			}
		}
	});
	
	
	$('#frmWrite')[0].reset();
	
	
	
	return false;
	
} // end chkWrite()

function deleteUid(uid){
	var c = $.trim($('#a').html());
	if(!confirm(uid + "글을 삭제 하시겠습니까?")) return false;
	
	// POST 방식 
	$.ajax({
		url : "deleteOk.ajax",
		type : "POST",
		data : "uid=" + uid,
		cache : false,
		success : function(data, status){
			if(status == "success"){
				if(data.status == "OK"){
					alert("DELETE 성공" + data.count + "개");
					loadPage(c); // 현재 페이지 리로딩
				} else {
					alert("DELETE 실패" + data.message);
					
				}
			}
		}
		
	});
	
	return false;
		
		
	
} // end deleteUid(uid)





function updateUid(uid,content){
	var c = $.trim($('#a').html());
	if(!confirm(uid + "글을 수정 하시겠습니까?")) return false;


	$.ajax({
		url : "updateOk.ajax",
		type : "POST",
		data : "uid=" + uid + "&content=" +content,
		cache : false,
		success : function(data, status){
			if(status == "success"){
				if(data.status == "OK"){
					alert("Update 성공" + data.count + "개");
					loadPage(c); // 현재 페이지 리로딩
				} else {
					alert("Update 실패" + data.message);
					
				}
			}
		}
		
	});
	
	return false;
		
} 
