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




