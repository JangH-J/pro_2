package kr.co.pro_2.product_controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.pro_2.product_service.ProductService;
import kr.co.pro_2.product_vo.CartVO;

@Controller
public class ProductController {
	
	@Autowired
	@Qualifier("product_service")
	private ProductService service;
	
	@RequestMapping("/product/product_list")
	public String product_list(Model model) {
		return service.product_list(model);
	}
	@RequestMapping("/product/product_readnum")
	public String product_readnum(HttpServletRequest request) {
		return service.product_readnum(request);
	}
	@RequestMapping("/product/product_content")
	public String product_content(Model model,HttpServletRequest request,HttpSession session) {
		return service.product_content(model,request,session);
	}
	@RequestMapping("/product/product_cart")
	public String product_cart(HttpServletRequest request,CartVO cvo) {
		return service.product_cart(request,cvo);
	}
	@RequestMapping("/product/product_payment")
	public String product_payment(HttpServletRequest request,Model model,HttpSession session) {
		return service.product_payment(request,model,session);
	}
	@RequestMapping("/product/product_payment_done")
	public String product_payment_done(HttpServletRequest request,Model model,HttpSession session) {
		return service.product_payment_done(request,model,session);
	}
	@RequestMapping("/product/product_buy_done")
	public String product_buy_done(HttpServletRequest request,Model model,HttpSession session) {
		return service.product_payment_done(request,model,session);
	}

}
