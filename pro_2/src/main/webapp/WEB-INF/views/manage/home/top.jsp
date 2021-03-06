<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>top.jsp</title>
		<style>
			body{
				margin: 0;
				padding: 0;
			}
			#top_top_wrapper{
				width: 100%;
				background: lightgrey;
				vertical-align: middle;
			}
			#top_top_left{
				width: 49%;
				text-align: left;
				display: inline-block;
			}
			#top_top_right{
				width: 49%;
				text-align: right;
				display: inline-block;
			}
			#top_middle{
				width: 100%;
				height: auto;
				text-align: center;
				vertical-align: middle;
				display: table;
			}
			#top_bottom{
				text-align: center;
				background: lightgrey;
				vertical-align: middle;
				padding: 10px 0;
			}
			#top_top_ul_left{
				height: 30px;
				margin: 0;
				margin-left: 20px;
				padding: 0;
				display: inline-block;
				vertical-align: middle;
			}
			#top_top_ul_right{
				height: 30px;
				margin: 0;
				padding: 0;
				display: inline-block;
				vertical-align: middle;
			}
			#top_bottom_ul1, #top_bottom_ul2, #top_bottom_ul3, #top_bottom_ul4{
				height: 30px;
				margin: 0;
				padding: 0;
				vertical-align: middle;
				display: inline;
			}
			#all_menu_detail, #recommended_menu_detail, #sale_menu_detail, #used_menu_detail{
				display:none;
			}
			#logo{
				width: 200px;
			}
			li.top_index{
				height: 30px;
				list-style-type: none;
				text-align: center;
				display: inline;
				vertical-align: middle;
				padding-left: 10px;
				padding-right: 10px;
			}
			li.top_menu{
				height: 30px;
				list-style-type: none;
				text-align: center;
				display: inline;
				vertical-align: middle;
				padding-left: 40px;
				padding-right: 40px;
			}
			#searchform{
				display: inline;
			}
			#logodiv, #searchdiv, #event_smalldiv{
				display: table-cell;
				vertical-align: middle;
			}
		</style>
		<script>
			function show_detail_all(){
				document.getElementById("all_menu_detail").style.display="block";
				document.getElementById("recommended_menu_detail").style.display="none";
				document.getElementById("sale_menu_detail").style.display="none";
				document.getElementById("used_menu_detail").style.display="none";
			}
			function show_detail_recommended(){
				document.getElementById("all_menu_detail").style.display="none";
				document.getElementById("recommended_menu_detail").style.display="block";
				document.getElementById("sale_menu_detail").style.display="none";
				document.getElementById("used_menu_detail").style.display="none";
			}
			function show_detail_sale(){
				document.getElementById("all_menu_detail").style.display="none";
				document.getElementById("recommended_menu_detail").style.display="none";
				document.getElementById("sale_menu_detail").style.display="block";
				document.getElementById("used_menu_detail").style.display="none";
			}
			function show_detail_used(){
				document.getElementById("all_menu_detail").style.display="none";
				document.getElementById("recommended_menu_detail").style.display="none";
				document.getElementById("sale_menu_detail").style.display="none";
				document.getElementById("used_menu_detail").style.display="block";
			}
			function hide_detail(){
				document.getElementById("all_menu_detail").style.display="none";
				document.getElementById("recommended_menu_detail").style.display="none";
				document.getElementById("sale_menu_detail").style.display="none";
				document.getElementById("used_menu_detail").style.display="none";
			}
		</script>
	</head>
	<body>
		<div id="top_top_wrapper">
			<div id="top_top_left">
				<ul id="top_top_ul_left">
					<li class="top_index"><a href="gongji_list">공지사항</a></li>
					<li class="top_index"><a href="consumer_center">고객센터</a></li>
					<li class="top_index"><a href="event">이벤트</a></li>
					<li class="top_index"><a href="review">후기</a></li>
				</ul>
			</div>
			<div id="top_top_right">
				<ul id="top_top_ul_right">
					<%-- <c:if test="로그인 안했다면"> --%>
						<li class="top_index"><a href="login">로그인</a></li>
						<li class="top_index"><a href="register">회원가입</a></li>
					<%-- </c:if>
					<c:if test="로그인 했다면"> --%>
						<li class="top_index"><a href="logout">로그아웃</a></li>
						<li class="top_index"><a href="mypage">마이페이지</a></li>
						<%-- <c:if test="관리자라면"> --%>
							<li class="top_index"><a href="manage_index">관리자 페이지</a></li>
						<%-- </c:if> --%>
					<%-- </c:if> --%>
				</ul>
			</div>
		</div>
		<div id="top_middle">
			<div id="logodiv">
				<a href="/self_project/"><img src="resources/img/yaguya_main.png" id="logo"></a>
			</div>
			<div id="searchdiv">
				<form method="post" action="product" id="searchform">
					<input type="text" name="search">
					<input type="submit" value="검색">
				</form>
			</div>
			<div id="event_smalldiv">
				<a href=""><img src="" id="event_small">이벤트 작게</a>
			</div>
		</div>
		<div id="top_bottom">
			<ul id="top_bottom_ul1">
				<li class="top_menu" onmouseover="show_detail_all()" onmouseout="hide_detail()">전체상품</li>
			</ul>
			<ul id="top_bottom_ul2">
				<li class="top_menu" onmouseover="show_detail_recommended()" onmouseout="hide_detail()">추천상품</li>
			</ul>
			<ul id="top_bottom_ul3">
				<li class="top_menu" onmouseover="show_detail_sale()" onmouseout="hide_detail()">특가할인</li>
			</ul>
			<ul id="top_bottom_ul4">
				<li class="top_menu" onmouseover="show_detail_used()" onmouseout="hide_detail()">중고장터
					<span id="all_menu_detail">
						<br>
						글러브<br>
						배트<br>
						신발<br>
						유니폼<br>
						기타1
					</span>
					<span id="recommended_menu_detail">
						<br>
						글러브<br>
						배트<br>
						신발<br>
						기타2
					</span>
					<span id="sale_menu_detail">
						<br>
						글러브<br>
						배트<br>
						신발<br>
						기타3
					</span>
					<span id="used_menu_detail">
						<br>
						글러브<br>
						배트<br>
						신발<br>
						기타4
					</span>
				</li>
			</ul>
		</div>
	</body>
</html>