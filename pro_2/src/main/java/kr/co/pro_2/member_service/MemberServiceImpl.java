package kr.co.pro_2.member_service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.pro_2.member_mapper.MemberMapper;
import kr.co.pro_2.member_vo.MemberVO;

@Service
@Qualifier("es")
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
	public String mypage(HttpSession session, Model model) {
		MemberVO mvo=mapper.mypage(session.getAttribute("member_userid").toString());
		model.addAttribute("mvo",mvo);
		return "/member/mypage";
	}
	
	@Override
	public String mypage_update(HttpSession session, Model model) {
		MemberVO mvo=mapper.mypage(session.getAttribute("member_userid").toString());
		model.addAttribute("mvo",mvo);
		return "/member/mypage_update";
	}
	
	@Override
	public String mypage_update_ok(MemberVO mvo, HttpSession session) {
		mvo.setMember_userid(session.getAttribute("member_userid").toString());
		mapper.mypage_update_ok(mvo);
		return "redirect:/member/mypage";
	}
	
	@Override
	public String change_pwd(HttpServletRequest request, HttpSession session) {
		// 이전비밀번호가 맞는지 확인
		String before_pwd=request.getParameter("before_pwd");
		String pwd=request.getParameter("pwd");
		int chk=mapper.ispwd(before_pwd,session.getAttribute("member_userid").toString());
		if(chk==1) // 이전비밀번호가 맞다
		{
			mapper.change_pwd(pwd,session.getAttribute("member_userid").toString());
			session.invalidate();
			return "redirect:/main/index";
		}
		else
		{
			return "redirect:/member/mypage";
		}
	}

	@Override
	public String delete(int id) {
		// TODO Auto-generated method stub
		mapper.delete(id);
		
		return "redirect:/main/index";
	}
	
}
