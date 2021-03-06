<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>야구야 상품 주문완료</title>
<style>
#go_tomain{
  		display: inline-block;
    	padding: 10px 20px 12px;
	    background: #A0A0A0;
	    border: 1px solid #ccc;
	    border-radius: 2px;
	    color: #fff;
	    text-align: center;
	    line-height: 11px;
	    transition: background 0.3s;
	    vertical-align: middle;
}
</style>
</head>
<body>
<div style="margin:42px auto; text-align: center;">
<h1>감사합니다 주문이 완료되었습니다</h1>
	<c:if test="${single_revenge==0}">
	
		<table>
			<tr>
				<td>
					 제품 ${bvo.buy_name}이 주문 완료 되셨습니다	
				</td>
			</tr>
		</table>
	</c:if>
	<c:if test="${single_revenge==1}">
		<table>
			<c:forEach items="${bvolist}" var="bvo">
				<tr>
					<td>
							제품 ${bvo.buy_name} 주문이 완료 되셨습니다<!-- 장바구니로 주문한 복수의 제품 어떻게 출력할지 고민 -->
					</td>
				</tr>
			</c:forEach>	
		</table>
	</c:if>
	<tr>
      <td><a href="../main/index" id="go_tomain">메인으로</a></td>
    </tr>
</div>

</body>
</html>