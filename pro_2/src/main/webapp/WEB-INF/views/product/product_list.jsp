<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>야구야 상품 판매</title> 
 <script src="<c:url value="/resources/product_js/product_list.js"/>"></script>
<link href="<c:url value="/resources/product_css/product_list.css"/>" rel="stylesheet"/>
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
<table id="glove_lists">
	<c:set var="i" value="${1}"/>
		<tr>
		<c:forEach items="${product_list0}" var="product">
				<td>
					<table>
						<tr>
							<td>${product.product_id+10000}</td>
						</tr>				
						<tr>
							<td><a href="product_readnum?product_id=${product.product_id}">${product.product_img}</a></td>
						</tr>
						<tr>
							<td><a href="product_readnum?product_id=${product.product_id}">${product.product_name}</a></td>
						</tr>
						<tr>
							<td><fmt:formatNumber value="${product.product_price}"/>원</td>
						</tr>
						<tr>
							<td>
							소재 : ${product.product_material} 
							용도 : ${product.product_purpose}
							</td>
						</tr>
					</table> 	
				</td>
				<c:set var="i" value="${i+1}"/>
				<c:if test="${i==5}">
				<tr>
				</c:if>
			</c:forEach>
			</tr>
</table>
<table id="bat_lists">
	<tr>
		<c:forEach items="${product_list1}" var="product" >
			<td >
				<table>
					<tr>
						<td><a href="product_readnum?product_id=${product.product_id}">${product.product_img}</a></td>
					</tr>
					<tr>
						<td><a href="product_readnum?product_id=${product.product_id}">${product.product_name}</a></td>
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
<table id="shoes_lists">
	<tr>
		<c:forEach items="${product_list2}" var="product">
			<td>
				<table>
					<tr>
						<td>${product.product_id+10000}</td>
					</tr>
					<tr>
						<td><a href="product_readnum?product_id=${product.product_id}">${product.product_img}</a></td>
					</tr>
					<tr>
						<td><a href="product_readnum?product_id=${product.product_id}">${product.product_name}</a></td>
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
<table id="uniform_lists">
	<tr >
		<c:forEach items="${product_list3}" var="product" >
			<td>
				<table>
					<tr>
						<td>${product.product_id+10000}</td>
					</tr>
					<tr>
						<td><a href="product_readnum?product_id=${product.product_id}">${product.product_img}</a></td>
					</tr>
					<tr>
						<td><a href="product_readnum?product_id=${product.product_id}">${product.product_name}</a></td>
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
<table id="equipment_lists">
	<tr>
		<c:forEach items="${product_list4}" var="product" >
			<td>
				<table>
					<tr>
						<td>${product.product_id+10000}</td>
					</tr>
					<tr>
						<td><a href="product_readnum?product_id=${product.product_id}">${product.product_img}</a></td>
					</tr>
					<tr>
						<td><a href="product_readnum?product_id=${product.product_id}">${product.product_name}</a></td>
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
	<tr>
		<c:forEach items="${product_list5}" var="product" >
			<td>
				<table>
					<tr>
						<td>${product.product_id+10000}</td>
					</tr>
					<tr>
						<td>${product.product_id+10000}</a></td>
					</tr>
					<tr>
						<td><a href="product_readnum?product_id=${product.product_id}">${product.product_img}</a></td>
					</tr>
					<tr>
						<td><a href="product_readnum?product_id=${product.product_id}">${product.product_name}</a></td>
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
	<tr>
		<c:forEach items="${product_list6}" var="product" >
			<td>
				<table>
					<tr>
						<td>${product.product_id+10000}</td>
					</tr>
					<tr>
						<td>${product.product_id+10000}</a></td>
					</tr>
					<tr>
						<td><a href="product_readnum?product_id=${product.product_id}">${product.product_img}</a></td>
					</tr>
					<tr>
						<td><a href="product_readnum?product_id=${product.product_id}">${product.product_name}</a></td>
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