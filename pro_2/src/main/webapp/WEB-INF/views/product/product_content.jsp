<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<form method="post" action="product_buy"> 
<input type="hidden" name="cart_ordernum" value="${today*1000000+pvo.product_id+member_id}">
<input type="hidden" name="cart_name" value="${pvo.product_name}">
<input type="hidden" name="cart_price" value="${pvo.product_price}">
<input type="hidden" name="cart_img" value="${pvo.product_img}">
<input type="hidden" name="cart_kinds" value="${pvo.product_kinds}">
<input type="hidden" name="cart_userid" value="${member_userid}">
<input type="hidden" name="cart_group" value="${cart_group+1}">

<table>
	<caption>상품번호${pvo.product_id+10000}</caption>
	<tr>
		<td>${pvo.product_img}</td>
		<td>
			<table>
				<tr>
					<td>${pvo.product_name}</td>
				</tr>
				<tr>
					<td>${pvo.product_price}</td>
				</tr>
					<c:if test="${pvo.product_kinds==0}">
						<tr>
							<td colspan="2">
								<input type="radio" name="cart_throw" value="좌투">
								<input type="radio" name="cart_throw" value="우투">
							</td>
						</tr>
					</c:if>
<%-- 					<c:if test="${pvo.상품소재존재유무}">
						<tr>
							<td>
								<select name="cart_material">
									<option></option>
								</select>
							</td>
						</tr>
					</c:if>
					<c:if test="${pvo.상품스타일존재유무}">
						<tr>
							<td>
								<select name="cart_style">
									<option></option>
								</select>
							</td>
						</tr>
					</c:if>
					<c:if test="${pvo.상품색상존재유무}">
						<tr>
							<td>
								<select name="cart_color">
									<option></option>
								</select>
							</td>
						</tr>
					</c:if>
					<c:if test="${pvo.상품용도존재유무}">	
						<tr>
							<td>
								<select name="cart_purpose">
									<option></option>
								</select>
							</td>
						</tr>
					</c:if>
					<tr>
						<td>
							<select name="cart_size">
								<option></option>
							</select>
						</td>
					</tr>
					<tr>
						<td>
							<select name="cart_count">
								<option></option>
								<option></option>
							</select>
						</td>
					</tr> --%>
				<tr>
					<td><input type="submit" value="바로구매"></td>
				</tr>
				<tr>
					<td><input type="button" onclick="cart_input_product()" value="장바구니 담기"></td><!-- product_content에 cart_input_product함수 만들고 해당의 모든 벨류를 담아서 cart에 담기 -->
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td>${pvo.product_detail}</td>
	</tr>
</table>
<div>${pvo.product_readnum}</div>
</form>
</body>
</html>