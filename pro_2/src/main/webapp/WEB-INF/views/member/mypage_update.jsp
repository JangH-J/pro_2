<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>  
</head>
<body>
 <div id="section">
  <form method="post" action="mypage_update_ok">
   <table width="500" align="center">
     <tr>
       <td>
        ${member_userid}
       </td>
     </tr>
     <tr>
       <td> ${member_name} </td>
     </tr>
     <tr>
       <td> ${member_nickname} </td>
     </tr>
     <tr>
       <td> ${member_gender} </td>
     </tr>
     <tr>
       <td> ${member_birthday} </td>
     </tr>
     <tr>
       <td> <input type="text" name="email" placeholder="이메일" value="${mvo.member_email}"> </td>
     </tr>
     <tr>
       <td> <input type="text" name="phone" placeholder="전화번호" value="${mvo.member_phone}"> </td>
     </tr>
     <tr>
       <td> <input type="submit" value="회원정보수정"> </td>
     </tr>
   </table>
  </form>
 </div>
</body>
</html>