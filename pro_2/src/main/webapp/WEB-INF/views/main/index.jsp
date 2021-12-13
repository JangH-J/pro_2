<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<c:url value='/resources/main_js/main_index.js'/>"></script>
<link href="<c:url value='/resources/main_css/main_index.css'/>" rel="stylesheet"/>
</head>
<body onload="moving_front_ad()">
<div id="show_front_ad">
</div>
<div id="front_ad">
<img src="resources/img/front_ad01.jpg" id="front_adimg01">
<img src="resources/img/front_ad02.jpg" id="front_adimg02">
<img src="resources/img/front_ad03.jpg" id="front_adimg03">
<img src="resources/img/front_ad04.jpg" id="front_adimg04">
</div>
<div>
최근 본 추천 상품	
</div>

</body>
</html>