<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400&display=swap" rel="stylesheet">
 <style>
 
  body{
	font-family: 'Noto Sans KR', sans-serif;
	}
 #section {
    margin-height:100%;
	position:relative;
	padding-bottom:100px;/* footer height */
	width:1000px;
    height:420px;
	margin-top:60px;
	margin-left: auto;   
	margin-right: auto;   
	text-align:center;
   }
   #btn_join, #btn_cancle{
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
  					document.all.nc.innerText="사용 가능한 닉네임";
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
  				else if($("input:checkbox[name=agreement1]").is(":checked") == false)
  					{
  	        			alert("이용약관에 동의해주세요");
  	        			return false;
  					}
  					else if($("input:checkbox[name=agreement2]").is(":checked") == false)
						{
	        				alert("개인정보 취급방침에 동의해주세요");
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
  <form method="post" action="member_input_ok" onsubmit="return send(this)" align="center">
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
       <td> <input type="text" name="member_nickname" placeholder="닉네임" onblur="nickname_check(this.value)"> 
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
       <td> <input type="text" name="member_phone" placeholder="01012345678"> </td>
     </tr>
     </table>
    <div style="width:50%;float:left;">
    <table width="100">
     <span>이용 약관</span>
       <p> 
         <textarea id="text1" readonly> 이용약관 </textarea> <br/>
          <label for="agreement1">위 사항에 동의 합니다.</label>
           <input id="agreement1" type="checkbox" name="agreement1"/>  
       </p>
   </table>
   </div>
   <div style="width:50%;float:right;">
   <table width="100">
     <span>개인정보 취급방침</span>
       <p> 
         <textarea id="text1" readonly> 개인정보 방침 및 안내 </textarea> <br/>
         <label for="agreement2">위 사항에 동의 합니다.</label>
         <input id="agreement2" type="checkbox" name="agreement2"/>             
       </p>
   </table>
   </div>
     <br/>
     <table align="center">
     <tr>
       <td> <input type="submit" value="회원가입" id="btn_join"> <input type="button" onclick="location='/'" value="취소" id="btn_cancle"> </td>
     </tr>
   </table>
  </form>
 </div>
</body>
</html>