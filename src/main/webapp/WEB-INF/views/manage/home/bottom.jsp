<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>bottom.jsp</title>
		<style>
			body{
				margin: 0;
				padding: 0;
			}
			#bottom{
				background: lightgrey;
			}
			#bottom_link_ul{
				margin: 0;
				padding: 0;
				text-align: center;
				padding-top: 10px;
			}
			li.bottom_index{
				list-style-type: none;
				display: inline;
				padding-left: 40px;
				padding-right: 40px;
			}
			#bottom_info{
				text-align: center;
				padding-bottom: 10px;
			}
			#bottom_info_container{
				width:100%;
				display: table;
				text-align: center;
				margin-left: 70px;
			}
			#contact, #bank, #notice, #quick{
				display: table-cell;
				text-align: left;
			}
		</style>
	</head>
	<body>
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
				</div>
			</div>
		</div>
	</body>
</html>