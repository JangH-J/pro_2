<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>야구야 상품 판매</title>

</head>
<body>
<div id="product_list">
	<ul>
		<li><input type="button" name="product_glove" id="product_glove" onclick="product_glove()" value="글러브"></li>
		<li><input type="button" name="product_bat" id="product_bat" onclick="product_bat()" value="배트"></li>
		<li><input type="button" name="product_shoes" id="product_shoes" onclick="product_shoes()" value="야구화"></li>
		<li><input type="button" name="product_uniform" id="product_uniform" onclick="product_uniform()" value="유니폼"></li>
		<li><input type="button" name="product_equipment" id="product_equipment" onclick="product_equipment()" value="야구용품"></li>
		
	</ul>
</div>
<table id="product_glove_list">
<caption>글러브</caption>
	<tr>
		<c:forEach items="${glove_list}" var="product_glove" >
		<td>
		<table>
			<tr>
				<td>${product_glove.product_glove_img}</td>
			</tr>
			<tr>
				<td>${product_glove.product_glove_productname}</td>
			</tr>
			<tr>
				<td>${product_glove.product_glove_price}</td>
			</tr>
			<tr>
				<td>
				소재 : ${product_glove.product_glove_material} / 
				스타일 : ${product_glove.product_glove_style} /
				용도 : ${product_glove.product_glove_purpose} 
				</td>
			</tr>
		</table> 	
		</td>
		</c:forEach>
	</tr>
</table>

</body>
</html>