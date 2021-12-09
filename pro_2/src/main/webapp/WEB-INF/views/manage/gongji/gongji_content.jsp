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
     margin-top:40px;
   }
   table {
     padding-top:20px;
   }
   td {
     height:30px;
   }
</style>
</head>
<body>
  <div id="section">
    <table width="500" align="center">
      <caption> <h3> 공지사항 내용보기</h3></caption>
      <tr>
        <td> 제 목 </td>
        <td> ${gvo.title} </td>
      </tr>
      <tr>
        <td> 작성자 </td>
        <td> 관리자 </td>
      </tr>
      <tr>
        <td> 내 용 </td>
        <td> ${gvo.content} </td>
      </tr>
      <tr>
        <td> 조회수 </td>
        <td> ${gvo.readnum} </td>
      </tr>
      <tr>
        <td> 작성일 </td>
        <td> ${gvo.writeday} </td>
      </tr>
      <tr>
        <td colspan="2" align="center">
          <a href="../manage/gongji/gongji_list"> 목록 가기 </a>
        </td>
      </tr>
    </table>
  </div>
</body>
</html>