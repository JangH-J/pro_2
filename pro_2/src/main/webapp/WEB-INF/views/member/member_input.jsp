<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <script>
  	var uchk=1; // 아이디 중복체크 관련 변수
 	var pchk=1; // 비밀번호 일치 관련 변수
 	var nchk=1; // 닉네임 중복체크 관련 변수
 	
  	function userid_check(member_userid)
  	{
  		var chk=new XMLHttpRequest();
  		chk.open("get","userid_check?member_userid="+member_userid); // userid_check?userid=hong
  		chk.send();
  		
  		chk.onreadystatechange=function()
  		{
  			if(chk.readyState==4)
  			{
  				//alert(chk.responseText);
  				if(chk.responseText==1)
  				{
  					document.getElementById("uc").innerText="사용 불가능한 아이디";
  					document.getElementById("uc").style.color="red";
  					uchk=1;
  				}
  				else
  				{
  					document.all.uc.innerText="사용 가능한 아이디";
  					document.getElementById("uc").style.color="blue";
  					uchk=0;
  				}
  			}
  		}
  	}
 	
  	function nickname_check(member_nickname)
  	{
  		var chk=new XMLHttpRequest();
  		chk.open("get","nickname_check?member_nickname="+member_nickname); // nickname_check?nickname=hong
  		chk.send();
  		
  		chk.onreadystatechange=function()
  		{
  			if(chk.readyState==4)
  			{
  				//alert(chk.responseText);
  				if(chk.responseText==1)
  				{
  					document.getElementById("nc").innerText="사용 불가능한 닉네임";
  					document.getElementById("nc").style.color="red";
  					nchk=1;
  				}
  				else
  				{
  					document.all.uc.innerText="사용 가능한 닉네임";
  					document.getElementById("nc").style.color="blue";
  					nchk=0;
  				}
  			}
  		}
  	}
  	
  	function pwd_check(my)
  	{
  	  if(my.member_pwd2.value.length>0)  //2번째 비밀번호가 비어있지 않을때
  	  {
  		if(my.member_pwd.value==my.member_pwd2.value)
  		{
  			document.getElementById("pc").innerText="비밀번호가 일치합니다";
			document.getElementById("pc").style.color="blue";
			pchk=0;
  		}
  		else
  		{
  			document.getElementById("pc").innerText="비밀번호가 일치하지 않습니다";
			document.getElementById("pc").style.color="red";
			pchk=1;
  		}
  	 }
  	}
 	
 	function send(my) // submit 버튼을 클릭하면
  	{
  		if(uchk==1)
  		{
  			alert("아이디 중복체크가 안되었거나 사용불가능 아이디입니다");
  			return false;
  		}
  		else if(pchk==1)
  			{
  				alert("비밀번호가 일치하지 않습니다")
  				return false;
  			}
  			else if(nchk==1)
  				{
  					alert("닉네임 중복체크가 안되었거나 사용불가능 닉네임입니다")
  					return false;
  				}
  			else
  				{
  					return true;
  				}
  	}
  </script>
</head>
<body>
 <div id="section">
  <form method="post" action="member_input_ok" onsubmit="return send(this)">
   <table width="500" align="center">
     <tr>
       <td> <input type="text" name="member_userid" placeholder="아이디" onblur="userid_check(this.value)">
       <br> <span id="uc"></span>
       </td>
     </tr>
     <tr>
       <td> <input type="text" name="member_name" placeholder="이름"> </td>
     </tr>
     <tr>
       <td> <input type="password" name="member_pwd" placeholder="비밀번호" onkeyup="pwd_check(this.form)"> </td>
     </tr>
     <tr>
       <td> <input type="password" name="member_pwd2" placeholder="비밀번호확인" onkeyup="pwd_check(this.form)">
       <br> <span id="pc"></span>
       </td>
     </tr>
     <tr>
       <td> <input type="text" name="member_nickname" placeholder="닉네임" onblur="userid_check(this.value)">
       <br> <span id="nc"></span>
       </td>
     <tr>
       <td>
			남<input type="radio" name="member_gender" value="남">
			여<input type="radio" name="member_gender" value="여">
       </td>
     </tr>
     <tr>
       <td> <input type="text" name="member_birthday" placeholder="20001231"> </td>
     </tr>
     <tr>
       <td> <input type="text" name="member_email" placeholder="이메일"> </td>
     </tr>
     <tr>
       <td> <input type="text" name="member_phone" placeholder="전화번호"> </td>
     </tr>
     <tr>
       <td> <input type="submit" value="회원가입"> </td>
     </tr>
   </table>
  </form>
 </div>
</body>
</html>