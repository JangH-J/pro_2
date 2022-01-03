<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400&display=swap" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>야구야 상품페이지</title>
<style>
 #pro_buy{
  	color:white;
	display: inline-block;
   	padding: 10px 40px 12px;
    background: #BE1631;
    border: 1px solid #ccc;
    border-radius: 2px;
    text-align: center;
    line-height: 30px;
    transition: background 0.3s;
    vertical-align: middle;
 }
 #pro_cart{
 	color:white;
 	display: inline-block;
   	padding: 10px 40px 12px;
    background: #A0A0A0;
    border: 1px solid #ccc;
    border-radius: 2px;
    text-align: center;
    line-height: 30px;
    transition: background 0.3s;
    vertical-align: middle;
 }
 #pro_info{
	border:solid 1px #ccc;
	padding-left: 30px;

 }
</style>
<script>
var price0=${pvo.product_price};
function count_change_push(chk){
	var num=parseInt(document.getElementById("count").value);
	if(chk==1){
		num++;
	} else if (chk==0 && num>1){
		num--;
	}
	document.getElementById("cart_price").value=price0*num;
	document.getElementById("product_price_div").innerText=add_comma(price0*num)+"원";
	document.getElementById("count").value=num;
}
function count_change_input(){
	
	var num=parseInt(document.getElementById("count").value);
	if(num==0){
		num=1;
		alert("구매하실 수량을 다시 입력해주세요")
	}
	document.getElementById("cart_price").value=price0*num;
	document.getElementById("product_price_div").innerText=add_comma(price0*num)+"원";
	document.getElementById("count").value=num;
}
function add_comma(val){
	   return new Intl.NumberFormat().format(val);
}
function product_check0(){
	if(${pvo.product_kinds==0}){
		var throw_value0=document.getElementById("cart_throw0").value;
		var throw_value1=document.getElementById("cart_throw1").value;
		
		if( throw_value0!=0 && throw_value1!=1){
			alert("손잡이 방향을 정해 주세요!");
		} 
		for(var i=0;i<4;i++){
			var select_value=document.getElementsByTagName("select")[i].value;
				if(select_value==0){
					alert("구매자님께서 원하시는 옵션을 선택해주세요 ")
				}
		}
	} else if(${pvo.product_kinds==1}){
		for(var i=0;i<4;i++){
			var select_value=document.getElementsByTagName("select")[i].value;
				if(select_value==0){
					alert("구매자님께서 원하시는 옵션을 선택해주세요 ")
				}
		}
	} else if(${pvo.product_kinds==2}){
		for(var i=0;i<4;i++){
			var select_value=document.getElementsByTagName("select")[i].value;
				if(select_value==0){
					alert("구매자님께서 원하시는 옵션을 선택해주세요 ")
				}
		}
	} else if(${pvo.product_kinds==3}){
		for(var i=0;i<1;i++){
			var select_value=document.getElementsByTagName("select")[i].value;
				if(select_value==0){
					alert("구매자님께서 원하시는 옵션을 선택해주세요 ")
				}
		}
	} else if(${pvo.product_kinds==4}){
		for(var i=0;i<1;i++){
			var select_value=document.getElementsByTagName("select")[i].value;
				if(select_value==0){
					alert("구매자님께서 원하시는 옵션을 선택해주세요 ")
				}
		}
	} else if(${pvo.product_kinds==5}){
		for(var i=0;i<2;i++){
			var select_value=document.getElementsByTagName("select")[i].value;
				if(select_value==0){
					alert("구매자님께서 원하시는 옵션을 선택해주세요 ")
				}
		}
	}
	if(${pvo.product_kinds==6}){
		for(var i=0;i<1;i++){
			var select_value=document.getElementsByTagName("select")[i].value;
				if(select_value==0){
					alert("구매자님께서 원하시는 옵션을 선택해주세요 ")
				}
		}
	}
}
function product_check1(){
	if(${pvo.product_kinds==0}){
		var throw_value0=document.getElementById("cart_throw0").value;
		var throw_value1=document.getElementById("cart_throw1").value;
		
		if( throw_value0!=0 && throw_value1!=1){
			alert("손잡이 방향을 정해 주세요!");
		} 
		for(var i=0;i<4;i++){
			var select_value=document.getElementsByTagName("select")[i].value;
				if(select_value==0){
					alert("구매자님께서 원하시는 옵션을 선택해주세요 ")
				}
		}
	} else if(${pvo.product_kinds==1}){
		for(var i=0;i<4;i++){
			var select_value=document.getElementsByTagName("select")[i].value;
				if(select_value==0){
					alert("구매자님께서 원하시는 옵션을 선택해주세요 ")
				}
		}
	} else if(${pvo.product_kinds==2}){
		for(var i=0;i<4;i++){
			var select_value=document.getElementsByTagName("select")[i].value;
				if(select_value==0){
					alert("구매자님께서 원하시는 옵션을 선택해주세요 ")
				}
		}
	} else if(${pvo.product_kinds==3}){
		for(var i=0;i<1;i++){
			var select_value=document.getElementsByTagName("select")[i].value;
				if(select_value==0){
					alert("구매자님께서 원하시는 옵션을 선택해주세요 ")
				}
		}
	} else if(${pvo.product_kinds==4}){
		for(var i=0;i<1;i++){
			var select_value=document.getElementsByTagName("select")[i].value;
				if(select_value==0){
					alert("구매자님께서 원하시는 옵션을 선택해주세요 ")
				}
		}
	} else if(${pvo.product_kinds==5}){
		for(var i=0;i<2;i++){
			var select_value=document.getElementsByTagName("select")[i].value;
				if(select_value==0){
					alert("구매자님께서 원하시는 옵션을 선택해주세요 ")
				}
		}
	}
	if(${pvo.product_kinds==6}){
		for(var i=0;i<1;i++){
			var select_value=document.getElementsByTagName("select")[i].value;
				if(select_value==0){
					alert("구매자님께서 원하시는 옵션을 선택해주세요 ")
				}
		}
	}
}
</script>
<script src="/resources/product_js/product_content.js"></script>
<link href="/resources/product_css/product_content.css" rel="stylesheet">
</head>
<body >

