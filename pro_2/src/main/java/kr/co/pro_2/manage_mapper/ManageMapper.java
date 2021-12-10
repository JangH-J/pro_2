package kr.co.pro_2.manage_mapper;

import java.util.ArrayList;

import kr.co.pro_2.manage_vo.ManageVO;
import kr.co.pro_2.product_vo.ProductVO;



public interface ManageMapper {
	
	public int isadmin(String member_userid);
	public void gongji_write_ok(ManageVO mvo);
	public ArrayList<ManageVO> gongji_list();
	public void gongji_readnum(String gongji_id);
	public ManageVO gongji_content(String gongji_id);
	public void gongji_delete(String gongji_id);
	public void product_manage_regist_done(ProductVO pvo);
	
}
