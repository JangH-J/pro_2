<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>야구야 상품 판매</title> 
<%-- <script src="<c:url value="/resources/product_js/product_list.js"/>"></script>
 --%><link href="<c:url value="/resources/product_css/product_list.css"/>" rel="stylesheet"/>
<script>

function product_glove_show(){
	 document.getElementsByClassName('glove_lists').style.visibility='visible';
	 document.getElementsByClassName("bat_lists").style.visibility='collapse';
	 document.getElementsByClassName("shoes_lists").style.visibility="collapse";
	 document.getElementsByClassName("uniform_lists").style.visibility="collapse";
	 document.getElementsByClassName("equipment_lists").style.visibility="collapse";
 }
 function product_bat_show(){
	 document.getElementsByClassName('glove_lists').style.visibility='collapse';
	 document.getElementsByClassName('bat_lists').style.visibility='visible';
	 document.getElementsByClassName('shoes_lists').style.visibility='collapse';
	 document.getElementsByClassName('uniform_lists').style.visibility='collapse';
	 document.getElementsByClassName('equipment_lists').style.visibility='collapse';
	 
 }
 function product_shoes_show(){
	 document.getElementsByClassName("glove_lists").style.visibility="collapse";
	 document.getElementsByClassName("bat_lists").style.visibility="collapse";
	 document.getElementsByClassName("shoes_lists").style.visibility="visible";
	 document.getElementsByClassName("uniform_lists").style.visibility="collapse";
	 document.getElementsByClassName("equipment_lists").style.visibility="collapse";
 }
 function product_uniform_show(){
	 document.getElementsByClassName("glove_lists").style.visibility="collapse";
	 document.getElementsByClassName("bat_lists").style.visibility="collapse";
	 document.getElementsByClassName("shoes_lists").style.visibility="hidden";
	 document.getElementsByClassName("uniform_lists").style.visibility="collapse";
	 document.getElementsByClassName("equipment_lists").style.visibility="collapse";
 }
 function product_equipment_show(){
	 document.getElementsByClassName("glove_lists").style.visibility="collapse";
	 document.getElementsByClassName("bat_lists").style.visibility="collapse";
	 document.getElementsByClassName("shoes_lists").style.visibility="collapse";
	 document.getElementsByClassName("uniform_lists").style.visibility="collapse";
	 document.getElementsByClassName("equipment_lists").style.visibility="visible";
 }
</script>
</head>
<body>
<div id="product_top_list">
	<ul>
		<li><input type="button" name="product_glove" id="product_glove" onclick="product_glove_show()" value="글러브"></li>
		<li><input type="button" name="product_bat" id="product_bat" onclick="product_bat_show()" value="배트"></li>
		<li><input type="button" name="product_shoes" id="product_shoes" onclick="product_shoes_show()" value="야구화"></li>
		<li><input type="button" name="product_uniform" id="product_uniform" onclick="product_uniform_show()" value="유니폼"></li>
		<li><input type="button" name="product_equipment" id="product_equipment" onclick="product_equipment_show()" value="야구용품"></li>
	</ul>
</div>
<table id="product_table_list">
<caption class="glove_lists">글러브</caption>
<caption class="bat_lists">배트</caption>
<caption class="shoes_lists">야구화</caption>
<caption class="uniform_lists">유니폼</caption>
<caption class="equipment_lists">야구용품</caption>
	<tr class="glove_lists">
		<c:forEach items="${product_list0}" var="product" >
			<td class="glove_lists">
				<table class="glove_lists">
					<tr >
						<td>${product.product_img}</td>
					</tr>
					<tr>
						<td>${product.product_name}</td>
					</tr>
					<tr>
						<td>${product.product_price}원</td>
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
	</tr>
	
	<tr class="bat_lists">
		<c:forEach items="${product_list1}" var="product" >
			<td class="bat_lists">
				<table class="bat_lists">
					<tr>
						<td>${product.product_img}</td>
					</tr>
					<tr>
						<td>${product.product_name}</td>
					</tr>
					<tr>
						<td>${product.product_price}원</td>
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
	</tr>

	<tr class="shoes_lists">
		<c:forEach items="${product_list2}" var="product">
			<td class="shoes_lists">
				<table class="shoes_lists">
					<tr>
						<td>${product.product_img}</td>
					</tr>
					<tr>
						<td>${product.product_name}</td>
					</tr>
					<tr>
						<td>${product.product_price}원</td>
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
	</tr>
	<tr class="uniform_lists">
		<c:forEach items="${product_list3}" var="product" >
			<td class="uniform_lists">
				<table class="uniform_lists">
					<tr>
						<td>${product.product_img}</td>
					</tr>
					<tr>
						<td>${product.product_name}</td>
					</tr>
					<tr>
						<td>${product.product_price}원</td>
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
	</tr>
	<tr class="equipment_lists">
		<c:forEach items="${product_list4}" var="product" >
			<td class="equipment_lists">
				<table class="equipment_lists">
					<tr>
						<td>${product.product_img}</td>
					</tr>
					<tr>
						<td>${product.product_name}</td>
					</tr>
					<tr>
						<td>${product.product_price}원</td>
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
	</tr>
	<tr class="equipment_lists">
		<c:forEach items="${product_list5}" var="product" >
			<td class="equipment_lists">
				<table class="equipment_lists">
					<tr>
						<td>${product.product_img}</td>
					</tr>
					<tr>
						<td>${product.product_name}</td>
					</tr>
					<tr>
						<td>${product.product_price}원</td>
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
	</tr>
	<tr class="equipment_lists">
		<c:forEach items="${product_list6}" var="product" >
			<td class="equipment_lists">
				<table class="equipment_lists">
					<tr>
						<td>${product.product_img}</td>
					</tr>
					<tr>
						<td>${product.product_name}</td>
					</tr>
					<tr>
						<td>${product.product_price}원</td>
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
	</tr>
</table>
</body>
</html>