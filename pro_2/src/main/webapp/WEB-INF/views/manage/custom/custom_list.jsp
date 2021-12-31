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
	
	#tab th {
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
	}
	#custom-list td {
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
	}
  	#cwrite {
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
  	<h2><font color="#555555">고객센터</font></h2>
  </div>
  <div id="section">
     <table width="800" align="center" id="tab">
       <tr id="custom-name"  align="left">
         <th> 제 목 </th>
         <th> 작성자 </th>
         <th> 조회수 </th>
         <th> 작성일 </th>
         <th> grp </th>
         <th> seq </th>
         <th> depth</th>
       </tr>
       
      <c:forEach items="${custom_list}" var="cvo">
       <tr id="custom-list">
         <td>
         <c:if test="${cvo.custom_depth > 0}">
           <c:forEach begin="0" end="${cvo.custom_depth}">
             &nbsp;&nbsp;
           </c:forEach>                
                          ↪
         </c:if>
         <a href="custom_readnum?custom_id=${cvo.custom_id}"> ${cvo.custom_title} </a> </td>
         <td> ${cvo.custom_userid} </td>
         <td> ${cvo.custom_readnum} </td>
         <td> ${cvo.custom_writeday} </td>
         <td> ${cvo.custom_grp} </td>
         <td> ${cvo.custom_seq} </td>
         <td> ${cvo.custom_depth} </td>
       </tr>
      </c:forEach>
      <tr>
        <td colspan="3">
          <a href="custom_write" id="cwrite"> 글쓰기 </a>
        </td>
      </tr>  
     </table>
  </div>
</body>
</html>