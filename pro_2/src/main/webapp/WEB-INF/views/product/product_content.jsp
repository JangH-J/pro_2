<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<c:url value="/resources/product_js/product_content.js"/>"></script>
<link href="<c:url value="/resources/product_css/product_content.css"/>" rel="styleshee">
</head>
<body>

<!--  -->
<form method="post" action="product_buy" > 
	<input type="hidden" name="cart_ordernum" value="${today*1000000+pvo.product_id+member_id}">
	<input type="hidden" name="cart_name" value="${pvo.product_name}">
	<input type="hidden" name="cart_price" value="${pvo.product_price}">
	<input type="hidden" name="cart_img" value="${pvo.product_img}">
	<input type="hidden" name="cart_kinds" value="${pvo.product_kinds}">
	<input type="hidden" name="cart_userid" value="${member_userid}">
	<input type="hidden" name="cart_group" value="${cart_group+1}">
<table>
	<caption>상품번호${pvo.product_id+10000}</caption>
	<tr>
		<td>${pvo.product_img}</td>
		<td>
			<table>
				<tr>
					<td>${pvo.product_name}</td>
				</tr>
				<tr>
					<td><fmt:formatNumber value="${pvo.product_price}"/></td>
				</tr>
<!-- 좌투/우투 상품종류 0-->	
					<c:if test="${pvo.product_kinds==0}">
						<tr>
							<td colspan="2">
								좌투<input type="radio" name="cart_throw0" value="0"><!-- 좌투 -->
								우투<input type="radio" name="cart_throw0" value="1"><!-- 우투 -->
							</td>
						</tr>
					</c:if>
<!-- 소재  상품종류 0,1,2,5,6-->				
					<c:if test="${pvo.product_kinds==0}">
						<tr>
							<td>
								<select name="cart_material_0">
									<option value="0">선택</option>								
									<option value="돈피">돈피</option>
									<option value="우피">우피</option>
									<option value="합성피혁">합성피혁</option>
								</select>
							</td>
						</tr>
					</c:if>
					<c:if test="${pvo.product_kinds==1}">
						<tr>
							<td>
								<select name="cart_material_1" onchange="select_color_formaterial(this)">
									<option value="0">선택</option>
									<option value="나무">나무</option>
									<option value="알루미늄">알루미늄</option>
									<option value="카본">카본</option>
								</select>
							</td>
						</tr>
					</c:if>
					<c:if test="${pvo.product_kinds==2}">
						<tr>
							<td>
								<select name="cart_material_2">
									<option value="0">선택</option>							
									<option value="소가죽">소가죽</option>
									<option value="합성섬유">합성섬유</option>
									<option value="합서피혁">합성피혁</option>
								</select>
							</td>
						</tr>
					</c:if>
					<c:if test="${pvo.product_kinds==5}">
						<tr>
							<td>
								<select name="cart_material_5">
									<option value="0">선택</option>								
									<option value="달걀껍질">달걀껍질</option>
									<option value="분말">분말</option>
									<option value="송진">송진</option>
								</select>
							</td>
						</tr>
					</c:if>
					<c:if test="${pvo.product_kinds==6}">
						<tr>
							<td>
								<select name="cart_material_6">
									<option value="0">선택</option>
									<option value="경화지방산">경화지방산</option>
									<option value="동물성지방">동물성지방</option>
									<option value="식물성유지">식물성유지</option>
								</select>
							</td>
						</tr>
					</c:if>
<!-- 유니폼(상의/하의) 상품종류 3 -->
					<c:if test="${pvo.product_kinds==3}">
						<tr>
							<td>
							<div onclick="select_shirt_pants(this)">
								상의<input type="radio" name="cart_style0" id="shirt" value="0">
								하의<input type="radio" name="cart_style1" id="pants" value="1">
							</div>
							</td>
						</tr>
					</c:if>
					
<!-- 색상 상품종류 0, 1, 2, 0_3, 1_3, 4-->
 					<c:if test="${pvo.product_kinds==0}">
						<tr>
							<td>
								<select name="cart_color0_0">
									<option value="0">선택</option>									
									<option value="갈색">갈색</option>
									<option value="적색">적색</option>
									<option value="주황색">주황색</option>
									<option value="황색">황색</option>
								</select>
							</td>
						</tr>
					</c:if>
				<div id="select_bat_color">
					<c:if test="${pvo.product_kinds==1}">
						<tr>
							<td>
								<select name="cart_color0_1">
									<option value="0">선택</option>								
									<option value="은색">은색</option>
									<option value="흑색">흑색</option>
								</select>
							</td>
						</tr>
					</c:if>
				</div>
					<c:if test="${pvo.product_kinds==2}">
						<tr>
							<td>
								<select name="cart_color0_2">
									<option value="0">선택</option>								
									<option value="백색">백색</option>
									<option value="연갈색">연갈색</option>
									<option value="적색">적색</option>
									<option value="흑색">흑색</option>
									<option value="흑백색">흑백색</option>
									<option value="흑적색">흑적색</option>
								</select>
							</td>
						</tr>
					</c:if>
					<c:if test="${pvo.product_kinds==3}">
						<tr>
							<td>
								<div class="select_shirt">
									상의색상<select name="cart_color0_3">
										<option value="0">선택</option>
										<option value="갈색">갈색</option>
										<option value="백적색">백적색</option>
										<option value="적색">적색</option>
										<option value="주황색">주황색</option>
										<option value="황색">황색</option>
										<option value="흑색">흑색</option>
										<option value="흑갈색">흑갈색</option>
										<option value="흑백색">흑백색</option>
										<option value="흑적색">흑적색</option>
										<option value="흑황색">흑황색</option>
									</select>
								</div>
								<div class="select_pants">
									하의색상<select name="cart_color1_3">
										<option value="0">선택</option>
										<option value="갈색">갈색</option>
										<option value="백적색">백적색</option>
										<option value="적색">적색</option>
										<option value="주황색">주황색</option>
										<option value="황색">황색</option>
										<option value="흑색">흑색</option>
										<option value="흑갈색">흑갈색</option>
										<option value="흑백색">흑백색</option>
										<option value="흑적색">흑적색</option>
										<option value="흑황색">흑황색</option>
									</select>
								</div>
							</td>
						</tr>
					</c:if>
					<c:if test="${pvo.product_kinds==4}">
						<input type="hidden" name="cart_color0_4" value="흑색">
					</c:if>
