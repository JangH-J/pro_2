<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="product_payment">

<table>
<caption>주문번호 : ${cvo.cart_ordernum}</caption>
	<tr>
		<td><input type="radio" name="all_select" onclick="all_select()"></td>
	</tr>
	<c:forEach items="${clist}" var="cvo">
	<tr>
		<td>
			<input type="radio" id="select" name="select">
			<input type="hidden" id="cart_id" name="cart_group" value="${cvo.cart_group}">
			<span><img></span><!-- 판매상품 이미지 구현 고민중 -->
			<span id="cart_name">${cvo.cart_name}</span>
			<span id="cart_count"> 
				<select id="cart_count_select" name="cart_count_select">
					<c:forEach begin="1" end="10" var="i">
						<c:if test="${cvo.cart_count-(10-i)>0}">
							<option>${cvo.cart_count-(10-i)}</option>
						</c:if>	
					</c:forEach>	
							<option>${cvo.cart_count}</option>
					<c:forEach begin="1" end="10" var="j"> 		
							<option>${cvo.cart_count+j}</option>
					</c:forEach>		
				</select>
			</span>
			<span>${cvo.cart_price}</span>
		</td>
	</tr>
	</c:forEach>
</table>
</form>
<%-- <div><b>${cvo.cart_name}</b></div>
			<div>
			<span>${cvo.cart_price}</span>
			<span>
				<select name="cart_count">
					<c:set var="num" value="11"/>
					<c:forEach begin="1" end="10" var="i">
						<c:if test="${cvo.cart_count-(num-i)>0}">
							<option>
								${cvo.cart_count-(num-i)}
							</option>
						</c:if>
					</c:forEach>
					<option>${cvo.cart_price}</option>
					<option>${cvo.cart_price}</option>
					<option>${cvo.cart_price}</option>
				</select>
			</span></div>
			
			<c:if test="${cvo.}">
			${cvo.cart_style0}
			</c:if> --%>
</body>
</html>