<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
    #mupdate {
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
   #mp_update{
    margin:0 auto;
   }
</style>  
</head>
<body>
 <div id="mp_update">
  <form method="post" action="mypage_update_ok">
   <table width="300" align="center">
     <tr>
       <td>아이디</td>
       <td>
        ${mvo.member_userid}
       </td>
     </tr>
     <tr>
       <td>이름</td>
       <td> ${mvo.member_name} </td>
     </tr>
     <tr>
       <td>닉네임</td>
       <td> ${mvo.member_nickname} </td>
     </tr>
     <tr>
       <td>성별</td>
       <td> ${mvo.member_gender} </td>
     </tr>
     <tr>
       <td>생일</td>
       <td> ${mvo.member_birthday} </td>
     </tr>
     <tr>
       <td colspan="2"> <input type="text" name="email" placeholder="이메일" value="${mvo.member_email}" > </td>
     </tr>
     <tr>
       <td colspan="2"> <input type="text" name="phone" placeholder="전화번호" value="${mvo.member_phone}"> </td>
     </tr>
     <tr>
       <td colspan="2"> <input type="submit" value="회원정보수정" id="mupdate"> </td>
     </tr>
   </table>
  </form>
 </div>
</body>
</html>