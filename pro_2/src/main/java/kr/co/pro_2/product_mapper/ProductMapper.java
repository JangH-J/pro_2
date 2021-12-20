package kr.co.pro_2.product_mapper;

import java.util.ArrayList;

import kr.co.pro_2.member_vo.MemberVO;
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
	public void product_buy0 (String cart_ordernum,int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_size0,    int cart_throw,      String cart_material,String cart_color0,    String cart_purpose,String cart_group, String cart_userid,  int cart_product_id,String cart_order_phone);
	public void product_buy1 (String cart_ordernum,int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_size0,    String cart_material,String cart_color0,  String cart_purpose,   String cart_group,  String cart_userid,int cart_product_id, String cart_order_phone);
	public void product_buy2 (String cart_ordernum,int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_size0,    String cart_material,String cart_color0,  String cart_purpose,   String cart_group,  String cart_userid,int cart_product_id, String cart_order_phone);
	public void product_buy3 (String cart_ordernum,int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_size0,    String cart_size1,   String cart_style0,  String cart_style1,    String cart_color0, String cart_color1,String cart_purpose ,String cart_group,  String cart_userid,     int cart_product_id,String cart_order_phone);
	public void product_buy4 (String cart_ordernum,int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_color0,   String cart_purpose, String cart_group,   String cart_userid,    int cart_product_id,String cart_order_phone);
	public void product_buy5 (String cart_ordernum,int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_material, String cart_purpose, String cart_group,   String cart_userid,    int cart_product_id,String cart_order_phone);
	public void product_buy6 (String cart_ordernum,int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_material, String cart_group,   String cart_userid,  int cart_product_id,   String cart_order_phone);
	public void product_buy7 (String cart_ordernum,int cart_kinds,int cart_count,String cart_name,int cart_price,String cart_group,    String cart_userid,  int cart_product_id, String cart_order_phone);
	public int product_call_member_id ();
	public void cart_input_ordernum ();
	public ArrayList<CartVO> product_payment (String cart_group);
	public MemberVO show_member_information (String member_userid);
	public void input_member_information (MemberVO mvo);
	/*public void input_cart_information (ArrayList<CartVO> cvo);*/
	public String get_member_phone (String member_userid);
	public ArrayList<CartVO> product_cart_list(String member_userid);
	public ProductVO product_output_img(String product_id);
}
