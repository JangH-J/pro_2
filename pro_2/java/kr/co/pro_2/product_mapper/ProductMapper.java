package kr.co.pro_2.product_mapper;

import java.util.ArrayList;

import kr.co.pro_2.member_vo.MemberVO;
import kr.co.pro_2.product_vo.BuyVO;
import kr.co.pro_2.product_vo.CartVO;
import kr.co.pro_2.product_vo.ProductVO;

public interface ProductMapper {
	public ArrayList<ProductVO> glove_list();
	public ArrayList<ProductVO> shoes_list();
	public ArrayList<ProductVO> bat_list();
	public ArrayList<ProductVO> guard_list();
	public ArrayList<ProductVO> leathercream_list();
	public ArrayList<ProductVO> resinbag_list();
	public ArrayList<ProductVO> uniform_list();
	public ArrayList<ProductVO> ball_list();
	public void product_readnum (int id);
	public ProductVO product_content (int id);
	public void product_buy0 (int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_size0,    int cart_throw,      String cart_material,String cart_color0,    String cart_purpose,String cart_group, String cart_userid,  int cart_product_id,String cart_order_phone,String cart_product_img,String cart_writeday);
	public void product_buy1 (int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_size0,    String cart_material,String cart_color0,  String cart_purpose,   String cart_group,  String cart_userid,int cart_product_id, String cart_order_phone,String cart_product_img,String cart_writeday);
	public void product_buy2 (int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_size0,    String cart_material,String cart_color0,  String cart_purpose,   String cart_group,  String cart_userid,int cart_product_id, String cart_order_phone,String cart_product_img,String cart_writeday);
	public void product_buy3 (int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_size0,    String cart_size1,   String cart_style0,  String cart_style1,    String cart_color0, String cart_color1,String cart_purpose ,String cart_group,  String cart_userid,     int cart_product_id,String cart_order_phone,String cart_product_img,String cart_writeday);
	public void product_buy4 (int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_color0,   String cart_purpose, String cart_group,   String cart_userid,    int cart_product_id,String cart_order_phone,String cart_product_img,String cart_writeday);
	public void product_buy5 (int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_material, String cart_purpose, String cart_group,   String cart_userid,    int cart_product_id,String cart_order_phone,String cart_product_img,String cart_writeday);
	public void product_buy6 (int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_material, String cart_group,   String cart_userid,  int cart_product_id,   String cart_order_phone,String cart_product_img,String cart_writeday);
	public void product_buy7 (int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_group,    String cart_userid,  int cart_product_id, String cart_order_phone,String cart_product_img,String cart_writeday);
	public int output_cart_id(int cart_count, int cart_price, String cart_name, String cart_userid,String cart_writeday);
	public CartVO cart_single_output(String cart_id);
	public ArrayList<CartVO> cart_revenge_output();
	public MemberVO show_member_information (String member_userid);
	public void input_recipient_member_information0(String buy_ordernum,String buy_userid,String buy_order_phone,String buy_recipient_name,String buy_recipient_phone,String buy_recipient_address,String buy_id);
	public void input_recipient_member_information1(String buy_ordernum,String buy_userid,String buy_order_phone,String buy_recipient_name,String buy_recipient_phone,String buy_recipient_address,String revenge_cart_id);
	public void cart_checked(String cart_id);
	public void cart_unchecked(String cart_id);
	public int count_checked();
	public String[] output_revenge_cart_id();
	public CartVO show_cart_information(String cart_id);
	public String output_member_userid(String buy_id);
	public ArrayList<CartVO> product_cart_list(String member_userid);
	public void product_cart_delete(String cart_id);
	public void product_cart_modify(int cart_count,int cart_pirce,String cart_id);
	public ArrayList<CartVO> product_payment (String cart_group);
	public String get_member_phone (String member_userid);
	public String output_buy_id0(String cart_id);
	public String[] output_buy_id1(String revenge_cart_id);
	public BuyVO show_buy_information0(String buy_ordernum);
	public ArrayList<BuyVO> show_buy_information1(String buy_ordernum);
	public void input_buy_ordernum(String buy_odrernum,String revenge_cart_id);
	public ArrayList<CartVO> product_buy_done_revenge(String buy_ordernum);
	public void input_cart_information(CartVO cvo);
	public void input_revenge_cart_information(CartVO cvo);
	public CartVO[] show_revenge_cart_information(String revenge_cart_id);
	public int match_cart_product_id(int cart_product_id);
	public void input_match_product_countup(int cart_count,int product_id);
	
}
