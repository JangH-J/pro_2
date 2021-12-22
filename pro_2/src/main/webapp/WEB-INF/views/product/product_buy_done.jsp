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
	<c:if test="${single_revenge==0}">
		<table>
			<tr>
				<td>
					${mvo.member_name} 께서 주문하신 ${cvo.cart_name}의 주문이 완료 되셨습니다	
				</td>
			</tr>
		</table>
	</c:if>
	<c:if test="${single_revenge==1}">
		<table>
			<tr>
				<td>
					${mvo.member_name}께서 주문하신 ??????주문이 완료 되셨습니다<!-- 장바구니로 주문한 복수의 제품 어떻게 출력할지 고민 -->	
				</td>
			</tr>
		</table>
	</c:if>


</body>
</html>