<!--  -->

<form method="post" action="product_cart0" id="product_content_form">
	<input type="hidden" name="product_id" value="${pvo.product_id}">
	<input type="hidden" name="buy_or_cart" id="buy_or_cart"> 
	<input type="hidden" name="cart_name" id="cart_name" value="${pvo.product_name}">
	<input type="hidden" name="cart_price" id="cart_price" value="${pvo.product_price}">
	<input type="hidden" name="cart_product_img" id="cart_img" value="${pvo.product_img}">
	<input type="hidden" name="cart_kinds" id="cart_kinds" value="${pvo.product_kinds}">
	<input type="hidden" name="single_revenge" value="0">
	<c:set var="cart_writeday" value='${today*100000+time}'/>
	<input type="hidden" name="cart_writeday" value="${cart_writeday}">

<table  style="width:1200px; height:100%; border:solid 1px #ccc; border-left-style: solid; border-right-style: solid; border-left-width: 0px;border-right-width: 0px; padding:15px; margin-bottom:50px; margin:0 auto;">
	<tr>
		<td><img src="/resources/img/${pvo.product_img}"></td>
		<td id="pro_info">
			<table>
				<tr>
					<td><h2>${pvo.product_name}</h2></td>
				</tr>
				<tr>
					<td><div id="product_price_div" ><fmt:formatNumber value='${pvo.product_price}'/>원</div></td>
				</tr>
<!-- 좌투/우투 상품종류 0-->	
					<c:if test="${pvo.product_kinds==0}">
						<tr>
							<td colspan="2">
								좌투<input type="radio" name="cart_throw0" id="cart_throw0" onclick="radio_on0()"><!-- 좌투 -->
								우투<input type="radio" name="cart_throw0" id="cart_throw1" onclick="radio_on1()"><!-- 우투 -->
							</td>
						</tr>
					</c:if>
