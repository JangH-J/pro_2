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
	#review ,th {
		font-size:16px; font-weight:300;
		border-collapse : collapse;
	  	border-top-color: rgb(218, 218, 218);
	    border-top-style: solid;
	    border-top-width: 1px;
	    border-right-color: initial;
	    border-right-style: none;
	    border-right-width: 0px;
	    border-bottom-color: rgb(218, 218, 218);
	    border-bottom-style: solid;
	    border-bottom-width: 1px;
	    border-left-color: initial;
	    border-left-style: none;
	    border-left-width: 0px;  	
	}
	#review-list td {
		font-size:14px; 
		font-weight:300;
		border-collapse : collapse;
	  	border-top-color: initial;
	    border-top-style: none;
	    border-top-width: 0px;
	    border-right-color: initial;
	    border-right-style: none;
	    border-right-width: 0px;
	    border-bottom-color: rgb(218, 218, 218);
	    border-bottom-style: solid;
	    border-bottom-width: 1px;
	    border-left-color: initial;
	    border-left-style: none;
	    border-left-width: 0px;
	    padding: 10px 10px 10px; 
	    
	    text-align: center;
	}
	 
  </style>
</head>
<body>

  <div class="titleArea" style="margin:42px auto; text-align: center;">
  	<h2><font color="#555555">사용후기</font></h2>
  </div>
  <table id="review" width="800" align="center">
  <div id="review-section">
    <tr>
      <th> 번호</th>
      <th>제목</th>
      <th> 작성자</th>
      <th> 작성일</th>
      <th> 조회수</th>
    </tr>
    <!-- c:foreach문 추가 -->  
    <c:forEach items="${rlist}" var="rvo">
    <tr id="review-list">
      <td> ${rvo.review_id}</td>
      <td><a href="readnum?review_id=${rvo.review_id}">${rvo.review_title }</a></td>
      <td> ${rvo.review_name}</td>
      <td> ${rvo.review_writeday }</td>
      <td> ${rvo.review_readnum }</td>
    </tr>
    </c:forEach>
    </div>
    <c:if test="${member_userid!=null}">
    <tr>
      <td colspan="3"><a href="write">글쓰기</a></td>
    </tr>
    </c:if>
  </table>
</div>
</body>
</html>