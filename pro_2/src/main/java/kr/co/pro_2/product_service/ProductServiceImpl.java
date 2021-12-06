package kr.co.pro_2.product_service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.pro_2.product_mapper.ProductMapper;
import kr.co.pro_2.product_vo.ProductVO;

@Service
@Qualifier("product_service")
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductMapper productmapper;
	
	@Override
	public String product_list(Model model) {
		
		ProductVO pvo_product_glove_list=productmapper.glove_list();
		
		model.addAttribute("glove_list",pvo_product_glove_list);
		
		return "product/product_list";
	}

	
}
