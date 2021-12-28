function cart_count_select(count,id,price){
	location.href="product_cart_modify?cart_count="+count+"&cart_price="+price+"&cart_id="+id; 
}
function select_cart_check(){
	var checkedInput = document.querySelectorAll("#input[type='checkbox']:checked");
	var str = "";
	for(var i=0; i<checkedInput .length; i++){
	    str  += checkedInput [i].value + ",";
	}
	document.getElementById("select_cart_list").value=str;
}