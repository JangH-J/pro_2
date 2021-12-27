package kr.co.pro_2.member_mapper;

import kr.co.pro_2.member_vo.MemberVO;

public interface MemberMapper {
	public void member_input_ok(MemberVO mvo);
	public int userid_check(String member_userid);
	public MemberVO login_ok(MemberVO mvo);
	public String userid_search_ok(MemberVO mvo);
	public String pwd_search_ok(MemberVO mvo);
	public int nickname_check(String member_nickname);
	public MemberVO mypage(String member_userid);
	public void mypage_update_ok(MemberVO mvo);
	public int ispwd(String before_pwd,String member_userid);
	public void change_pwd(String member_pwd,String member_userid);
	public void delete(int member_id);
}
