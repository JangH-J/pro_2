package kr.co.pro_2.product_service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.pro_2.member_vo.MemberVO;
import kr.co.pro_2.product_mapper.ProductMapper;
import kr.co.pro_2.product_vo.BuyVO;
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
	
	public String product_content(Model model,HttpServletRequest request,HttpSession session) {
		LocalDate today=LocalDate.now();
		int year=today.getYear();
		int month=today.getMonthValue();
		int day=today.getDayOfMonth();
		LocalTime now_time=LocalTime.now();
		int hour=now_time.getHour();
		int minute=now_time.getMinute();
		int second=now_time.getSecond();

		int id=Integer.parseInt(request.getParameter("product_id"));
		ProductVO pvo=mapper.product_content(id);
		
		model.addAttribute("time",hour*10000+minute*100+second);
		model.addAttribute("today",year*10000+month*100+day);
		model.addAttribute("pvo",pvo);
		
		return "/product/product_content";
	}

	@Override
	public String product_cart0(HttpServletRequest request,CartVO cvo,HttpSession session)  {
		int cart_product_id=Integer.parseInt(request.getParameter("product_id"));
		int cart_kinds=Integer.parseInt(request.getParameter("cart_kinds"));
		int cart_count=Integer.parseInt(request.getParameter("cart_count"));
		int cart_price=Integer.parseInt(request.getParameter("cart_price"));
		
		String single_revenge=request.getParameter("single_revenge");
		String cart_group=request.getParameter("cart_group");
		String cart_name=request.getParameter("cart_name");
		String cart_userid=session.getAttribute("member_userid").toString();
		String cart_order_phone=mapper.get_member_phone(cart_userid);
		String cart_writeday=request.getParameter("cart_writeday");
			if(cart_kinds==0) {
				String cart_size=request.getParameter("cart_size_0");
				int cart_throw=Integer.parseInt(request.getParameter("cart_throw0"));
				String cart_material=request.getParameter("cart_material_0");
				String cart_color0=request.getParameter("cart_color0_0");
				String cart_purpose=request.getParameter("cart_purpose_0");
				
				mapper.product_buy0(cart_kinds,cart_count,cart_name,cart_price,cart_size,cart_throw,cart_material,cart_color0,cart_purpose,cart_group,cart_userid,cart_product_id,cart_order_phone,cart_writeday);

			} else if(cart_kinds==1) {
				String cart_size=request.getParameter("cart_size_1");
				String cart_material=request.getParameter("cart_material_1");
				String cart_color0=request.getParameter("cart_color0_1");
				String cart_purpose=request.getParameter("cart_purpose_1");
				
				mapper.product_buy1(cart_kinds, cart_count, cart_name, cart_price, cart_size, cart_material, cart_color0, cart_purpose, cart_group, cart_userid,cart_product_id,cart_order_phone,cart_writeday);
			} else if(cart_kinds==2) {
				String cart_material=request.getParameter("cart_material_2");
				String cart_color0=request.getParameter("cart_color0_2");
				String cart_purpose=request.getParameter("cart_purpose_2");
				String cart_size=request.getParameter("cart_size_2");

				mapper.product_buy2(cart_kinds, cart_count, cart_name, cart_price,cart_size,cart_material,cart_color0,cart_purpose, cart_group, cart_userid,cart_product_id,cart_order_phone,cart_writeday);
				
			} else if(cart_kinds==3) {
				String cart_style0=request.getParameter("cart_style_0");
				String cart_style1=request.getParameter("cart_style_1");
				String cart_color0=request.getParameter("cart_color0_3");
				String cart_color1=request.getParameter("cart_color1_3");
				String cart_purpose=request.getParameter("cart_purpose_3");
				String cart_size0=request.getParameter("cart_size_0_3");
				String cart_size1=request.getParameter("cart_size_1_3");

				mapper.product_buy3(cart_kinds, cart_count, cart_name, cart_price, cart_size0, cart_size1,cart_style0,cart_style1,cart_color0,cart_color1, cart_purpose , cart_group, cart_userid,cart_product_id,cart_order_phone,cart_writeday);
				
			} else if(cart_kinds==4) {
				String cart_color0=request.getParameter("cart_color0_4");
				String cart_purpose=request.getParameter("cart_purpose_4");

				mapper.product_buy4(cart_kinds, cart_count,cart_name, cart_price,cart_color0, cart_purpose, cart_group, cart_userid,cart_product_id,cart_order_phone,cart_writeday);
				
			} else if(cart_kinds==5) {
				String cart_purpose=request.getParameter("cart_purpose_5");
				String cart_material=request.getParameter("cart_material_5");

				mapper.product_buy5(cart_kinds, cart_count, cart_name, cart_price,cart_material,cart_purpose , cart_group, cart_userid,cart_product_id,cart_order_phone,cart_writeday);
			} else if(cart_kinds==6) {
				String cart_material=request.getParameter("cart_material_6");

				mapper.product_buy6(cart_kinds, cart_count, cart_name, cart_price,cart_material , cart_group, cart_userid,cart_product_id,cart_order_phone,cart_writeday);
			} else if(cart_kinds==7) {
				
				mapper.product_buy7( cart_kinds, cart_count, cart_name, cart_price, cart_group, cart_userid,cart_product_id,cart_order_phone,cart_writeday);
				
			}
			int cart_id=mapper.output_cart_id(cart_count,cart_price,cart_name,cart_userid,cart_writeday);
			return "redirect:/product/product_payment?cart_id="+cart_id+"&single_revenge="+single_revenge;
			
	}
	@Override
	public String product_cart1(HttpServletRequest request,CartVO cvo,HttpSession session)  {
		int product_id=Integer.parseInt(request.getParameter("product_id"));
		int match_check=mapper.match_cart_product_id(product_id);
		int cart_count=Integer.parseInt(request.getParameter("cart_count"));
		if(match_check==0) {
			int cart_kinds=Integer.parseInt(request.getParameter("cart_kinds"));
			int cart_price=Integer.parseInt(request.getParameter("cart_price"));
			
			String cart_group=request.getParameter("cart_group");
			String cart_name=request.getParameter("cart_name");
			String cart_userid=session.getAttribute("member_userid").toString();
			String cart_order_phone=mapper.get_member_phone(cart_userid);
			String cart_writeday=request.getParameter("cart_writeday");
			
			if(cart_kinds==0) {
				String cart_size=request.getParameter("cart_size_0");
				int cart_throw=Integer.parseInt(request.getParameter("cart_throw0"));
				String cart_material=request.getParameter("cart_material_0");
				String cart_color0=request.getParameter("cart_color0_0");
				String cart_purpose=request.getParameter("cart_purpose_0");
				mapper.product_buy0(cart_kinds,cart_count,cart_name,cart_price,cart_size,cart_throw,cart_material,cart_color0,cart_purpose,cart_group,cart_userid,product_id,cart_order_phone,cart_writeday);
			} else if(cart_kinds==1) {
				String cart_size=request.getParameter("cart_size_1");
				String cart_material=request.getParameter("cart_material_1");
				String cart_color0=request.getParameter("cart_color0_1");
				String cart_purpose=request.getParameter("cart_purpose_1");
				mapper.product_buy1(cart_kinds, cart_count, cart_name, cart_price, cart_size, cart_material, cart_color0, cart_purpose, cart_group, cart_userid,product_id,cart_order_phone,cart_writeday);
			} else if(cart_kinds==2) {
				String cart_material=request.getParameter("cart_material_2");
				String cart_color0=request.getParameter("cart_color0_2");
				String cart_purpose=request.getParameter("cart_purpose_2");
				String cart_size=request.getParameter("cart_size_2");
				mapper.product_buy2(cart_kinds, cart_count, cart_name, cart_price,cart_size,cart_material,cart_color0,cart_purpose, cart_group, cart_userid,product_id,cart_order_phone,cart_writeday);
			} else if(cart_kinds==3) {
				String cart_style0=request.getParameter("cart_style_0");
				String cart_style1=request.getParameter("cart_style_1");
				String cart_color0=request.getParameter("cart_color0_3");
				String cart_color1=request.getParameter("cart_color1_3");
				String cart_purpose=request.getParameter("cart_purpose_3");
				String cart_size0=request.getParameter("cart_size_0_3");
				String cart_size1=request.getParameter("cart_size_1_3");
				mapper.product_buy3(cart_kinds, cart_count, cart_name, cart_price, cart_size0, cart_size1,cart_style0,cart_style1,cart_color0,cart_color1, cart_purpose , cart_group, cart_userid,product_id,cart_order_phone,cart_writeday);
			} else if(cart_kinds==4) {
				String cart_color0=request.getParameter("cart_color0_4");
				String cart_purpose=request.getParameter("cart_purpose_4");
				mapper.product_buy4(cart_kinds, cart_count,cart_name, cart_price,cart_color0, cart_purpose, cart_group, cart_userid,product_id,cart_order_phone,cart_writeday);
			} else if(cart_kinds==5) {
				String cart_purpose=request.getParameter("cart_purpose_5");
				String cart_material=request.getParameter("cart_material_5");
				mapper.product_buy5(cart_kinds, cart_count, cart_name, cart_price,cart_material,cart_purpose , cart_group, cart_userid,product_id,cart_order_phone,cart_writeday);
			} else if(cart_kinds==6) {
				String cart_material=request.getParameter("cart_material_6");
				mapper.product_buy6(cart_kinds, cart_count, cart_name, cart_price,cart_material , cart_group, cart_userid,product_id,cart_order_phone,cart_writeday);
			} else if(cart_kinds==7) {
				mapper.product_buy7( cart_kinds, cart_count, cart_name, cart_price, cart_group, cart_userid,product_id,cart_order_phone,cart_writeday);
			}
		} else {
			mapper.input_match_product_countup(cart_count,product_id);
		}
		return "redirect:/product/product_content?product_id="+product_id+"&cart_chk=0";
	}
	@Override
	public String product_payment(HttpServletRequest request,Model model,HttpSession session) {
		int single_revenge=Integer.parseInt(request.getParameter("single_revenge"));
		LocalDate today=LocalDate.now();
		int year=today.getYear();
		int month=today.getMonthValue();
		int day=today.getDayOfMonth();
		LocalTime now_time=LocalTime.now();
		int hour=now_time.getHour();
		int minute=now_time.getMinute();
		int second=now_time.getSecond();
		if(single_revenge==0) {
			String cart_id=request.getParameter("cart_id");
			CartVO cvo=mapper.cart_single_output(cart_id);
			
			model.addAttribute("single_revenge",single_revenge);
			model.addAttribute("cvo",cvo);
		} else if(single_revenge==1) {
			ArrayList<CartVO> cvolist=mapper.cart_revenge_output();
			model.addAttribute("cvolist",cvolist);
		}
		
		MemberVO mvo=mapper.show_member_information(session.getAttribute("member_userid").toString());
				
		model.addAttribute("single_revenge",single_revenge);
		model.addAttribute("time",hour*10000+minute*100+second);
		model.addAttribute("today",year*10000+month*100+day);
		model.addAttribute("mvo",mvo);
		
		return "/product/product_payment";
	}

	@Override
	public String product_payment_done(HttpServletRequest request, Model model, HttpSession session) {
		int single_revenge=Integer.parseInt(request.getParameter("single_revenge"));
		String buy_userid=request.getParameter("buy_userid");
		String buy_ordernum=request.getParameter("buy_ordernum");
		String buy_order_phone=request.getParameter("buy_order_phone");
		String buy_recipient_name=request.getParameter("buy_recipient_name");
		String buy_recipient_phone=request.getParameter("buy_recipient_phone");
		String buy_recipient_address=request.getParameter("buy_recipient_address");
		String cart_id=request.getParameter("cart_id");
		int index=mapper.count_checked();
		
		if(single_revenge==0) {
			CartVO cvo=mapper.show_cart_information(cart_id);
			mapper.input_cart_information(cvo);
			mapper.input_recipient_member_information0(buy_ordernum,buy_userid,buy_order_phone,buy_recipient_name,buy_recipient_phone,buy_recipient_address,cart_id);
			mapper.product_cart_delete(cart_id);
			
		} else if(single_revenge==1) {
			for (int i=0;i<index;i++) {
				String[] revenge_cart_id=new String[index-1];
				revenge_cart_id=mapper.output_revenge_cart_id();
				CartVO[] revenge_cvo=new CartVO[index-1];			
				revenge_cvo=mapper.show_revenge_cart_information(revenge_cart_id[i]);
				mapper.input_revenge_cart_information(revenge_cvo[i]);
				mapper.input_recipient_member_information1(buy_ordernum,buy_userid,buy_order_phone,buy_recipient_name,buy_recipient_phone,buy_recipient_address,revenge_cart_id[i]);
				mapper.product_cart_delete(revenge_cart_id[i]);
				return "redirect:/product/product_payment_done?single_revenge="+single_revenge;
			}	
		}
		return "redirect:/product/product_buy_done?buy_ordernum="+buy_ordernum+"&single_revenge="+single_revenge;
	}

	@Override
	public String product_buy_done(HttpServletRequest request, Model model) {
		int single_revenge=Integer.parseInt(request.getParameter("single_revenge"));
		String buy_ordernum=request.getParameter("buy_ordernum");
		if(single_revenge==0) {
			BuyVO bvo=mapper.show_buy_information0(buy_ordernum);
			model.addAttribute("bvo",bvo);
			model.addAttribute("single_revenge",single_revenge);
		} else if(single_revenge==1) {			
			ArrayList<BuyVO> bvolist=mapper.show_buy_information1(buy_ordernum);
			model.addAttribute("bvolist",bvolist);
			model.addAttribute("single_revenge",single_revenge);
		}
		return "/product/product_buy_done";
	}
	@Override
	public String product_cart_list(Model model,HttpSession session,MemberVO mvo,HttpServletRequest request) {
			ArrayList<CartVO> clist=mapper.product_cart_list(session.getAttribute("member_userid").toString());
			model.addAttribute("clist",clist);
	
		return "/product/product_cart_list";
	}
	@Override
	public String product_cart_delete(HttpServletRequest request) {
		String cart_id=request.getParameter("cart_id");
		mapper.product_cart_delete(cart_id);
		return "redirect:/product/product_cart_list";
	}
	@Override
	public String product_cart_modify(HttpServletRequest request) {
		int price=Integer.parseInt(request.getParameter("cart_price"));
		int count=Integer.parseInt(request.getParameter("cart_count"));
		String id=request.getParameter("cart_id");
		mapper.product_cart_modify(count,count*price,id);
		return "redirect:/product/product_cart_list";
	}
	@Override
	public String product_cart_checked(HttpServletRequest request) {
		String cart_id=request.getParameter("cart_id");
		mapper.cart_checked(cart_id);
		return "redirect:/product/product_cart_list";
	}
	@Override
	public String product_cart_unchecked(HttpServletRequest request) {
		String cart_id=request.getParameter("cart_id");
		mapper.cart_unchecked(cart_id);
		return "redirect:/product/product_cart_list";
	}
	@Override
	public String product_cart_all_checked(HttpServletRequest request) {
		String cart_id=request.getParameter("cart_id");
		mapper.cart_checked(cart_id);
		return "redirect:/product/product_cart_list";
	}
	@Override
	public String product_cart_all_unchecked(HttpServletRequest request) {
		String cart_id=request.getParameter("cart_id");
		mapper.cart_unchecked(cart_id);
		return "redirect:/product/product_cart_list";
	}
	
	

	
}
