<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<c:choose>
	<c:when test="${empty view || fn:length(view) == 0 }">
		<script>
			alert("해당 정보가 삭제되거나 없습니다");
			history.back();
		</script>
	</c:when>
	<c:otherwise>

		<!DOCTYPE html>
		<html lang="ko">
		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title> ${view[0].h_name}</title>
		</head>
		<script>
			function chkDelete(h_uid){
				var r = confirm("삭제하시겠습니까?");
				if(r){
					location.href = 'deleteOk.do?h_uid=' + h_uid;
				}
			}
		</script>
		<body>
		<h2>${view[0].h_name }</h2>
		<br>
		직원번호 : ${view[0].h_uid }<br>
		이름 : ${view[0].h_name }<br>
		직책 : ${view[0].h_part }<br>
		공고 : ${view[0].h_title }<br>
		급여 : ${view[0].h_salary }<br>
		학위 : ${view[0].h_degree }<br>
		근무 형태 : ${view[0].h_workform }<br>
		<hr>
		<br>
		<button onclick="location.href='update.do?h_uid=${view[0].h_uid }'">수정하기</button>
		<button onclick="history.back()">이전으로</button>
		</body>
		</html>

	</c:otherwise>
</c:choose>














