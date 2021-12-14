package kr.co.pro_2.product_service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.pro_2.product_mapper.ProductMapper;
import kr.co.pro_2.product_vo.CartVO;
import kr.co.pro_2.product_vo.ProductVO;

@Service
@Qualifier("product_service")
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductMapper productmapper;
	
	@Override
	public String product_list(Model model) {
		
		ArrayList<ProductVO> pvo_product_glove_list=productmapper.glove_list();
		ArrayList<ProductVO> pvo_product_shoes_list=productmapper.shoes_list();
		ArrayList<ProductVO> pvo_product_bat_list=productmapper.bat_list();
		ArrayList<ProductVO> pvo_product_guard_list=productmapper.guard_list();
		ArrayList<ProductVO> pvo_product_leathercream_list=productmapper.leathercream_list();
		ArrayList<ProductVO> pvo_product_resinbag_list=productmapper.resinbag_list();
		ArrayList<ProductVO> pvo_product_uniform_list=productmapper.uniform_list();
		ArrayList<ProductVO> pvo_product_ball_list=productmapper.ball_list();
/*				product_list0 glove
			     product_list1 bat  
			     product_list2 shoes  
			     product_list3 uniform  
			     product_list4 guard
			     product_list5 resinbag  
			     product_list6 leathercream*/
		
		model.addAttribute("product_list0",pvo_product_glove_list);
		model.addAttribute("product_list1",pvo_product_bat_list);
		model.addAttribute("product_list2",pvo_product_shoes_list);
		model.addAttribute("product_list3",pvo_product_uniform_list);
		model.addAttribute("product_list4",pvo_product_guard_list);
		model.addAttribute("product_list5",pvo_product_resinbag_list);
		model.addAttribute("product_list6",pvo_product_leathercream_list);
		model.addAttribute("product_list7",pvo_product_ball_list);
		
		return "/product/product_list";
	}
	
	public String product_readnum(HttpServletRequest request) {
		int id=Integer.parseInt(request.getParameter("product_id"));
		productmapper.product_readnum(id);
		
		return "redirect:/product/product_content?product_id="+id;
	}
	
	public String product_content(Model model,HttpServletRequest request) {
		int id=Integer.parseInt(request.getParameter("product_id"));
		ProductVO pvo=productmapper.product_content(id);
		model.addAttribute("pvo",pvo);
		
		return "/product/product_content";
	}
	@Override
	public String product_payment() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String product_buy(CartVO cvo) {
		productmapper.product_buy(cvo);
		return "redirect;/product/product_payment";
	}

	

	
}
