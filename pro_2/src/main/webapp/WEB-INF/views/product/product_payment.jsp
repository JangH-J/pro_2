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

<form method="post" action="product_payment_done">
<input type="hidden" name="single_revenge" value="${single_revenge}">
<input type="hidden" name="buy_userid" value="${mvo.member_userid}">
<input type="hidden" name="buy_ordernum" value="${today*1000000+pvo.product_id+member_id+time}">
<table>
<caption>주문번호  ${today*1000000+pvo.product_id+member_id+time}</caption>
	<tr>
		<td>
			<div>
			주문자명 : ${mvo.member_name} |			
			<input type="text" name="buy_order_phone" value="${mvo.member_phone}"></div>
			<div>이메일주소 : ${mvo.member_email}</div>
		</td>
	</tr>
	<tr>
		<td>
			<div>
				<div>
				수령인명 : <input type="text" name="buy_recipient_name" value="${mvo.member_name}">
				| <input type="text" name="buy_recipient_phone" value="${mvo.member_phone}"></div>
				<div> 주소 : <input type="text" name="buy_recipient_address" size="30"></div>
			</div>
		</td>
	</tr>
	
	<c:if test="${single_revenge==0}">
		<input type="hidden" name="product_id" value="${pvo.product_id}">
		<input type="hidden" name="cart_id" value="${cvo.cart_id}">
	
		<tr>
			<td>
				제품명 ${cvo.cart_name} / 수량 : ${cvo.cart_count}
			</td> 
		</tr>
	<%-- </c:forEach> --%>
				<tr>
					<td>
						<img src="/resources/img/${img.product_img}"><!-- 판매상품 이미지 구현 고민중 -->
					</td>
				</tr>
	<%-- <c:forEach items="${c_buy_list}" var="cvo">		 --%>	
				<tr>
					<td>
						<div>
							<b>${cvo.cart_name}</b>
							<input type="hidden" name="buy_name">
						</div>
						<div>
							<span class="total_price">
								${cvo.cart_price}
							</span>
							<span>
								${cvo.cart_count}
								<input type="hidden" name="buy_count" value="${cvo.cart_count}">
							</span>
						</div>
						<c:if test="${cvo.cart_size0!=null}">
							사이즈 : ${cvo.cart_size0}
							<
						</c:if>
						<c:if test="${cvo.cart_size1!=null}">
						 	, ${cvo.cart_size1} 
						</c:if>
						<c:if test="${cvo.cart_throw!=null}">
							<c:if test="${cvo.cart_throw==0}">
							/ 좌투용
							</c:if>
							<c:if test="${cvo.cart_throw==1}">
							/ 우투용
							</c:if>
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
	</c:if>
	<c:if test="${single_revenge==1}">
	<input type="hidden" name="buy_group">
		<c:forEach items="${cvolist}" var="cvo">
		<tr>
			<td>
				제품명 ${cvo.cart_name} / 수량 : ${cvo.cart_count}
			</td> 
		</tr>
	<%-- </c:forEach> --%>
				<tr>
					<td>
						<img src="/resources/img/${img.product_img}"><!-- 판매상품 이미지 구현 고민중 -->
					</td>
				</tr>
	<%-- <c:forEach items="${c_buy_list}" var="cvo">		 --%>	
				<tr>
					<td>
						<div>
							<b>${cvo.cart_name}</b>
						</div>
						<div>
							<span class="total_price">
								${cvo.cart_price}
							</span>
							<span>${cvo.cart_count}</span>
						</div>
						<c:if test="${cvo.cart_size0!=null}">
							사이즈 : ${cvo.cart_size0}
							<
						</c:if>
						<c:if test="${cvo.cart_size1!=null}">
						 	, ${cvo.cart_size1} 
						</c:if>
						<c:if test="${cvo.cart_throw!=null}">
							<c:if test="${cvo.cart_throw==0}">
							/ 좌투용
							</c:if>
							<c:if test="${cvo.cart_throw==1}">
							/ 우투용
							</c:if>
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
		</c:forEach>
	</c:if>
	<tr>
		<td>
			
		</td>
	</tr>
	<tr>
		<td>
			<span id="id_output_total_price">
				<c:if test="${single_revenge==0}">
					<c:choose>
						<c:when test="${cvo.cart_price>=50000}">
							<fmt:formatNumber value="${cvo.cart_price}"/> 원
						</c:when>
						<c:otherwise>
							<fmt:formatNumber value="${cvo.cart_price}"/> 원 + 택배비 3000원
							총액 : <fmt:formatNumber value="${cvo.cart_price+3000}"/> 원
						</c:otherwise>
					</c:choose>
				</c:if>
				<c:if test="${single_revenge==1}">
					<%-- <c:choose>
						<c:when test="${cvo.cart_price>=50000}">
							<fmt:formatNumber value="${cvo.cart_price}"/> 원
						</c:when>
						<c:otherwise>
							<fmt:formatNumber value="${cvo.cart_price}원"/> + 택배비 3000원
							총액 : <fmt:formatNumber value="${cvo.cart_price+3000}"/> 원
						</c:otherwise> 
					</c:choose> --%>
				</c:if>			
			</span> 
		</td>
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
		<td><input type="submit" value="결제하기"></td>
	</tr>
</table>
</form>
</body>
</html>
