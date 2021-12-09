<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
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

</style>
</head>
<body>
  <div id="section">
    <table width="700" align="center">
      <caption> <h3> 공지사항 </h3> </caption>
      <tr>
        <td> 작성자 </td>
        <td> 제 목 </td>
        <td> 조회수 </td>
        <td> 작성일 </td>
       <c:if test="${member_userid=='admin'}">
        <td> 삭 제 </td> 
       </c:if>
      </tr>
     <c:forEach items="${gongji_list}" var="mvo"> 
      <tr>
        <td> 관리자 </td>
        <td> <a href="gongji_readnum?gongji_id=${mvo.gongji_id}"> ${mvo.gongji_title} </a></td>
        <td> ${mvo.gongji_readnum} </td>
        <td> ${mvo.gongji_writeday} </td>
       <c:if test="${member_userid=='admin'}">
        <td> <a href="gongji_delete?id=${mvo.gongji_id}"> click </a> </td> 
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