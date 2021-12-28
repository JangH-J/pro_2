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
   #section {
     width:1000px;
     height:500px;
     margin:auto;
     margin-top:40px;
   }
   table {
     padding-top:20px;
   }
   td {
     height:30px;
   }
   #gongji-name ,td {
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
	    padding: 10px 10px 10px; 
	    text-align: center;	
	}
	#gongji-list td {
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
  <div id="section">
    <table id="gongji" width="700" align="center">
      <caption> <h3> 공지사항 </h3> </caption>
      <tr id="gongji-name">
        <td> 작성자 </td>
        <td> 제 목 </td>
        <td> 조회수 </td>
        <td> 작성일 </td>
       <c:if test="${member_userid=='admin'}">
        <td> 삭 제 </td> 
       </c:if>
      </tr>
     <c:forEach items="${gongji_list}" var="mvo"> 
      <tr id="gongji-list">
        <td> 관리자 </td>
        <td> <a href="gongji_readnum?gongji_id=${mvo.gongji_id}"> ${mvo.gongji_title} </a></td>
        <td> ${mvo.gongji_readnum} </td>
        <td> ${mvo.gongji_writeday} </td>
       <c:if test="${member_userid=='admin'}">
        <td> <a href="gongji_delete?gongji_id=${mvo.gongji_id}"> click </a> </td> 
       </c:if>
      </tr>
     </c:forEach>  
     <c:if test="${member_userid=='admin'}">
      <tr>
        <td colspan="4" align="center">
          <a href="gongji_write"> 글쓰기 </a>
        </td>
      </tr>
     </c:if>
    </table>
  </div>
</body>
</html>