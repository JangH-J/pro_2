<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>야구야 회원리스트</title> 
</head>

<body>
<a href="member_manage">회원관리</a>
<table>
	<tr>
		<td>아이디</td>
		<td>이름</td>
		<td>닉네임</td>
		<td>성별</td>
		<td>생년월일</td>
		<td>이메일</td>
		<td>전화번호</td>
		<td>가입날짜</td>
	</tr>
	<c:forEach items="${member_manage_list}" var="mvo">
	<tr>
		<td>${mvo.member_userid}</td>
		<td>${mvo.member_name}</td>
		<td>${mvo.member_nickname}</td>
		<td>${mvo.member_gender}</td>
		<td>${mvo.member_birthday}</td>
		<td>${mvo.member_email}</td>
		<td>${mvo.member_phone}</td>
		<td>${mvo.member_writeday}</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>