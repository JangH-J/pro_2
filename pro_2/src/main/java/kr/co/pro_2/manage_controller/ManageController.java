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
	
	@RequestMapping("manage_index")
	public String manage_index(HttpSession session) {
		service.isadmin(session);
		return "manage/home/manage_index";
	}
	
	@RequestMapping("product_manage")
	public String product_manage() {
		return "manage/product/product_manage";
	}
	
	@RequestMapping("member_manage")
	public String member_manage() {
		return "manage/member/member_manage";
	}
	
	@RequestMapping("gongji_manage")
	public String gongji_manage() {
		return "manage/gongji/gongji_manage";
	}
	
	@RequestMapping("review_manage")
	public String review_manage() {
		return "manage/review/review_manage";
	}
}
