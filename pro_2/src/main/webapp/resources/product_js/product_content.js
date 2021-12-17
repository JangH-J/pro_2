function select_color_formaterial(my){
		var value=my.cart_material.value;		
	 if (value=="나무") {
		document.getElementById("select_bat_color").style.display="none";
	}
	
}
function select_shirt_pants(my){
	var shirt=my.cart_style0.vlaue;
	var pants=my.cart_style1.vlaue;
	if(shirt==0){
		document.getElementsByClassName("select_shirt").style.display="block-inline";
	} else if(pants==1){
		document.getElementsByClassName("select_pants").style.display="block-inline";
	}
}
function input_product(chk){
	if(chk==0){
		product_content_cart.buy_or_cart.value="0";
	} else {
		alert("장바구니에 저장하였습니다")
		product_content_cart.buy_or_cart.value="1";
	} 
		
}



