<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>야구야 상품등록리스트</title> 
</head>

<body>
<table>
	<tr>
		<td>상품번호</td>
		<td>상품명</td>
		<td>상품가격</td>
		<td>구매자수</td>
		<td>상품조회수</td>
		<td>상품등록일</td>
	</tr>
	<c:forEach items="${product_manage_list}" var="pvo">
	<tr>
		<td>${pvo.product_id+10000}</td>
		<td>${pvo.product_name}</td>
		<td>${pvo.product_price}</td>
		<td>구매자수 미구현<%-- ${pvo.product_} --%></td>
		<td>${pvo.product_readnum}</td>
		<td>${pvo.product_writeday}</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>