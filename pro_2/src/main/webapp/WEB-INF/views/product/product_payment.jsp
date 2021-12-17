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
<form>
<table>
<caption>주문번호  ${cvo.cart_ordernum}</caption>
	<tr>
		<td>
		주문자명 : ${mvo.member_name}
		이메일주소 : ${mvo.member_email}</td>
		<td>전화번호 : <input type="text" value="${mvo.member_phone}"><input type="button" onclick="phone_fixing()"></td>
	</tr>
	<tr>
		<td></td>
		
	</tr>
	<tr>
		<td>
			제품명 ${cvo.cart_name} / 수량 : ${cvo.cart_count}
		</td> 
	</tr>
	<span id="show_buy_product_detail">
		<tr>
			<td>
				<img src="resources/img/${pvo.product_img}">
			</td>
			<td>
				<div>
					<b>${cvo.cart_name}</b>
				</div>
				<div>
					<span>${cvo.cart_price}</span>
					<span>${cvo.cart_count}</span>
				</div>
				<c:if test="${cvo.cart_size0!=null}">
					사이즈 : ${cvo.cart_size0}
				</c:if>
				<c:if test="${cvo.cart_size1!=null}">
				 	, ${cvo.cart_size1} 
				</c:if>
				<c:if test="${cvo.cart_throw=null}">
					_좌투&우투 : ${cvo.cart_throw} 
				</c:if>
			
				<c:if test="${cvo.cart_material!=null}">
					_소재 : ${cvo.cart_material} 
				</c:if>
				<c:if test="${cvo.cart_style0!=null}">
					_스타일 : ${cvo.cart_style0} 
				</c:if>
				<c:if test="${cvo.cart_style1!=null}">
					, ${cvo.cart_style1} 
				</c:if>
				<c:if test="${cvo.cart_color0!=null}">
					_색상 : ${cvo.cart_color0} 
				</c:if>
				<c:if test="${cvo.cart_color1!=null}">
					, ${cvo.cart_color1} 
				</c:if>
				<c:if test="${cvo.cart_purpose!=null}">
					_용도 : ${cvo.cart_purpose}
				</c:if>
			</td>
		</tr>
	</span>
	<tr>
		<td></td>
	</tr>
	<tr>
		<td>
			<div>결제방법</div>
			<select name="payment_method" id="payment_method">
				<option>결제방법 선택</option>
				<option>카드결제</option><!-- 추후시간남으면 구현 -->
				<option>계좌이체</option><!-- 추후시간남으면 구현 -->
				<option>핸드폰결제</option><!-- 추후시간남으면 구현 -->
			</select>
		</td>
	</tr>
	<tr>
		<td><input type="button" onclick="" value="결제하기" ></td>
	</tr>
</table>
</form>
</body>
</html>
