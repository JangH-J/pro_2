<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <script>
      function del()
      {
    	  document.getElementById("del").style.display="table-row";
      }
 </script>
</head>
<body>
<table width="800" align="center" id="rcon">
  <h2>사용후기</h2>
    <tr>
      <td>제목</td>
      <td>${rvo.review_title}</td>
    </tr>
    <tr>
      <td>작성자</td>
      <td>${rvo.review_name}</td>
    </tr>
    
    <tr>
      <td>조회수</td>
      <td>${rvo.review_readnum}</td>
      <td>작성일</td>
      <td>${rvo.review_writeday }</td>
    <tr>
      <td>${rvo.review_content}</td>
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