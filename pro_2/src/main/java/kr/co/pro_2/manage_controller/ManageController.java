package kr.co.pro_2.manage_controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.pro_2.manage_service.ManageService;
import kr.co.pro_2.manage_vo.ManageVO;
import kr.co.pro_2.product_vo.ProductVO;

@Controller
//@RequestMapping("/manage")
public class ManageController {
	
	@Autowired
	@Qualifier("mngs")
	private ManageService service;
	
	private final String module="/manage";
	
	@RequestMapping("manage_index")
	public String manage_index(HttpSession session,Model model) {
		return service.isadmin(session,model);		
	}
	
	@RequestMapping("product_manage")
	public String product_manage() {
		return module+"/product/product_manage";
	}
	
	@RequestMapping("member_manage")
	public String member_manage() {
		return module+"/member/member_manage";
	}
	
	@RequestMapping("gongji_manage")
	public String gongji_manage() {
		return module+"/gongji/gongji_manage";
	}
	
	@RequestMapping("/gongji/gongji_write")
	public String gongji_write()
	{
		return module+"/gongji/gongji_write";
	}
	
	@RequestMapping("/gongji/gongji_write_ok")
	public String gongji_write_ok(ManageVO mvo)
	{
		service.gongji_write_ok(mvo);
		return "redirect:/gongji/gongji_list";
	}
	
	@RequestMapping("/gongji/gongji_list")
	public String gongji_list(Model model)
	{
		return service.gongji_list(model);
	}
	
	@RequestMapping("/gongji/gongji_readnum")
	public String gongji_readnum(HttpServletRequest request)
	{
		return service.gongji_readnum(request);
	}
	
	@RequestMapping("/manage/gongji/gongji_content")
	public String gongji_content(HttpServletRequest request,Model model)
	{
		return service.gongji_content(request,model);
	}
	
	@RequestMapping("/manage/gongji/gongji_delete")
	public String gongji_delete(HttpServletRequest request)
	{
		return service.gongji_delete(request);
	}
	
	@RequestMapping("member_manage_list")
	public String member_manage_list(Model model)
	{
		return service.member_manage_list(model);
	}
	
	@RequestMapping("review_manage")
	public String review_manage() {
		return module+"/review/review_manage";
	}
	@RequestMapping("product_manage_regist")
	public String product_manage_regist() {
		
		return module+"/product/product_manage_regist";
	}
	@RequestMapping("product_manage_regist_done")
	public String product_manage_regist_done(ProductVO pvo,HttpServletRequest request)throws Exception {
		
		return service.product_manage_regist_done(pvo,request);
	}
	@RequestMapping("product_manage_list")
	public String product_manage_list(Model model) {
		
		return service.product_manage_list(model);
	}
}
