package kr.co.pro_2.product_service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import kr.co.pro_2.member_vo.MemberVO;
import kr.co.pro_2.product_vo.CartVO;
import kr.co.pro_2.product_vo.ProductVO;

public interface ProductService {
	
	public String product_list(Model model);
	public String product_readnum(HttpServletRequest request);
	public String product_content(Model model,HttpServletRequest request,HttpSession session);
	public String product_cart(HttpServletRequest request,CartVO cvo);
	public String product_payment(HttpServletRequest request,Model model,HttpSession session);
	public String product_payment_done(HttpServletRequest request,Model model,HttpSession session);
	public String product_buy_done(HttpServletRequest request,Model model,HttpSession session);
	public String product_cart_list(Model model,HttpSession session,MemberVO mvo);
}
