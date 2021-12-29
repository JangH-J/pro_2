<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style>
		#manage {
  		display: inline-block;
    	padding: 40px 50px 42px;
	    background: #E0E0E0;
	    border: 1px solid #ccc;
	    border-radius: 2px;
	    color: #555;
	    text-align: center;
	    line-height: 11px;
	    transition: background 0.3s;
	    vertical-align: middle;
    }
		</style>
	</head>
	<body>
		<table align="center" width="1000px">
			<tr>
				<td id="manage"><a href="member_manage">회원관리</a></td>
				<td id="manage"><a href="review_manage">후기관리</a></td>
			</tr>
			<tr>
				<td id="manage"><a href="product_manage">상품관리</a></td>
				<td id="manage"><a href="gongji_manage">공지사항관리</a></td>
			</tr>
		</table>
	</body>
</html>