package kr.co.pro_2.manage_controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.pro_2.manage_service.CustomService;
import kr.co.pro_2.manage_vo.CustomVO;

@Controller
public class CustomController {
  
	@Autowired
	@Qualifier("cs")
	private CustomService cservice;
	
	private final String module="/manage/custom";
	
	@RequestMapping("/custom/custom_write")
	public String custom_write()
	{
		return module+"/custom_write";
	}
	
	@RequestMapping("/custom/custom_write_ok")
	public String custom_write_ok(CustomVO cvo, HttpSession session)
	{
		return cservice.custom_write_ok(cvo,session);
	}
	
	@RequestMapping("/custom/custom_list")
	public String custom_list(Model model)
	{
		return cservice.custom_list(model);
	}
	
	@RequestMapping("/custom/custom_readnum")
	public String custom_readnum(HttpServletRequest request)
	{
		return cservice.custom_readnum(request.getParameter("custom_id"));
	}
	
	@RequestMapping("/custom/custom_content")
	public String custom_content(HttpServletRequest request,Model model)
	{
		return cservice.custom_content(request.getParameter("custom_id"),model);
	}
	
	@RequestMapping("/custom/custom_rewrite")
	public String custom_rewrite(HttpServletRequest request,Model model)
	{
		model.addAttribute("custom_grp", request.getParameter("custom_grp"));
		model.addAttribute("custom_seq", request.getParameter("custom_seq"));
		model.addAttribute("custom_depth", request.getParameter("custom_depth"));
		
		return module+"/custom_rewrite";
	}
	
	@RequestMapping("/custom/custom_rewrite_ok")
	public String custom_rewrite_ok(CustomVO cvo,HttpSession session)
	{
		return cservice.custom_rewrite_ok(cvo,session);
	}
	
	@RequestMapping("/custom/custom_delete")
	public String custom_delete(HttpServletRequest request)
	{
		return cservice.custom_delete(request);
	}
	
	@RequestMapping("/custom/custom_update")
	public String custom_update(HttpServletRequest request, Model model)
	{
		return cservice.custom_update(request.getParameter("custom_id"), model);
	}
	
	@RequestMapping("/custom/custom_update_ok")
	public String custom_update_ok(CustomVO cvo,HttpSession session)
	{
		return cservice.custom_update_ok(cvo,session);
	}
}