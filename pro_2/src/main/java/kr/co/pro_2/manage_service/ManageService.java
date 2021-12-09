package kr.co.pro_2.manage_service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import kr.co.pro_2.manage_vo.ManageVO;


public interface ManageService {
	
	public String isadmin(HttpSession session);
	public void gongji_write_ok(ManageVO mvo);
	public String gongji_list(Model model);
	public String gongji_readnum(HttpServletRequest request);
	public String gongji_content(HttpServletRequest request,Model model);
	public String gongji_delete(HttpServletRequest request);
}
