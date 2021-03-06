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
	public String product_cart0(HttpServletRequest request,CartVO cvo,HttpSession session);
	public String product_cart1(HttpServletRequest request,CartVO cvo,HttpSession session);
	public String product_payment(HttpServletRequest request,Model model,HttpSession session);
	public String product_payment_done(HttpServletRequest request,Model model,HttpSession session);
	public String product_buy_done(HttpServletRequest request,Model model);
	public String product_cart_list(Model model,HttpSession session,MemberVO mvo,HttpServletRequest request);
	public String product_cart_delete(HttpServletRequest request);
	public String product_cart_modify(HttpServletRequest request);
	public String product_cart_checked(HttpServletRequest request);
	public String product_cart_unchecked(HttpServletRequest request);
	public String product_cart_all_checked(HttpServletRequest request);
	public String product_cart_all_unchecked(HttpServletRequest request);

}
