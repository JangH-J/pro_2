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
	#rfile, #rsubmit, #rcancel {
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
function title_check(my){
	var title=document.getElementById("review_title").value;
	if(title==""){
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
  <div class="titleArea" style="margin:42px auto; text-align: center;">
  	<h2><font color="#555555">사용후기</font></h2>
  </div>
	<form enctype="multipart/form-data" method="post" action="write_ok" onsubmit="return title_check(this)">
	 <table width="800" align="center" margin="0 auto">
	 	<tr align="center">
	 	  <td>제목</td>
	 	  <td><input type="text" name="review_title" id="review_title" size="50"></td>
	 	</tr>
	  	<tr align="center">
	 	  <td>내용</td>
	 	  <td><textarea cols="60" rows="10" name="review_content"></textarea></td>
	 	</tr>
		<tr align="center">
		  <td>첨부파일</td>
		  <td><input type="file" name="review_filename"></td>
		</tr>
		<tr>
		 <td colspan="2" align="center">
		 <input type="button" value="목록"  onclick="location.href='list'" id="rfile">
		 <input type="submit" value="등록" id="rsubmit">
		 <input type="reset" value="취소" id="rcancel"></td>
		 <input type="hidden" name="review_name" value="${member_userid}">
		 </tr>
	  </table>
	</form>
</body>
</html> 