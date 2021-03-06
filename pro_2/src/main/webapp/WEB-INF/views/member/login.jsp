<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   #userid_search,#pwd_search {
     display:none;
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
	margin-bottom: auto;
	text-align:center;
   }
   #login,#join,#btn_findid,#btn_findpwd{
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
   #find_id, #find_pwd{
   	font-weight:300;
   	font-size:13px;
   } 
 </style>
<script>
 function view_us()
 {
	  document.getElementById("pwd_search").style.display="none";
	  document.pwd_search.userid.value="";
	  document.pwd_search.name.value="";
	  document.pwd_search.email.value="";
	  document.getElementById("userid_search").style.display="block";
 }
 function view_ps() // 비밀번호 찾기 창 보이기
 {
	  document.getElementById("userid_search").style.display="none"; // 아이디 찾기 숨기기 
	  document.userid_search.name.value="";
	  document.userid_search.email.value="";
	  document.getElementById("pwd_search").style.display="block";
 }
 
 function userid_search_fn() // 이름,이메일을 가지고 서버에가서 아이디를 찾아 오기
 {
	  var name=document.userid_search.name.value;
	  var email=document.userid_search.email.value;
	  var us=new XMLHttpRequest();
	  us.open("get","userid_search_ok?name="+name+"&email="+email);
	  us.send();
	  us.onreadystatechange=function()
	  {
		  if(us.readyState==4)
		  {
		     if(us.responseText==0)
		     {
		    	 alert("이름 혹은 이메일이 틀립니다.");
		     }	 
		     else
		     {   
		    	 alert();
		    	 var imsi=us.responseText.trim();
		    	 document.getElementById("uid").innerText="당신의 아이디는 "+imsi+" 입니다";
		     }
		  }
	  }
 }
 
 function pwd_search_fn() // 이름,이메일을 가지고 서버에가서 아이디를 찾아 오기
 {
	  var userid=document.pwd_search.userid.value;
	  var name=document.pwd_search.name.value;
	  var email=document.pwd_search.email.value;
	  var ps=new XMLHttpRequest();
	  ps.open("get","pwd_search_ok?member_userid="+userid+"&member_name="+name+"&member_email="+email);
	  ps.send();
	  ps.onreadystatechange=function()
	  {
		  if(ps.readyState==4)
		  { 
		     if(ps.responseText==0)
		     {
		    	 alert("아이디,이름 혹은 이메일이 틀립니다.");
		     }	 
		     else // 성공했을때
		     {   
		    	 document.getElementById("pwd_search").style.display="none";
		    	 alert("이메일로 비밀번호를 전송하였습니다");
		     }
		  }
	  }
 }
 </script>
</head>
<body>
  <div id="section">
    <form method="post" action="login_ok">
      <table width="400" align="center">
       <caption> <h3> 로그인</h3></caption>
        <tr>
          <td> <input type="text" name="member_userid" placeholder="아이디"> </td>
        </tr>
        <tr>
          <td> <input type="password" name="member_pwd" placeholder="비밀번호"> </td>
        </tr>
        <tr>
          <td> <input type="submit" value="로그인" id="login"> 
          <input type="button" onclick="location='/member/member_input'" value="회원가입" id="join"> </td>
        </tr> 
      </table>
    </form>
     <div align="center" > 
       <span onclick="view_us()" id="find_id"> 아이디 찾기 ┃</span>      
       <span onclick="view_ps()" id="find_pwd"> 비밀번호 찾기 </span>
    </div>
    <form name="userid_search" id="userid_search">
      <table width="400" align="center">
       <caption> <h4 id="uid"></h4></caption>
       <tr>
         <td> <input type="text" name="name" placeholder="이름"> </td>
       </tr>
       <tr>
         <td> <input type="text" name="email" placeholder="이메일"> </td>
       </tr>
       <tr>
         <td> <input type="button" value="아이디찾기" onclick="userid_search_fn()" id="btn_findid"> </td>
         
       </tr>
     </table>
    </form>
    <form name="pwd_search"  id="pwd_search">
     <table width="400" align="center">
     <caption> <h4 id="pid"></h4></caption>
       <tr>
         <td> <input type="text" name="userid" placeholder="아이디"> </td>
       </tr>
       <tr>
         <td> <input type="text" name="name" placeholder="이름"> </td>
       </tr>
       <tr>
         <td> <input type="text" name="email" placeholder="이메일"> </td>
       </tr>
       <tr>
         <td> <input type="button" value="비밀번호찾기" onclick="pwd_search_fn()" id="btn_findpwd"> </td>
       </tr>
     </table>
    </form>
  </div>
  </div>
</body>
</html>