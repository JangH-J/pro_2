package kr.co.pro_2.manage_service;

import javax.servlet.http.HttpSession;

public interface ManageService {
	
	public String isadmin(HttpSession session);
}
