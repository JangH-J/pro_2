package kr.co.pro_2.product_controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.pro_2.member_vo.MemberVO;
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
	@RequestMapping("/product/product_cart0")
	public String product_cart0(HttpServletRequest request,CartVO cvo,HttpSession session) {
		return service.product_cart0(request,cvo,session);
	}
	@RequestMapping("/product/product_cart1")
	public String product_cart1(HttpServletRequest request,CartVO cvo,HttpSession session) {
		return service.product_cart1(request,cvo,session);
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
	public String product_buy_done(HttpServletRequest request,Model model) {
		return service.product_buy_done(request,model);
	}
	@RequestMapping("/product/product_cart_list")
	public String product_cart_list(Model model,HttpSession session,MemberVO mvo) {
		return service.product_cart_list(model,session,mvo);
	}
	@RequestMapping("/product/product_cart_delete")
	public String product_cart_delete(HttpServletRequest request) {
		return service.product_cart_delete(request);
	}

}
