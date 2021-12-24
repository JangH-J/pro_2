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
  <div id="section">
     <table width="800" align="center" id="tab">
       <caption> <h3> 고객센터 </h3> </caption>
       <tr>
         <td> 제 목 </td>
         <td> 작성자 </td>
         <td> 조회수 </td>
         <td> 작성일 </td>
         <td> grp </td>
         <td> seq </td>
         <td> depth </td>
       </tr>
       
      <c:forEach items="${custom_list}" var="cvo">
       <tr>
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
        <td colspan="4" align="center">
          <a href="custom_write"> 글쓰기 </a>
        </td>
      </tr>
       
     </table>
  </div>
</body>
</html>