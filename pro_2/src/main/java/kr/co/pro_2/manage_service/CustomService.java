package kr.co.pro_2.manage_service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import kr.co.pro_2.manage_vo.CustomVO;

public interface CustomService {
	public String custom_write_ok(CustomVO cvo,HttpSession session);
	public String custom_list(Model model);
	public String custom_readnum(String custom_id);
	public String custom_content(String custom_id, Model model);
	public String custom_rewrite_ok(CustomVO cvo,HttpSession session);
	public String custom_delete(HttpServletRequest request);
	public String custom_update(String id, Model model);
	public String custom_update_ok(CustomVO cvo,HttpSession session);
}
