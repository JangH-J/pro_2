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
   #form {
     margin-top:50px;
   }
   input[name=gongji_title] {
     width:500px;
     height:35px;
   }
   textarea {
     width:500px;
     height:200px;
   }

  td {
   cellspacing:20px;
  }
  	#gwrite {
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
 function check(){
	var title=document.getElementById("gongji_title").value;
	if(title=="")
	{
		alert("제목을 입력해주세요");	
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
  <div style="margin:42px auto; text-align: center;">
  	<h2><font color="#555555">공지사항</font></h2>
  <div id="section">
   <form method="post" action="gongji_write_ok" id="form" onsubmit="return check()">
    <table width="700" align="center" cellspacing="15">

      <tr align="center">
        <td> <input type="text" id="gongji_title" name="gongji_title" placeholder="제 목"> </td>
      </tr>
      <tr align="center">
        <td> <textarea cols="40" rows="5" name="gongji_content" placeholder="내 용"></textarea> </td>
      </tr> 
      <tr align="center">
        <td> <input type="submit" value="글쓰기" id="gwrite"> </td>
      </tr>
    </table>
   </form>
  </div>
</body>
</html>