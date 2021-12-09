<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <table width="800" align="center">
    <tr>
      <td> 번호</td>
    <!--   <td> 상품정보</td> -->
      <td> 제목</td>
      <td> 작성자</td>
      <td> 작성일</td>
      <td> 조회수</td>
    </tr>
    <!-- c:foreach문 추가 -->  
    <c:forEach items="${rlist}" var="rvo">
    <tr>
      <td> ${rvo.review_id}</td>
      <td> ${rvo.review_title }</td>
      <td> ${rvo.review_name}</td>
      <td> ${rvo.review_writeday }</td>
      <td> ${rvo.review_readnum }</td>
    </tr>
    </c:forEach>
    <tr>
      <td colspan="3"><a href="write">글쓰기</a></td>
    </tr>    
  </table>
</body>
</html>