<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400&display=swap" rel="stylesheet">
<style>
	body{
	font-family: 'Noto Sans KR', sans-serif;
	}
  	#btn_rlist ,#btn_rupdate , #btn_rreset {
  		display: inline-block;
    	padding: 10px 20px 12px;
	    background: #fff;
	    border: 1px solid #ccc;
	    border-radius: 2px;
	    color: #555;
	    text-align: center;
	    line-height: 11px;
	    transition: background 0.3s;
	    vertical-align: middle;
    }
      	
</style>
<script>
	<c:if test="${rvo.review_filename==null}">
		window.onload = function imgsrc_input(){
			document.getElementById("img_input").innerHTML="첨부파일 <input type='file'  name='review_filename' id='img'>";
		}
	</c:if>
</script>
</head>
<body>
  <div class="titleArea" style="margin:42px auto; text-align: center;">
  	<h2><font color="#555555">사용후기</font></h2>
  </div>
	<form enctype="multipart/form-data" method="post" action="update_ok">
	<input type="hidden" name="review_id" value="${rvo.review_id}">
	 <input type="hidden" name="review_name" value="${member_userid}">
	  제목<input type="text" name="review_title" size="50" value="${rvo.review_title}"><p>
	  내용<textarea cols="60" rows="10" name="review_content">${rvo.review_content}
	    </textarea> <p>
	 
	 <!-- 첨부파일 -->
	 <span id="img_input"></span>
	 
	 <a href="list" id="btn_rlist" style="font-weight:300; font-size:14px">목록</a>
	 <input type="submit" value="수정" id="btn_rupdate">
	 <input type="reset" value="취소" id="btn_rreset">
	</form>
</body>
</html> 