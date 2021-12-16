package kr.co.pro_2.product_service;

import java.time.LocalDate;
import java.time.LocalDateTime;
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
	private ProductMapper mapper;
	
	@Override
	public String product_list(Model model) {
		
		ArrayList<ProductVO> pvo_product_glove_list=mapper.glove_list();
		ArrayList<ProductVO> pvo_product_shoes_list=mapper.shoes_list();
		ArrayList<ProductVO> pvo_product_bat_list=mapper.bat_list();
		ArrayList<ProductVO> pvo_product_guard_list=mapper.guard_list();
		ArrayList<ProductVO> pvo_product_leathercream_list=mapper.leathercream_list();
		ArrayList<ProductVO> pvo_product_resinbag_list=mapper.resinbag_list();
		ArrayList<ProductVO> pvo_product_uniform_list=mapper.uniform_list();
		ArrayList<ProductVO> pvo_product_ball_list=mapper.ball_list();
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
		mapper.product_readnum(id);
		
		return "redirect:/product/product_content?product_id="+id;
	}
	
	public String product_content(Model model,HttpServletRequest request) {
		LocalDate today=LocalDate.now();
		int year=today.getYear();
		int month=today.getMonthValue();
		int day=today.getDayOfMonth();
		
		
		int id=Integer.parseInt(request.getParameter("product_id"));
		ProductVO pvo=mapper.product_content(id);
		model.addAttribute("today",year*10000+month*100+day);
		model.addAttribute("pvo",pvo);
		
		return "/product/product_content";
	}
	@Override
	public String product_payment() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String product_cart(HttpServletRequest request,CartVO cvo)  {
		String cart_ordernum=request.getParameter("cart_ordernum");
		int cart_kinds=Integer.parseInt(request.getParameter("cart_kinds"));
		int cart_count=Integer.parseInt(request.getParameter("cart_count"));
		int cart_price=Integer.parseInt(request.getParameter("cart_price"));
		String cart_group=request.getParameter("cart_group");
		String cart_name=request.getParameter("cart_name");
		String cart_userid=request.getParameter("cart_userid");
		
			if(cart_kinds==0) {
				String cart_size_0=request.getParameter("cart_size_0");
				int cart_throw0=Integer.parseInt(request.getParameter("cart_throw0"));
				String cart_material_0=request.getParameter("cart_material_0");
				String cart_color0_0=request.getParameter("cart_color0_0");
				String cart_purpose_0=request.getParameter("cart_purpose_0");
				
				
				mapper.product_buy0(cart_ordernum,cart_kinds,cart_count,cart_name,cart_price,cart_size_0,cart_throw0,cart_material_0,cart_color0_0,cart_purpose_0,cart_group,cart_userid);
				return "redirect:/product/product_payment";
			} else if(cart_kinds==1) {
				return "redirect:/product/product_payment";
			} else if(cart_kinds==2) {
				return "redirect:/product/product_payment";
			} else if(cart_kinds==3) {
				return "redirect:/product/product_payment";
			} else if(cart_kinds==4) {
				return "redirect:/product/product_payment";
			} else if(cart_kinds==5) {
				return "redirect:/product/product_payment";
			} else if(cart_kinds==6) {
				return "redirect:/product/product_payment";
			} else if(cart_kinds==7) {
				return "redirect:/product/product_payment";
			}
			
		return null;
	}

	

	
}
