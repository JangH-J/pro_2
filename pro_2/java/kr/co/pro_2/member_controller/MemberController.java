package kr.co.pro_2.member_controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.pro_2.member_service.MemberService;
import kr.co.pro_2.member_vo.MemberVO;
import kr.co.pro_2.util.MailSend;
 
 

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	@Qualifier("es")
	private MemberService mservice;
	
	private final String module="/member";

	
	@RequestMapping("/member_input")
	public String member_input()
	{
		return module+"/member_input";
	}
	
	@RequestMapping("/member_input_ok")
	public String member_input_ok(MemberVO mvo)
	{
		mservice.member_input_ok(mvo);
		return "redirect:"+module+"/login";
	}
	
	@RequestMapping("/userid_check")
	public void userid_check(HttpServletRequest request,PrintWriter out) // 아이디의 사용여부를 javascript로 전달
	{
		String userid=request.getParameter("member_userid");
		int cnt=mservice.userid_check(userid);
		out.print(cnt); // 아이디로 검색한 레코드 수
	}
	
	@RequestMapping("/nickname_check")
	public void nickname_check(HttpServletRequest request,PrintWriter out) // 아이디의 사용여부를 javascript로 전달
	{
		String nickname=request.getParameter("member_nickname");
		int cnt=mservice.nickname_check(nickname);
		out.print(cnt); // 아이디로 검색한 레코드 수
	}
	
	@RequestMapping("/login")
	public String login()
	{
		return module+"/login";
	}
	
	@RequestMapping("login_ok")
	public String login_ok(MemberVO mvo,HttpSession session)
	{
		return mservice.login_ok(mvo,session);
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session)
	{
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping("/userid_search_ok")
	public void userid_search_ok(MemberVO mvo,PrintWriter out)
	{
		String member_userid=mservice.userid_search_ok(mvo);
		if(member_userid==null)
			out.print("0");
		else
		    out.print(member_userid);
	}
	
	
	@RequestMapping("/pwd_search_ok")
	public void pwd_search_ok(MemberVO mvo,PrintWriter out) throws Exception
	{
		System.out.println("pwd_search_ok");
		String member_pwd=mservice.pwd_search_ok(mvo);
		System.out.println(mvo.getMember_email()+" "+mvo.getMember_name()+" "+mvo.getMember_userid());
		if(member_pwd==null)
			out.print("0");
		else
		{
		    //out.print(member_pwd); 
			// 이메일에 비밀번호 전송
			MailSend ms=MailSend.getInstance();
			String email=mvo.getMember_email();
			String subject=mvo.getMember_name()+"님의 비밀번호 입니다";
			String body="당신의 비밀번호는 "+member_pwd+"입니다";
			ms.setEmail(email, subject, body);
			out.print("1");
		}
	 }
	
	@RequestMapping("/mypage")
	public String mypage(HttpSession session,Model model)
	{
		return mservice.mypage(session,model);
	}
	
	@RequestMapping("/mypage_update")
	public String mypage_update(HttpSession session,Model model)
	{
		// 현재 수정할 사용자의 레코드를 읽어와서 전달
		return mservice.mypage_update(session,model);
	}
	
	@RequestMapping("/mypage_update_ok")
	public String mypage_update_ok(MemberVO mvo,HttpSession session)
	{
		return mservice.mypage_update_ok(mvo,session);
	}
	
	@RequestMapping("/change_pwd")
	public String change_pwd(HttpServletRequest request,
			HttpSession session)
	{
		// 이전비밀번호확인, 새로운 비밀번호 변경, 로그아웃, main/index로 이동
		return mservice.change_pwd(request,session);
	}
	
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request, HttpSession session)
	{
		int member_id=Integer.parseInt(request.getParameter("member_id"));
		
		return mservice.delete(member_id,session);
	}

}
