package kr.co.pro_2.member_service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.pro_2.member_mapper.MemberMapper;
import kr.co.pro_2.member_vo.MemberVO;

@Service
@Qualifier("ms")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public void member_input_ok(MemberVO mvo) {
		mapper.member_input_ok(mvo);
	}
	
	@Override
	public int userid_check(String member_userid) {
		return mapper.userid_check(member_userid);
	}

	@Override
	public String login_ok(MemberVO mvo,HttpSession session) {
		
		MemberVO mvo2=mapper.login_ok(mvo);
		// 로그인을 한다 => 아이디,비번체크 => 세션변수를 할당
		if(mvo2==null) // 아이디, 비번 잘못입력
		{
			return "/member/login";
		}
		else
		{
			session.setAttribute("member_userid", mvo2.getMember_userid());
			session.setAttribute("member_name", mvo2.getMember_name());
			return "/main/index";
		}
	}
	
	@Override
	public String userid_search_ok(MemberVO mvo) {
		return mapper.userid_search_ok(mvo);
	}

	@Override
	public String pwd_search_ok(MemberVO mvo) {
		return mapper.pwd_search_ok(mvo);
	}
	
	@Override
	public int nickname_check(String member_nickname) {
		return mapper.nickname_check(member_nickname);
	}
	
	@Override
	public String nickname_search_ok(MemberVO mvo) {
		return mapper.nickname_search_ok(mvo);
	}
}
