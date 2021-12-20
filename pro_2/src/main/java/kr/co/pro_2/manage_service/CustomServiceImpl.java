package kr.co.pro_2.manage_service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.pro_2.manage_mapper.CustomMapper;
import kr.co.pro_2.manage_vo.CustomVO;

@Service
@Qualifier("cs")
public class CustomServiceImpl implements CustomService{
   
	@Autowired
	private CustomMapper mapper;
	
	private final String module="/manage/custom";

	@Override
	public String custom_write_ok(CustomVO cvo, HttpSession session) {
		// grp값을 처리 해야 한다.
		int custom_grp=mapper.get_custom_grp();
		cvo.setCustom_grp(custom_grp+1);
		// 회원인 경우, 비회원인 경우 처리가 달라야 된다..
		if(session.getAttribute("member_userid")==null)
		{
			mapper.nonmember_write_ok(cvo);
		}
		else
		{
			// 회원인 경우 세션변수의 아이디를 vo에 userid변수에 setter
			cvo.setCustom_userid(session.getAttribute("member_userid").toString());
			System.out.println(cvo.getCustom_userid());
			mapper.member_write_ok(cvo);
		}
		return "redirect:/custom/custom_list";
	}
	
	@Override
	public String custom_list(Model model) {
		model.addAttribute("custom_list",mapper.custom_list());
		return module+"/custom_list";
	}
	
	@Override
	public String custom_readnum(String custom_id) {
		mapper.custom_readnum(custom_id);
		return "redirect:/custom/custom_content?custom_id="+custom_id;
	}
	
	@Override
	public String custom_content (String custom_id, Model model) {
		model.addAttribute("cvo",mapper.custom_content(custom_id));
		return module+"/custom_content";
	}
	
	@Override
	public String custom_rewrite_ok(CustomVO cvo,HttpSession session) {
		
		// 새로운 레코드 추가 전에 새로운 레코드보다 뒤에 출력될 내용은 seq값을 1증가시킨다..
		mapper.up_custom_seq(cvo.getCustom_seq(),cvo.getCustom_grp());
		
		if(session.getAttribute("member_userid")==null)
		{
			mapper.nonmember_rewrite_ok(cvo);
		}
		else
		{
			// 회원인 경우 세션변수의 아이디를 vo에 userid변수에 setter
			cvo.setCustom_userid(session.getAttribute("member_userid").toString());
			mapper.member_rewrite_ok(cvo);
		}
		return "redirect:/custom/custom_list";
	}

	@Override
	public String custom_delete(HttpServletRequest request) {
		int custom_id=Integer.parseInt(request.getParameter("custom_id"));
		String custom_pwd=request.getParameter("custom_pwd");
		
		if(request.getParameter("tt")!=null)   // 로그인한 회원이 자기글일 경우 tt의 값은 null이 아님
		{
			mapper.custom_delete(custom_id);
			return "redirect:/custom/custom_list";
		}
		else    // tt가 null인경우는 비밀번호를 입력후 삭제
		{
			int chk=mapper.custom_ispwd(custom_id,custom_pwd);  // 비밀번호 체크
			if(chk==1) // 맞으면
			{ 
				mapper.custom_delete(custom_id);
				return "redirect:/custom/custom_list";
			}
			else // 틀리면
			{
				return "redirect:/custom/custom_content?custom_id="+custom_id;
			}
		}
	}

	@Override
	public String custom_update(String custom_id, Model model) {
		model.addAttribute("cvo",mapper.custom_content(custom_id));
		return module+"/custom_update";
	}

	@Override
	public String custom_update_ok(CustomVO cvo, HttpSession session) {
		if(session.getAttribute("custom_userid")==null)
		{
			int chk=mapper.custom_ispwd(cvo.getCustom_id(),cvo.getCustom_pwd());	
			if(chk==1) // 맞으면
			{ 
				mapper.custom_update_ok(cvo);
				return "redirect:/custom/custom_content?custom_id="+cvo.getCustom_id();
			}
			else // 클리면
			{
				return "redirect:/custom/custom_content?custom_id="+cvo.getCustom_id();
			}
		}
		else
		{
			mapper.custom_update_ok(cvo);
			return "redirect:/custom/custom_content?custom_id="+cvo.getCustom_id();
		}
 
	}
}
