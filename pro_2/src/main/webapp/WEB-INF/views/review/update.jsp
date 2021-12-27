<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	<c:if test="${rvo.review_filename==null}">
		window.onload = function imgsrc_input(){
			document.getElementById("img_input").innerHTML="첨부파일 <input type='file'  name='review_filename' id='img'>";
		}
	</c:if>

</script>
</head>
<body>
	<h2>사용후기</h2>
	<form enctype="multipart/form-data" method="post" action="update_ok" onsubmit="dummy()">
	<input type="hidden" name="review_id" value="${rvo.review_id}">
	 <input type="hidden" name="review_name" value="${member_userid}">
	  제목<input type="text" name="review_title" size="50" value="${rvo.review_title}"><p>
	  내용<textarea cols="60" rows="10" name="review_content">${rvo.review_content}
	    </textarea> <p>
	 
	 <!-- 첨부파일 -->
	 <span id="img_input"></span>
	 
	 <input type="button" value="목록" onclick="location.href='list'">
	 <input type="submit" value="수정">
	 <input type="reset" value="취소">
	</form>
</body>
</html> 