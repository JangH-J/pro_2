package kr.co.pro_2.member_mapper;

import kr.co.pro_2.member_vo.MemberVO;

public interface MemberMapper {
	public void member_input_ok(MemberVO mvo);
	public int userid_check(String userid);
	public MemberVO login_ok(MemberVO mvo);
	public String userid_search_ok(MemberVO mvo);
	public String pwd_search_ok(MemberVO mvo);
	public int nickname_check(String nickname);
	public String nickname_search_ok(MemberVO mvo);
}
