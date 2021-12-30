<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
   #btn_cwrite{
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
	var userid=document.getElementById("custom_userid").value;
	var title=document.getElementById("custom_title").value;
	if(userid==""){
		alert("이름을 입력해주세요");
		return false;
	}
	else if(title=="")
	{
		alert("제목을 입력해주세요");	
		return false;
	}
	else
		{
			return true;
		}
}
function check2(){
	var title=document.getElementById("custom_title").value;
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
  	<h2><font color="#555555">문의하기</font></h2>
  </div>
  <div id="section">
    <c:if test="${member_userid == null}">
    <form method="post" action="custom_write_ok" onsubmit="return check()">
      <input type="hidden" name="custom_seq" value="0">
      <input type="hidden" name="custom_depth" value="0">
      <table width="600" align="center">
       
        <tr>
          <td> 이 름 </td>
          <td> <input type="text" id="custom_userid" name="custom_userid" size="50"> </td>
        </tr> 
        <tr>
          <td> 비밀번호</td>
          <td> <input type="password" name="custom_pwd" size="50"> </td>
        </tr>
       
        <tr>
          <td> 제 목 </td>
          <td> <input type="text" id="custom_title" name="custom_title" size="50"> </td>
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
    </c:if>
    <c:if test="${member_userid != null}">
    <form method="post" action="custom_write_ok" onsubmit="return check2()">
      <input type="hidden" name="custom_seq" value="0">
      <input type="hidden" name="custom_depth" value="0">
      <table width="600" align="center">
        <tr>
          <td> 제 목 </td>
          <td> <input type="text" id="custom_title" name="custom_title" size="50"> </td>
        </tr> 
        <tr>
          <td> 내용 </td>
          <td> <textarea cols="50"  rows="6" name="custom_content"></textarea> </td>
        </tr> 
        <tr>
          <td colspan="2" align="center"> <input type="submit" value="저장" id="btn_cwrite"> </td>
        </tr> 
      </table> 
    </form>
    </c:if>
  </div>
</body>
</html>