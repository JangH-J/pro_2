/**
 * 
 */
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