<!-- 용도 상품종류 0,1,2,3,4,5-->
					<c:if test="${pvo.product_kinds==0}">	
						<tr>
							<td>
								<select name="cart_purpose_0">
									<option value="0">선택</option>
									<option value="투수용">투수용(올라운드)</option>
									<option value="포수용">포수용</option>
									<option value="내야수용">내야수용</option>
									<option value="외야수용">외야수용</option>
									<option value="1루수용">1루수용</option>
								</select>
							</td>
						</tr>
					</c:if>
					<c:if test="${pvo.product_kinds==1}">	
						<tr>
							<td>
								<select name="cart_purpose_1">
									<option value="0">선택</option>
									<option value="밸런스">밸런스</option>
									<option value="미들밸런스">미들밸런스</option>
									<option value="미들밸런스">미들탑밸런스</option>
									<option value="탑밸런스">탑밸런스</option>
								</select>
							</td>
						</tr>
					</c:if>
					<c:if test="${pvo.product_kinds==2}">	
						<tr>
							<td>
								<select name="cart_purpose_2">
									<option value="0">선택</option>
									<option value="일체형">일체형</option>
									<option value="교체형">교체형</option>
									<option value="포인트화">포인트화</option>
									<option value="인조잔디화">인조잔디화</option>
									<option value="심판화">심판화</option>
								</select>
							</td>
						</tr>
					</c:if>
					<c:if test="${pvo.product_kinds==3}">	
						<tr>
							<td>
								<select name="cart_purpose_3">
									<option value="0">선택</option>
									<option value="동계용">동계용</option>
									<option value="하계용">하계용</option>
								</select>
							</td>
						</tr>
					</c:if>
					<c:if test="${pvo.product_kinds==4}">	
						<tr>
							<td>
								<select name="cart_purpose_4">
									<option value="0">선택</option>
									<option value="암가드">암가드</option>
									<option value="풋가드">풋가드</option>
								</select>
							</td>
						</tr>
					</c:if>
					<c:if test="${pvo.product_kinds==5}">	
						<tr>
							<td>
								<select name="cart_purpose_5">
									<option value="0">선택</option>
									<option value="타자용">타자용</option>
									<option value="투수용">투수용</option>
								</select>
							</td>
						</tr>
					</c:if>
<!-- 사이즈 상품종류 0, 1, 2, 3-->					
					<tr>
						<td>
							<c:if test="${pvo.product_kinds==0}">
								<select name="cart_size_0">
									<option value="0">선택</option>
									<option value="11.5">11.5인치</option>
									<option value="12">12인치</option>
									<option value="12.5">12.5인치</option>
									<option value="13">13인치</option>
								</select>
							</c:if>
							<c:if test="${pvo.product_kinds==1}">
								<select name="cart_size_1">
									<option value="0">선택</option>
									<option value="32">32인치</option>
									<option value="33">33인치</option>
									<option value="34">34인치</option>
								</select>
							</c:if>
							<c:if test="${pvo.product_kinds==2}">
								<select name="cart_size_2">
									<option value="0">선택</option>
									<option value="245">245</option>
									<option value="250">250</option>
									<option value="255">255</option>
									<option value="260">260</option>
									<option value="265">265</option>
									<option value="270">270</option>
									<option value="275">275</option>
									<option value="280">280</option>
									<option value="285">285</option>
								</select>
							</c:if>
							<c:if test="${pvo.product_kinds==3}">
								<div class="select_shirt">
									<select name="cart_size_0_3">
										<option value="0">선택</option>
										<option value="95">95</option>
										<option value="100">100</option>
										<option value="105">105</option>
										<option value="110">110</option>
										<option value="115">115</option>
										<option value="120">120</option>
									</select>
								</div>
								<div class="select_pants">
									<select name="cart_size_1_3">
										<option value="0">선택</option>
										<option value="30">30</option>
										<option value="32">32</option>
										<option value="34">34</option>
										<option value="36">36</option>
										<option value="38">38</option>
									</select>
								</div>
							</c:if>
						</td>
					</tr>
					<tr>
						<td>
							<input type="button" name="count_down" id="count_down" value="-" onclick="count_down()">
							<span name="cart_count" id="cart_count">1</span>
							<input type="button" name="count_up" id="count_up" value="+">
						</td>
					</tr> 
				<tr>
					<td><input type="submit" value="바로구매"></td>
				</tr>
				<tr>
					<td><input type="button" onclick="cart_input_product()" value="장바구니 담기"></td><!-- product_content에 cart_input_product함수 만들고 해당의 모든 벨류를 담아서 cart에 담기 -->
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td>${pvo.product_detail}</td>
	</tr>
</table>
<div>${pvo.product_readnum}</div>
</form>
</body>
</html>






