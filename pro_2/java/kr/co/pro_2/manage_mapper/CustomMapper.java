package kr.co.pro_2.manage_mapper;

import java.util.ArrayList;

import kr.co.pro_2.manage_vo.CustomVO;

public interface CustomMapper {
	public void member_write_ok(CustomVO cvo);
	public void nonmember_write_ok(CustomVO cvo);
	public int get_custom_grp();
	public ArrayList<CustomVO> custom_list();
	public void custom_readnum(String custom_id);
	public CustomVO custom_content(String custom_id);
	public void member_rewrite_ok(CustomVO cvo);
	public void nonmember_rewrite_ok(CustomVO cvo);
	public void up_custom_seq(int custom_seq,int custom_grp);
	public void custom_delete(int custom_id);
	public int custom_ispwd(int custom_id, String custom_pwd);
	public void custom_update_ok(CustomVO cvo);
}