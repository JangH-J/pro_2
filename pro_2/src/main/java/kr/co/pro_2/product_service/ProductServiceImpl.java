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
	public String product_cart(HttpServletRequest request,CartVO cvo,HttpSession session)  {
		int boc=Integer.parseInt(request.getParameter("buy_or_cart"));
		String product_id=request.getParameter("product_id");
		int cart_product_id=Integer.parseInt(request.getParameter("product_id"));
		int cart_kinds=Integer.parseInt(request.getParameter("cart_kinds"));
		int cart_count=Integer.parseInt(request.getParameter("cart_count"));
		int cart_price=Integer.parseInt(request.getParameter("cart_price"));
		
		String cart_group=request.getParameter("cart_group");
		String cart_name=request.getParameter("cart_name");
		String cart_userid=session.getAttribute("member_userid").toString();
		String cart_order_phone=mapper.get_member_phone(cart_userid);
		String cart_writeday=request.getParameter("cart_writeday");
		
		if(boc==0) {
			if(cart_kinds==0) {
				String cart_size=request.getParameter("cart_size_0");
				int cart_throw=Integer.parseInt(request.getParameter("cart_throw0"));
				String cart_material=request.getParameter("cart_material_0");
				String cart_color0=request.getParameter("cart_color0_0");
				String cart_purpose=request.getParameter("cart_purpose_0");
				
				mapper.product_buy0(cart_kinds,cart_count,cart_name,cart_price,cart_size,cart_throw,cart_material,cart_color0,cart_purpose,cart_group,cart_userid,cart_product_id,cart_order_phone,cart_writeday);
				int cart_id=mapper.output_cart_id(cart_count,cart_price,cart_name,cart_userid,cart_writeday);
				
				return "redirect:/product/product_payment?cart_id="+cart_id;
			} else if(cart_kinds==1) {
				String cart_size=request.getParameter("cart_size_1");
				String cart_material=request.getParameter("cart_material_1");
				String cart_color0=request.getParameter("cart_color0_1");
				String cart_purpose=request.getParameter("cart_purpose_1");
				
				mapper.product_buy1(cart_kinds, cart_count, cart_name, cart_price, cart_size, cart_material, cart_color0, cart_purpose, cart_group, cart_userid,cart_product_id,cart_order_phone,cart_writeday);
				int cart_id=mapper.output_cart_id(cart_count,cart_price,cart_name,cart_userid,cart_writeday);
				
				return "redirect:/product/product_payment?cart_id="+cart_id;
			} else if(cart_kinds==2) {
				String cart_material=request.getParameter("cart_material_2");
				String cart_color0=request.getParameter("cart_color0_2");
				String cart_purpose=request.getParameter("cart_purpose_2");
				String cart_size=request.getParameter("cart_size_2");

				mapper.product_buy2(cart_kinds, cart_count, cart_name, cart_price,cart_size,cart_material,cart_color0,cart_purpose, cart_group, cart_userid,cart_product_id,cart_order_phone,cart_writeday);
				int cart_id=mapper.output_cart_id(cart_count,cart_price,cart_name,cart_userid,cart_writeday);
				
				return "redirect:/product/product_payment?cart_id="+cart_id;
			} else if(cart_kinds==3) {
				String cart_style0=request.getParameter("cart_style_0");
				String cart_style1=request.getParameter("cart_style_1");
				String cart_color0=request.getParameter("cart_color0_3");
				String cart_color1=request.getParameter("cart_color1_3");
				String cart_purpose=request.getParameter("cart_purpose_3");
				String cart_size0=request.getParameter("cart_size_0_3");
				String cart_size1=request.getParameter("cart_size_1_3");

				mapper.product_buy3(cart_kinds, cart_count, cart_name, cart_price, cart_size0, cart_size1,cart_style0,cart_style1,cart_color0,cart_color1, cart_purpose , cart_group, cart_userid,cart_product_id,cart_order_phone,cart_writeday);
				int cart_id=mapper.output_cart_id(cart_count,cart_price,cart_name,cart_userid,cart_writeday);
				
				return "redirect:/product/product_payment?cart_id="+cart_id;
			} else if(cart_kinds==4) {
				String cart_color0=request.getParameter("cart_color0_4");
				String cart_purpose=request.getParameter("cart_purpose_4");

				mapper.product_buy4(cart_kinds, cart_count,cart_name, cart_price,cart_color0, cart_purpose, cart_group, cart_userid,cart_product_id,cart_order_phone,cart_writeday);
				int cart_id=mapper.output_cart_id(cart_count,cart_price,cart_name,cart_userid,cart_writeday);
				
				return "redirect:/product/product_payment?cart_id="+cart_id;
			} else if(cart_kinds==5) {
				String cart_purpose=request.getParameter("cart_purpose_5");
				String cart_material=request.getParameter("cart_material_5");

				mapper.product_buy5(cart_kinds, cart_count, cart_name, cart_price,cart_material,cart_purpose , cart_group, cart_userid,cart_product_id,cart_order_phone,cart_writeday);
				int cart_id=mapper.output_cart_id(cart_count,cart_price,cart_name,cart_userid,cart_writeday);
				
				return "redirect:/product/product_payment?cart_id="+cart_id;
			} else if(cart_kinds==6) {
				String cart_material=request.getParameter("cart_material_6");

				mapper.product_buy6(cart_kinds, cart_count, cart_name, cart_price,cart_material , cart_group, cart_userid,cart_product_id,cart_order_phone,cart_writeday);
				int cart_id=mapper.output_cart_id(cart_count,cart_price,cart_name,cart_userid,cart_writeday);
				
				return "redirect:/product/product_payment?cart_id="+cart_id;
			} else if(cart_kinds==7) {
				
				mapper.product_buy7( cart_kinds, cart_count, cart_name, cart_price, cart_group, cart_userid,cart_product_id,cart_order_phone,cart_writeday);
				int cart_id=mapper.output_cart_id(cart_count,cart_price,cart_name,cart_userid,cart_writeday);
				
				return "redirect:/product/product_payment?cart_id="+cart_id;
			}
		} else {
			
			
			return "redirect:/product/product_content?product_id="+product_id;
		}
		
		return null;
	}
	@Override
	public String product_payment(HttpServletRequest request,Model model,HttpSession session) {
		LocalDate today=LocalDate.now();
		int year=today.getYear();
		int month=today.getMonthValue();
		int day=today.getDayOfMonth();
		LocalTime now_time=LocalTime.now();
		int hour=now_time.getHour();
		int minute=now_time.getMinute();
		int second=now_time.getSecond();
		String cart_group=request.getParameter("cart_group");
		
		if(cart_group==null) {
			String cart_id=request.getParameter("cart_id");
			
			CartVO cvo=mapper.cart_single_output(cart_id);
			String single_revenge="0";
			
			model.addAttribute("single_revenge",single_revenge);
			model.addAttribute("cvo",cvo);
			
		} else if(cart_group!=null) {
			
			ArrayList<CartVO> cvolist=mapper.product_payment(cart_group);
			
			String single_revenge="1";
			
			model.addAttribute("single_revenge",single_revenge);
			model.addAttribute("cvolist",cvolist);
		}
		
		MemberVO mvo=mapper.show_member_information(session.getAttribute("member_userid").toString());
		/*ProductVO pvo=mapper.product_content();*/
		/*ArrayList<ProductVO> imglist=mapper.product_output_img(cart_id);*/
		/*model.addAttribute("imglist",imglist);*/
				
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
		
		if(single_revenge==0) {
			
			String cart_id=request.getParameter("cart_id");
			mapper.input_recipient_member_information(buy_ordernum,buy_userid,buy_order_phone,buy_recipient_name,buy_recipient_phone,buy_recipient_address,cart_id);
			int buy_id=mapper.output_buy_id(cart_id);
			return "redirect:/product/product_buy_done?buy_ordernum="+buy_ordernum+"&single_revenge="+single_revenge+"&cart_id="+cart_id+"&buy_id="+buy_id;
			
		} else if(single_revenge==1) {			
			String buy_group=request.getParameter("buy_group");
			MemberVO mvo=mapper.show_member_information(buy_userid);
			mapper.input_member_information(mvo);
			
		}
		
		
		
		
		
		/*String cart_group=request.getParameter("cart_group");*/
		
		/*ArrayList<CartVO> cvolist=mapper.product_payment(buy_group);*/
		

		return null;
	}

	@Override
	public String product_buy_done(HttpServletRequest request, Model model) {
		int single_revenge=Integer.parseInt(request.getParameter("single_revenge"));
		String cart_id=request.getParameter("cart_id");
		String buy_id=request.getParameter("buy_id");
/*		String cart_group=request.getParameter("cart_group");
		mapper.product_buy_done(cart_group);*/
		if(single_revenge==0) {
			CartVO cvo=mapper.show_cart_information(cart_id);
			String userid=mapper.output_member_userid(buy_id);
			MemberVO mvo=mapper.show_member_information(userid);
			model.addAttribute("buy_id",buy_id);
			model.addAttribute("userid",userid);
			model.addAttribute("mvo",mvo);
			model.addAttribute("cvo",cvo);
			model.addAttribute("single_revenge",single_revenge);
			return "/product/product_buy_done";
		} else if(single_revenge==1) {
			model.addAttribute("single_revenge",single_revenge);
			return "/product/product_buy_done";
		}
		return null;
	}

	@Override
	public String product_cart_list(Model model,HttpSession session,MemberVO mvo) {
		ArrayList<CartVO> clist=mapper.product_cart_list(session.getAttribute("member_userid").toString());
		model.addAttribute("clist",clist);
		return "/product/product_cart_list";
	}
	

	
}
