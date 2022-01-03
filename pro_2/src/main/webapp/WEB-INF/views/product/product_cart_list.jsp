<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>야구야 장바구니</title>
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
function cart_count_select(count,id,price,index_num){	
	document.getElementById("cart_price")[index_num].value=price*count;
	document.getElementById("product_price_div").innerText=add_comma(price*count)+"원";
	location.href="product_cart_modify?cart_count="+count+"&cart_price"+price+"&cart_id"+id
}
function add_comma(val){
	   return new Intl.NumberFormat().format(val);
}
function cart_all_checked(){
		<c:set var="i" value="0"/>
		<c:forEach items="${clist}" var="cvo">
			var cart_id=document.getElementsByClassName("cart_id")[${i}].value;
			location.href="cart_all_checked?cart_id="+cart_id;
		<c:set var="i" value="${i+1}"/>
		</c:forEach>
}
function cart_all_unchecked(){
		<c:set var="i" value="0"/>
		<c:forEach items="${clist}" var="cvo">
			var cart_id=document.getElementsByClassName("cart_id")[${i}].value;
			location.href="cart_all_unchecked?cart_id="+cart_id;
		<c:set var="i" value="${i+1}"/>
		</c:forEach>
}
function cart_checked(id){
	location.href="product_cart_checked?cart_id="+id;
}
function cart_unchecked(id){
	location.href="product_cart_unchecked?cart_id="+id;	
}
</script>
<script src="/resources/product_js/product_cart_list.js"></script>
<link href="/resources/product_css/product_cart_list.css" rel="stylesheet">
</head>
<body onload="load_information()">
<form method="post" action="product_payment">
<input type="hidden" name="single_revenge" value="1">
<table>
<caption>장바구니</caption>
<c:set var="i" value="0"/>
	<c:forEach items="${clist}" var="cvo">
	<input type="hidden" name="cart_price" class="cart_price"  value="${cvo.cart_price}">
	<input type="hidden" name="cart_userid"   value="${cvo.cart_userid}">
	<input type="hidden" name="cart_id" class="cart_id"   value="${cvo.cart_id}">
	<tr>
		<td>
			<c:if test="${cvo.cart_checked==0}">
				<input type="checkbox" class="select" onclick="cart_checked(${cvo.cart_id})">
			</c:if>
			<c:if test="${cvo.cart_checked==1}">
				<input type="checkbox" class="select" onclick="cart_unchecked(${cvo.cart_id})" checked>
			</c:if>
				<span><img></span><!-- 판매상품 이미지 구현 고민중 -->
					<span class="cart_name">${cvo.cart_name}</span>
					<select name="cart_count" onchange="cart_count_select(this.value,${cvo.cart_id},${cvo.cart_price/cvo.cart_count},${i})">
						<c:forEach begin="1" end="9" var="i">
							<c:if test="${cvo.cart_count-(10-i)>=1}">
								<option value="${cvo.cart_count-(10-i)}">${cvo.cart_count-(10-i)}</option>
							</c:if>
						</c:forEach>
							<option value="${cvo.cart_count}" selected>${cvo.cart_count} </option>
						<c:forEach begin="1" end="10" var="i">
							<c:if test="${cvo.cart_count+i<=10}">
								<option value="${cvo.cart_count+i}">${cvo.cart_count+i}</option>	
							</c:if>
						</c:forEach>
					</select>
			<span class="cart_price_span"><fmt:formatNumber value="${cvo.cart_price}"/>원</span>
		</td>
		<td>
				<c:if test="${cvo.cart_size0!=null}">
					사이즈 : ${cvo.cart_size0}
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
<c:set var="i" value="${i+1}"/>
	</c:forEach>
	<tr>
		<td>
			<div id="sell_count_div"></div>
			<input type="submit" onclick="select_cart_check()" value="구매">
		</td>
	</tr>
</table>
</form>
</body>
</html>