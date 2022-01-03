<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>야구야 상품 판매</title> 
<script src="/resources/product_js/product_list.js"></script>
<link href="/resources/product_css/product_list.css" rel="stylesheet"/>
</head>
<body>
<div id="product_list" align="center">
<div id="product_top_list">
	<ul>
		<li>
		<input type="button" class="btn" name="product_glove" id="product_glove" onclick="product_glove_show()" value="글러브">
		<input type="button" class="btn" name="product_bat" id="product_bat" onclick="product_bat_show()" value="배트">
		<input type="button" class="btn" name="product_shoes" id="product_shoes" onclick="product_shoes_show()" value="야구화">
		<input type="button" class="btn" name="product_uniform" id="product_uniform" onclick="product_uniform_show()" value="유니폼">
		<input type="button" class="btn" name="product_equipment" id="product_equipment" onclick="product_equipment_show()" value="야구용품">
		</li>
	</ul>
</div>
<c:set var="i" value="0"/>
<div id="glove_lists"  align="center">
<table >
<caption>글러브</caption>
		<tr>
		<c:forEach items="${product_list0}" var="product">
			<td>
				<table class="inner_table">
					<tr>
						<td><a href="product_readnum?product_id=${product.product_id}"><img src="../resources/img/glove.jpg" width="300px" class="img"></a></td>
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
		<c:if test="${i%5==0}">
			</tr>
			<tr>	
		</c:if>
	</c:forEach>
	</tr>
</table>
</div>
<c:set var="j" value="0"/>
<div  id="bat_lists" align="center">
<table align="center">
<caption>배트</caption>
		<tr>
		<c:forEach items="${product_list1}" var="product">
			<td>
				<table class="inner_table">			
					<tr>
						<td><a href="product_readnum?product_id=${product.product_id}"><img src="../resources/img/bat.jpg" width="300px" class="img"></a></td>
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
		<c:set var="j" value="${j+1}"/>
		<c:if test="${j%5==0}">
			</tr>
			<tr>	
		</c:if>
	</c:forEach>
	</tr>
</table>
</div>
<c:set var="k" value="0"/>
<div  id="shoes_lists" align="center">
<table align="center">
<caption>야구화</caption>
		<tr>
		<c:forEach items="${product_list2}" var="product">
			<td>		
				<table class="inner_table">	
					<tr>
						<td><a href="product_readnum?product_id=${product.product_id}"><img src="../resources/img/shoes.jpg" width="300px" class="img"></a></td>
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
		<c:set var="k" value="${k+1}"/>
		<c:if test="${k%5==0}">
			</tr>
			<tr>	
		</c:if>
	</c:forEach>
	</tr>
</table>
</div>
<c:set var="l" value="0"/>
<div id="uniform_lists"  align="center">
<table align="center">
<caption>유니폼</caption>
		<tr>
		<c:forEach items="${product_list3}" var="product">
			<td>
				<table class="inner_table">			
					<tr>
						<td><a href="product_readnum?product_id=${product.product_id}"><img src="../resources/img/uniform.jpg" width="300px" class="img"></a></td>
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
		<c:set var="l" value="${l+1}"/>
		<c:if test="${l%5==0}">
			</tr>
			<tr>	
		</c:if>
	</c:forEach>
	</tr>
</table>
</div>
<c:set var="m" value="0"/>
<div  id="equipment_lists" align="center">
<table>
<caption>보호대</caption>
	<tr>
		<c:forEach items="${product_list4}" var="product">
			<td>
				<table class="inner_table">			
					<tr>
						<td><a href="product_readnum?product_id=${product.product_id}"><img src="../resources/img/guard.jpg" width="300px" class="img"></a></td>
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
		<c:set var="m" value="${m+1}"/>
			<c:if test="${m%5==0}">
				</tr>
				<tr>	
			</c:if>
		</c:forEach>
		</tr>
</table>
<table>
<caption>송진백</caption>
		<c:set var="n" value="0"/>
		<tr>
		<c:forEach items="${product_list5}" var="product">
			<td>
				<table class="inner_table">			
					<tr>
						<td><a href="product_readnum?product_id=${product.product_id}"><img src="../resources/img/loginbag.jpg" width="300px" class="img"></a></td>
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
		<c:set var="n" value="${n+1}"/>
		<c:if test="${n%5==0}">
			</tr>
			<tr> 
		</c:if>
	</c:forEach>
	</tr>
</table>
<table>
<caption>가죽크림</caption>
	<c:set var="o" value="0"/>
	<tr>
	<c:forEach items="${product_list6}" var="product">
			<td>
				<table>			
					<tr>
						<td><a href="product_readnum?product_id=${product.product_id}"><img src="../resources/img/leathercream.jpg" width="300px" class="img"></a></td>
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
		<c:set var="o" value="${o+1}"/>
		<c:if test="${o%5==0}">
			</tr>
			<tr>	
		</c:if>
	</c:forEach>
	</tr>
</table>
<table>
<caption>볼</caption>
	<c:set var="p" value="0"/>
			<tr>
		<c:forEach items="${product_list7}" var="product">
			<td>
				<table>				
					<tr>
						<td><a href="product_readnum?product_id=${product.product_id}"><img src="../resources/img/ball.jpg" width="300px" class="img"></a></td>
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
		<c:set var="p" value="${p+1}"/>
		<c:if test="${p%5==0}">
			</tr>
			<tr>	
		</c:if>
	</c:forEach>
	</tr>
</table>
</div>
</div>
</body>
</html>