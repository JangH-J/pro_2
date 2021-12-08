<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>야구야 상품 판매</title>
<style>
	
</style>
<script>
	
</script>
</head>
<body>
<div id="product_top_list">
	<ul>
		<li><input type="button" name="product_glove" id="product_glove" onclick="product_glove()" value="글러브"></li>
		<li><input type="button" name="product_bat" id="product_bat" onclick="product_bat()" value="배트"></li>
		<li><input type="button" name="product_shoes" id="product_shoes" onclick="product_shoes()" value="야구화"></li>
		<li><input type="button" name="product_uniform" id="product_uniform" onclick="product_uniform()" value="유니폼"></li>
		<li><input type="button" name="product_equipment" id="product_equipment" onclick="product_equipment()" value="야구용품"></li>
	</ul>
</div>
<table id="product_table_list">
<caption>글러브</caption>
	<tr>
	<c:choose>
		<c:when test="${product_list==0}">
		</c:when>
		<c:when test="${product_list==1}">
		</c:when>
		<c:when test="${product_list==2}">
		</c:when>
		<c:when test="${product_list==3}">
		</c:when>
		<c:when test="${product_list==4}">
		</c:when>
		<c:when test="${product_list==5}">
		</c:when>
		<c:when test="${product_list==6}">
		</c:when>
<%-- 		<c:when test="${product_list==0}">
		</c:when>
		<c:when test="${product_list==1}">
		</c:when>
		<c:when test="${product_list==2}">
		</c:when>
		<c:when test="${product_list==3}">
		</c:when>
		<c:when test="${product_list==4}">
		</c:when>
		<c:when test="${product_list==5}">
		</c:when>
		<c:when test="${product_list==6}">
		</c:when> --%>
		<c:otherwise>
			잘못 된 경로입니다
		</c:otherwise>
			<c:forEach items="${product_list0+i}" var="product" >
			<td>
				<table>
					<tr>
						<td>${product.product_img}</td>
					</tr>
					<tr>
						<td>${product.product_productname}</td>
					</tr>
					<tr>
						<td>${product_glove.product_price}원</td>
					</tr>
					<tr>
						<td>
						소재 : ${product.product_material} 
						용도 : ${product.product_purpose}
						</td>
					</tr>
				</table> 	
			</td>
		</c:forEach>
	</c:choose>
	</tr>
</table>
</body>
</html>