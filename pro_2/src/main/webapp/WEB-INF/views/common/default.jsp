<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<c:url value='/resources/main_js/default.js'/>"></script>
<link href="<c:url value='/resources/main_css/default.css'/>" rel="stylesheet"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400&display=swap" rel="stylesheet">
<style>
	body{
	font-family: 'Noto Sans KR', sans-serif;
	}
</style>
</head>
<decorator:head/>
<body>
<div id="top_top_wrapper">
			<div id="top_top_right">
				<ul id="top_top_ul_right">
					<c:if test="${member_userid==null}">
						<li class="top_index"><a href="../member/login">로그인</a></li>
						<li class="top_index"><a href="../member/member_input">회원가입</a></li>
					</c:if>
					<c:if test="${member_userid!=null}">
						<li class="top_index"><a href="../product/product_cart_list">장바구니</a></li>
						<li class="top_index"><a href="../member/logout">로그아웃</a></li>
						<li class="top_index"><a href="../member/mypage">마이페이지</a></li>
						<c:if test="${member_userid=='admin'}">
							<li class="top_index"><a href="../manage_index">관리자 페이지</a></li>
						</c:if>
					</c:if>
				</ul>
			</div>
		</div>
		<div id="top_middle">
			<div id="logodiv">
				<a href="/"><img src="../resources/img/yaguya_main.png" id="logo"></a>
			</div>
			<div id="top_top_left">
				<ul id="top_top_ul_left">
					<li class="top_index"><b><a href="../gongji/gongji_list">공지사항</a></b></li>
					<li class="top_index"><b><a href="../product/product_list">상품구매</a></b></li>
					<li class="top_index"><b><a href="../review/list">후기</a></b></li>
					<li class="top_index"><b><a href="../custom/custom_list">고객센터</a></b></li>
				</ul>
			</div>
		</div>
</body>
<decorator:body/>
<div id="bottom">
			<div id="bottom_link">
				<ul id="bottom_link_ul">
					<li class="bottom_index">홈</li>
					<li class="bottom_index">팀 소개</li>
					<li class="bottom_index">이용 약관</li>
					<li class="bottom_index">개인정보취급방침</li>
					<li class="bottom_index">이용안내</li>
					<li class="bottom_index">광고/제휴 문의</li>
				</ul>
			</div>
			<div id="bottom_info">
				<div id="bottom_info_container">
					<div id="contact">
						<h3>CONTACT</h3>
						<a>전화번호</a><br>
						<a>오시는길</a><br>
						<a>Q&A</a><br>
						<a>카카오톡 상담하기</a>
					</div>
					<div id="bank">
						<h3>BANK INFO</h3>
						111111-22-333333<br>
						국민은행<br>
						예금주: B팀
					</div>
					<div id="notice">
						<h3>NOTICE</h3>
						<table align="left">
							<tr>
								<td>공지제목</td>
								<td>작성일</td>
							</tr>
						</table>
					</div>
					<div id="quick">
						<h3>QUICK MENU</h3>
						<a><img src="">마이페이지</a><br>
						<a><img src="">공지사항</a><br>
						<a><img src="">고객후기</a>
					</div>    
</html>