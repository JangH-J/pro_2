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
   #section td {
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
    <table width="500" align="center">
      <caption> <h3> 공지사항</h3></caption>
      <tr>
        <td> 제 목 </td>
        <td> ${mvo.gongji_title} </td>
      </tr>
      <tr>
        <td> 작성자 </td>
        <td> 관리자 </td>
      </tr>
      <tr>
        <td> 내 용 </td>
        <td> ${mvo.gongji_content} </td>
      </tr>
      <tr>
        <td> 조회수 </td>
        <td> ${mvo.gongji_readnum} </td>
      </tr>
      <tr>
        <td> 작성일 </td>
        <td> ${mvo.gongji_writeday} </td>
      </tr>
      <tr>
        <td colspan="2" align="center">
          <a href="/gongji/gongji_list"> 목록 가기 </a>
        </td>
      </tr>
    </table>
  </div>
</body>
</html>