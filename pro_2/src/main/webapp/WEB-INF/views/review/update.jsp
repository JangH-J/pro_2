<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>사용후기</h2>
	<form method="post" action="update_ok">
	  제목<input type="text" name="review_title" size="50" value="${rvo.review_title}"><p>
	  내용<textarea cols="60" rows="10" name="review_content">${rvo.review_content}</textarea> <p>
	  첨부파일 
	  비밀번호<input type="password" name="review_pwd"> <p>
	 <input type="button" value="목록" onclick="location.href='list'">
	 <input type="submit" value="등록">
	 <input type="reset" value="취소">
	 <input type="hidden" name="review_name" value="${member_userid}">
	</form>
</body>
</html> 