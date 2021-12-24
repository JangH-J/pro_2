<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function all_select(){
	 var chk=document.getElementById("input_all_select").checked;
	 if(chk==true){
		<c:set var="i" value="0"/>
		<c:forEach items="${clist}" var="cvo">
			document.getElementsByClassName("select")[${i}].checked=true;
		<c:set var="i" value="${i+1}"/>
		</c:forEach>
	 }else if(chk==false){
			<c:set var="i" value="0"/>
			<c:forEach items="${clist}" var="cvo">
				document.getElementsByClassName("select")[${i}].checked=false;
			<c:set var="i" value="${i+1}"/>
			</c:forEach>
	 }
}
function cart_count_input(){
	<c:set var="i" value="0"/>
		<c:forEach items="${clist}" var="cvo">
			var price0=document.getElementsByClassName("price_divide")[${i}].value;
			var num=parseInt(document.getElementsByClassName("cart_count_select")[${i}].value);
			document.getElementsByClassName("cart_price")[${i}].value=price0*num;
			document.getElementsByClassName("cart_price_span")[${i}].innerText=add_comma(price0*num)+"원";
		<c:set var="i" value="${i+1}"/>
		</c:forEach>
}
function add_comma(val){
	return new Intl.NumberFormat().format(val);
}
function select_cart_check(){
	<c:set var="i" value="0"/>
		<c:forEach items="${clist}" var="cvo">
			if(document.getElementsByClassName("select")[${i}].checked==true){
				location.href="product_payment?cart_id"
			}
		<c:set var="i" value="${i+1}"/>
		</c:forEach>
}
</script>
<script src="/resources/product_js/product_cart_list.js"></script>
<link href="/resources/product_css/product_cart_list.css" rel="stylesheet">
</head>
<body>
<form method="post" id="product_cart_list_form" action="product_payment">
<table id="cart_list_table">
<caption>주문번호 : ${cvo.cart_ordernum}</caption>
	<tr>
		<td colspan="2"><input type="checkbox" id="input_all_select" onclick="all_select()"></td>
	</tr>
	<c:set var="cart_group" value="0"/>
	<c:forEach items="${clist}" var="cvo">
		<input type="hidden" class="price_divide" name="price_divide" value="${cvo.cart_price/cvo.cart_count}">
		<input type="hidden" class="cart_price" name="cart_price" value="${cvo.cart_price}">
		<input type="hidden" class="cart_id" name="cart_id" value="${cvo.cart_id}">
		<input type="hidden" class="cart_group" name="cart_group" value="${cart_group+1}">
			<tr>
				<td>
					<input type="checkbox" class="select">
						<span><img></span><!-- 판매상품 이미지 구현 고민중 -->
							<span class="cart_name">${cvo.cart_name}</span>
								<span class="cart_count"> 
									<select class="cart_count_select" name="cart_count_select" onchange="cart_count_input()">
										<c:forEach begin="1" end="10" var="i">
											<c:if test="${cvo.cart_count-(10-i)>1}">
												<option>${cvo.cart_count-(10-i)}</option>
											</c:if>	
										</c:forEach>	
												<option>${cvo.cart_count}</option>
										<c:forEach begin="1" end="9" var="j"> 		
												<option>${cvo.cart_count+j}</option>
										</c:forEach>		
									</select>
							</span>
					<span class="cart_price_span"><fmt:formatNumber value="${cvo.cart_price}"/>원</span>
				</td>
				<td>
						<c:if test="${cvo.cart_size0!=null}">
							사이즈 : ${cvo.cart_size0}
						</c:if>
						<c:if test="${cvo.cart_size1!=null}">
						 	, ${cvo.cart_size1} 
						</c:if>
						<c:if test="${cvo.cart_throw=null}">
							/ 좌투&우투 : ${cvo.cart_throw} 
						</c:if>
						<c:if test="${cvo.cart_material!=null}">
							/ 소재 : ${cvo.cart_material} 
						</c:if>
						<c:if test="${cvo.cart_style0!=null}">
							/ 스타일 : ${cvo.cart_style0} 
						</c:if>
						<c:if test="${cvo.cart_style1!=null}">
							, ${cvo.cart_style1} 
						</c:if>
						<c:if test="${cvo.cart_color0!=null}">
							/ 색상 : ${cvo.cart_color0} 
						</c:if>
						<c:if test="${cvo.cart_color1!=null}">
							, ${cvo.cart_color1} 
						</c:if>
						<c:if test="${cvo.cart_purpose!=null}">
							/ 용도 : ${cvo.cart_purpose}
						</c:if>
					</td>
				<td>
					<input type="button" onclick="location.href='/product/product_cart_delete?cart_id=${cvo.cart_id}'" value="삭제"> 
				</td>
			</tr>
	</c:forEach>
			<tr>
				<td>
					<input type="button" onclick="select_cart_check()" value="전체구매">
				</td>
			</tr>
</table>
</form>
</body>
</html>