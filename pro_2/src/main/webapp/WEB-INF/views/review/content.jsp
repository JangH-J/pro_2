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
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
  <style>
	body{
	font-family: 'Noto Sans KR', sans-serif;
	}
  </style>
 <script>
      function del()
      {
    	  document.getElementById("del").style.display="table-row";
      }
 </script>
</head>
<body>
  <div class="titleArea" style="margin:42px auto; text-align: center;">
  	<h2><font color="#555555">사용후기</font></h2>
  </div>
<table width="800" align="center" id="rcon">
     <tr>
      <td>제목</td>
      <td colspan="3">${rvo.review_title}</td>
    </tr>
    <tr>
      <td>작성자</td>
      <td colspan="3">${rvo.review_name}</td>
    </tr>
    
    <tr>
      <td>조회수</td>
      <td>${rvo.review_readnum}</td>
      <td>작성일</td>
      
      <td>${rvo.review_writeday }</td>
    <tr>
      <td colspan="4">${rvo.review_content}</td>
    </tr>
    <c:if test="${rvo.review_filename!=null}">
	   <tr>
	     <td colspan="4"> <img src="../resources/img/${rvo.review_filename}">
	   </tr>
    </c:if>
</table>
<input type="button" value="목록" onclick="location.href='list'"> 

 <c:if test="${member_userid==rvo.review_name}"> 
  <input type="button" value="수정" onclick="location.href='update?review_id=${rvo.review_id}'">
  <input type="button" value="삭제" onclick="location.href='delete?review_id=${rvo.review_id}&tt=1'">
</c:if>
        </form>
      </td>
    </tr>
    
</body>
</html>