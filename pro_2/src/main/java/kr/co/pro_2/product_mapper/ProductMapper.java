package kr.co.pro_2.product_mapper;

import java.util.ArrayList;

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
	public void product_readnum(int id);
	public ProductVO product_content(int id);
	public void product_buy(CartVO cvo);
	public int product_call_member_id();
	public void cart_input_ordernum();
	
	
}
