<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="product_manage_regist_done">
<table>
	<tr>
		<td>상품이미지</td>
		<td><input type="file" name="product_img"></td>
	</tr>
	<tr>
		<td>상품명</td>
		<td><input type="text" name="product_name"></td>
	</tr>
	<tr>
		<td>종류(숫자만입력가능/0~6/글러브,배트,야구화,유니폼,보호대,송진백,가죽크림)</td>
		<td><input type="text" name="product_kinds"></td>
	</tr>
	<tr>
		<td>가격</td>
		<td><input type="text" name="product_price"></td>
	</tr>
	<tr>
		<td>사이즈</td>
		<td><input type="text" name="product_size"></td>
	</tr>   
	<tr>   
		<td>좌투/우투</td>
		<td><input type="text" name="product_throw"></td>
	</tr>   
	<tr>    
		<td>소재</td>
		<td><input type="text" name="product_material"></td>
	</tr> 
	<tr>   
		<td>유형</td>
		<td><input type="text" name="product_style"></td>
	</tr>   
	<tr>   
		<td>색상</td>
		<td><input type="text" name="product_color"></td>
	</tr>   
	<tr>   
		<td>용도</td>
		<td><input type="text" name="product_purpose"></td>
	</tr>   
	<tr>   
		<td><input type="submit" value="상품등록"></td>
	</tr>
</table>
</form>
</body>
</html>