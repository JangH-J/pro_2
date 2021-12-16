<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   }
 </style>
</head>
<body>
  <div id="section">
    <form method="post" action="custom_write_ok">
      <input type="hidden" name="custom_seq" value="0">
      <input type="hidden" name="custom_depth" value="0">
      <table width="600" align="center">
       <c:if test="${custom_userid == null}">
        <tr>
          <td> 이 름 </td>
          <td> <input type="text" name="custom_userid" size="50"> </td>
        </tr> 
        <tr>
          <td> 비밀번호</td>
          <td> <input type="text" name="custom_pwd" size="50"> </td>
        </tr>
       </c:if>
        <tr>
          <td> 제 목 </td>
          <td> <input type="text" name="custom_title" size="50"> </td>
        </tr> 
        <tr>
          <td> 내용 </td>
          <td> <textarea cols="50"  rows="6" name="custom_content"></textarea> </td>
        </tr> 
        <tr>
          <td colspan="2" align="center"> <input type="submit" value="저장"> </td>
        </tr> 
      </table>
    </form>
  </div>
</body>
</html>