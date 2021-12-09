<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form method="post" action="update_ok" id="review_form">
    <input type="hidden" name="review_id" value="${rvo.review_name}">
      <table width="800" align="center">
    <c:if test="${member_userid == null}">
      <tr>
          <td> 이 름 </td>
          <td> ${rvo.review_name} </td>
        </tr> 
        <tr>
          <td> 비밀번호 </td>
          <td> <input type="text" name="pwd" size="50"> </td>
        </tr> 
    </c:if>
  </form>
    
    
  
  </table>
</body>
</html>