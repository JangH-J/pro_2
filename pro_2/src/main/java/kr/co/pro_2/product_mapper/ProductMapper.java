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
	public void product_buy0 (int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_size0,    int cart_throw,      String cart_material,String cart_color0,    String cart_purpose,String cart_group, String cart_userid,  int cart_product_id,String cart_order_phone,String cart_writeday);
	public void product_buy1 (int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_size0,    String cart_material,String cart_color0,  String cart_purpose,   String cart_group,  String cart_userid,int cart_product_id, String cart_order_phone,String cart_writeday);
	public void product_buy2 (int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_size0,    String cart_material,String cart_color0,  String cart_purpose,   String cart_group,  String cart_userid,int cart_product_id, String cart_order_phone,String cart_writeday);
	public void product_buy3 (int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_size0,    String cart_size1,   String cart_style0,  String cart_style1,    String cart_color0, String cart_color1,String cart_purpose ,String cart_group,  String cart_userid,     int cart_product_id,String cart_order_phone,String cart_writeday);
	public void product_buy4 (int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_color0,   String cart_purpose, String cart_group,   String cart_userid,    int cart_product_id,String cart_order_phone,String cart_writeday);
	public void product_buy5 (int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_material, String cart_purpose, String cart_group,   String cart_userid,    int cart_product_id,String cart_order_phone,String cart_writeday);
	public void product_buy6 (int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_material, String cart_group,   String cart_userid,  int cart_product_id,   String cart_order_phone,String cart_writeday);
	public void product_buy7 (int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_group,    String cart_userid,  int cart_product_id, String cart_order_phone,String cart_writeday);
	public int product_call_member_id ();
	public void cart_input_ordernum ();
	public ArrayList<CartVO> product_payment (String cart_group);
	public MemberVO show_member_information (String member_userid);
	public void input_member_information (MemberVO mvo);
	/*public void input_cart_information (CartVO cvo);*/
	public String get_member_phone (String member_userid);
	public ArrayList<CartVO> product_cart_list(String member_userid);
	public ArrayList<ProductVO> product_output_img(String cart_group);
	public void product_buy_done(String cart_group);
	public CartVO output_cart_ordernum(String cart_group);
	public int output_cart_id(int cart_count, int cart_price, String cart_name, String cart_userid,String cart_writeday);
	public CartVO cart_single_output(String cart_id);
	public ArrayList<CartVO> cart_revenge_output(String cart_group);
	public void input_recipient_member_information(String buy_ordernum,String buy_userid,String buy_order_phone,String buy_recipient_name,String buy_recipient_phone,String buy_recipient_address,String cart_id);
	public CartVO show_cart_information(String cart_id);
	public int output_buy_id(String buy_etc);
	public String output_member_userid(String buy_id);
	public void product_cart_delete(String cart_id);
}
