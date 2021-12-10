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
   input[type=text] {
     width:500px;
     height:35px;
     border:1px solid #6799FF;
     font-size:17px;
 
   }
   textarea {
     width:500px;
     height:200px;
     border:1px solid #6799FF;
     font-size:17px;
 
   }
   input[type=submit]
   {
     width:506px;
     height:42px;
     border:1px solid #6799FF;
     font-size:17px;
     background:#6799FF;
     color:white;
   }
  td {
   cellspacing:20px;
  }
 </style>
</head>
<body>
  <div id="section">
   <form method="post" action="gongji_write_ok" id="form">
    <table width="700" align="center" cellspacing="15">
      <caption> <h3> 공지사항 글쓰기 </h3></caption>
      <tr align="center">
        <td> <input type="text" name="title" placeholder="제 목"> </td>
      </tr>
      <tr align="center">
        <td> <textarea cols="40" rows="5" name="content" placeholder="내 용"></textarea> </td>
      </tr> 
      <tr align="center">
        <td> <input type="submit" value="글쓰기"> </td>
      </tr>
    </table>
   </form>
  </div>
</body>
</html>