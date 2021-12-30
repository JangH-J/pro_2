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
   #section, th, td {
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
	    
	    text-align: center;
	}
	#gongji_list{
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
</head>
<body>
<div style="margin:42px auto; text-align: center;">
<h2><font color="#555555">공지사항</font></h2>
<%-- <caption> <h3> 공지사항</h3></caption> --%>
  <div id="section">
    <table width="1000" align="center" id="gongji">
      <tr>
        <th> 제 목 </th>
        <td colspan="3"> ${mvo.gongji_title} </td>
      </tr>
      <tr>
        <th > 작성자 </th>
        <td colspan="3"> 관리자 </td>
      </tr>
      <tr>
        <th> 조회수 </th>
        <td> ${mvo.gongji_readnum} </td>
        <th> 작성일 </th>
        <td> ${mvo.gongji_writeday} </td>
      </tr>
      <tr>
        <td colspan="4"> ${mvo.gongji_content} </td>
      </tr>
      <tr>
        <td colspan="4">
          <a href="/gongji/gongji_list" id="gongji_list"> 목록 가기 </a>
        </td>
      </tr>
    </table>
  </div>
</body>
</html>