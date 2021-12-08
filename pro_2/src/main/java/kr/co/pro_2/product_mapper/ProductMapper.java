package kr.co.pro_2.product_mapper;

import java.util.ArrayList;

import kr.co.pro_2.product_vo.ProductVO;

public interface ProductMapper {

	public ArrayList<ProductVO> glove_list();
	public ArrayList<ProductVO> shoes_list();
	public ArrayList<ProductVO> bat_list();
	public ArrayList<ProductVO> guard_list();
	public ArrayList<ProductVO> leathercream_list();
	public ArrayList<ProductVO> resinbag_list();
	public ArrayList<ProductVO> uniform_list();

}
