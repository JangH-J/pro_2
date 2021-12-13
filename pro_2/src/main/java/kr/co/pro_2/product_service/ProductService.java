package kr.co.pro_2.product_service;

import org.springframework.ui.Model;

import kr.co.pro_2.product_vo.ProductVO;

public interface ProductService {
	
	public String product_list(Model model);
	public String product_readnum();
	public String product_content();

}
