package kr.co.pro_2.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.pro_2.product.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	@Qualifier("product_service")
	private ProductService productservice;
	
	@RequestMapping("/product/product_list")
	public String product_list(Model model) {
		
		return productservice.product_list(model);
	}

}