<!-- 소재  상품종류 0,1,2,5,6-->				
					<c:if test="${pvo.product_kinds==0}">
						<tr>
							<td>
								가죽<select name="cart_material_0" id="cart_material_0" required>
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
								재질<select  name="cart_material_1" onchange="select_color_formaterial(this)" id="cart_material_1" required>
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
								가죽<select name="cart_material_2" id="cart_material_2" required> 
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
								재료<select name="cart_material_5" id="cart_material_5" required>
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
								분류<select name="cart_material_6" id="cart_material_6" required>
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
								상의<input type="radio" name="cart_style0" id="shirt" value="상의" id="cart_style0" onclick="select_show_product(0)">
								하의<input type="radio" name="cart_style1" id="pants" value="하의" id="cart_style1" onclick="select_show_product(1)">
							</div>
							</td>
						</tr>
					</c:if>
					
<!-- 색상 상품종류 0, 1, 2, 0_3, 1_3, 4-->
 					<c:if test="${pvo.product_kinds==0}">
						<tr>
							<td>
								색상<select name="cart_color0_0" id="cart_color0_0" required>
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
								색상<select name="cart_color0_1" id="cart_color0_1" required>
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
								색상<select name="cart_color0_2" id="cart_color0_2" required>
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
									상의색상<select name="cart_color0_3" id="cart_color0_3" required>
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
									하의색상<select name="cart_color1_3" id="cart_color1_3">
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
						<input type="hidden" name="cart_color0_4" value="흑색" id="cart_color0_4">
					</c:if>
<!-- 용도 상품종류 0,1,2,3,4,5-->
					<c:if test="${pvo.product_kinds==0}">	
						<tr>
							<td>
								포지션별<select name="cart_purpose_0">
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
								분류<select name="cart_purpose_1"  id="cart_purpose_1" required>
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
								분류<select name="cart_purpose_2"  name="cart_purpose_2">
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
								계절별<select name="cart_purpose_3" id="cart_purpose_3" required>
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
								착용부위별<select name="cart_purpose_4" id="cart_purpose_4" required>
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
								포지션별<select name="cart_purpose_5" id="cart_purpose_5" required>
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
								사이즈<select name="cart_size_0" id="cart_size_0" required>
									<option value="0">선택</option>
									<option value="11.5">11.5인치</option>
									<option value="12">12인치</option>
									<option value="12.5">12.5인치</option>
									<option value="13">13인치</option>
								</select>
							</c:if>
							<c:if test="${pvo.product_kinds==1}">
								사이즈<select name="cart_size_1" id="cart_size_1" required>
									<option value="0">선택</option>
									<option value="32">32인치</option>
									<option value="33">33인치</option>
									<option value="34">34인치</option>
								</select>
							</c:if>
							<c:if test="${pvo.product_kinds==2}">
								사이즈<select name="cart_size_2" id="cart_size_2" required>
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
								<div class="select_shirt" id="select_shirt">
									사이즈<select name="cart_size_0_3" id="cart_size_0_3" required>
										<option value="0">선택</option>
										<option value="95">95</option>
										<option value="100">100</option>
										<option value="105">105</option>
										<option value="110">110</option>
										<option value="115">115</option>
										<option value="120">120</option>
									</select>
								</div>
								<div class="select_pants" id="select_shirt">
									사이즈<select name="cart_size_1_3" id="cart_size_1_3" required>
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
							<div>
							<input type="button" class="cart_count" id="count_down" onclick="count_change_push(0)" value="-">
							<input type="text" class="cart_count" id="count" name="cart_count" value="1" size="1" onfocusout="count_change_input()">
							<input type="button" class="cart_count" id="count_up" onclick="count_change_push(1)" value="+">
							</div>
						</td>
					</tr> 
				<tr>
					<td><input onmouseover="product_check0()" type="submit" name="input_buy" value="바로구매" id="pro_buy">
					<input onmouseover="product_check1()" type="submit"  name="input_cart" onclick="javascript:document.getElementById('product_content_form').action='product_cart1';alert('장바구니에 담았습니다')" value="장바구니" id="pro_cart"></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td colspan="2" style="width:100%; border:solid 1px #ccc; border-left-style: solid; border-right-style: solid; border-left-width: 0px;border-right-width: 0px; margin-bottom:50px; text-align:center;">
		<h2><font color="#000000">상세보기</font></h2>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="/resources/img/${pvo.product_detail}"/>
		</td>
	</tr>
</table>
</form>
</body>
</html>






