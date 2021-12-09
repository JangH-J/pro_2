package kr.co.pro_2.manage_controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.pro_2.manage_service.ManageService;
import kr.co.pro_2.manage_vo.ManageVO;

@Controller
public class ManageController {
	
	@Autowired
	@Qualifier("mngs")
	private ManageService service;
	
	private final String module = "/manage";
	
	@RequestMapping("manage_index")
	public String manage_index(HttpSession session) {
		return service.isadmin(session);		
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
	
	@RequestMapping("review_manage")
	public String review_manage() {
		return module+"/review/review_manage";
	}
}
