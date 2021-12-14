package kr.co.pro_2.product_service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.co.pro_2.product_vo.CartVO;
import kr.co.pro_2.product_vo.ProductVO;

public interface ProductService {
	
	public String product_list(Model model);
	public String product_readnum(HttpServletRequest request);
	public String product_content(Model model,HttpServletRequest request);
	public String product_buy(CartVO cvo);
	public String product_payment();

}
