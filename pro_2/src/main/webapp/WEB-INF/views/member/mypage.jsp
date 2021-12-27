<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
   #chgpwd {
     position:absolute;
     left:300px;
     top:100px;
     width:300px;
     height:200px;
     border:1px solid #6799FF;
     visibility:hidden;
     background:white;
   }
 </style>
  <script>
	 function change_pwd()
	 {
		document.getElementById("chgpwd").style.visibility="visible";   
	 }
	 function check(my)
	 {
		if(my.pwd.value.trim().length!=0 && my.pwd2.value.trim().length!=0) // 변경할 비밀번호 입력칸의 값이 비어있으면 실행X
		{
		 if(my.pwd.value!=my.pwd2.value)
		 {
		 	alert("비밀번호가 일치하지 않습니다");
		 	return false;
		 }
		 else
		 {
			 return true;
		 }
		}
		else
			return false;
	 }
	 function member_delete(){
		 if(confirm("정말로 탈퇴하시겠습니까? 탈퇴하시면 적립된 포인트 및 모든 정보가 사라집니다")==true)
		 {
			 location.href='delete?member_id=${mvo.member_id}'
		 }
		 else
		 {
			 return false;
		 }
	 	
	 }
 </script>
</head>
<body>
  <div id="section">
    <form method="post" action="change_pwd" id="chgpwd" onsubmit="return check(this)">
      <input type="password" name="before_pwd" placeholder="이전 비밀번호"><p>
      <input type="password" name="pwd" placeholder="새 비밀번호"> <p>
      <input type="password" name="pwd2" placeholder="새 비밀번호 확인"> <p>
      <input type="submit" value="비밀번호 변경">
    </form>
    <table width="400" align="center">
      <caption> <h3> ${member_name}님의 회원정보</h3></caption>
      <tr>
        <td> 회원아이디</td>
        <td> ${mvo.member_userid} </td>
      </tr>
      <tr>
        <td> 이름</td>
        <td> ${mvo.member_name} </td>
      </tr>
      <tr>
        <td> 닉네임</td>
        <td> ${mvo.member_nickname} </td>
      </tr>
       <tr>
        <td> 성별</td>
        <td> ${mvo.member_gender} </td>
      </tr>
       <tr>
        <td> 생일</td>
        <td> ${mvo.member_birthday} </td>
      </tr>
      <tr>
        <td> 이메일</td>
        <td> ${mvo.member_email} </td>
      </tr>
      <tr>
        <td> 전화번호</td>
        <td> ${mvo.member_phone} </td>
      </tr>
      <tr>
        <td>
         <input type="button" value="장바구니" onclick="location='/product/product_cart_list'">
        </td>
        <td>
         <input type="button" value="주문확인" onclick="">
        </td>
      </tr>
      <tr>
        <td colspan="2" align="center">
         <input type="button" value="회원정보수정" onclick="location='mypage_update'">
         <input type="button" value="비밀번호수정" onclick="change_pwd()">
         <input type="button" value="회원탈퇴하기" onclick="member_delete()">
        </td>
      </tr>
    </table>
  </div>
</body>
</html>