package kr.co.pro_2.product_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.pro_2.product_service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	@Qualifier("product_service")
	private ProductService productservice;
	
	@RequestMapping("/product/product_list")
	public String product_list(Model model) {
		
		return productservice.product_list(model);
	}
	@RequestMapping("product_readnum")
	public String product_readnum() {
		
		return productservice.product_readnum();
	}
	@RequestMapping("product_content")
	public String product_content() {
		
		return productservice.product_content();
	}
	@RequestMapping("product_buy")
	public String product_buy() {
		
		return productservice.product_buy();
	}
	@RequestMapping("product_payment")
	public String product_payment() {
		return productservice.product_payment();
	}

}
