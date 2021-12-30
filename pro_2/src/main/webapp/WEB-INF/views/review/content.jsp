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
	#review_content, th ,td{
		font-size:14px; 
  		font-weight:400;
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
	}
  	#btn_rlist,#btn_rupdate,#btn_rdelete {
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
      function del()
      {
    	  document.getElementById("del").style.display="table-row";
      }
      
 </script>
</head>
<body>
  <div style="margin:42px auto; text-align: center;">
  	<h2><font color="#555555">사용후기</font></h2>
  </div>
   <table id="review_content" width="1000" align="center" id="rcon">
     <tr>
      <th>제목</th>
      <td colspan="3">${rvo.review_title}</td>
    </tr>
    <tr>
      <th>작성자</th>
      <td colspan="3">${rvo.review_name}</td>
    </tr>
    
    <tr>
      <th>조회수</th>
      <td>${rvo.review_readnum}</td>
      <th>작성일</th> 
      <td>${rvo.review_writeday }</td>
    <tr>
      <td colspan="4">${rvo.review_content}
       <c:if test="${rvo.review_filename!=null}">
	     <img src="../resources/img/${rvo.review_filename}">
       </c:if>
      </td>
    </tr>
    <tr>
	   <td><a href="list" id="btn_rlist">목록</a>
	 <c:if test="${member_userid==rvo.review_name || member_userid=='admin'}"> 
  	   <a href="update?review_id=${rvo.review_id}" id="btn_rupdate">수정</a>
 	   <a onclick="var cf=confirm('정말로 삭제하시겠습니까?');if(cf==false){loaction.href='content?review_id=${rvo.review_id}'};location.href='delete?review_id=${rvo.review_id}&tt=1'" id="btn_rdelete">삭제</a></td>
 	 </c:if>
  	</tr>  
   </table>
  
</body>
</html>