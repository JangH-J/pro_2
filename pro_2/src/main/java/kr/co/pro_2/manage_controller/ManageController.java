package kr.co.pro_2.manage_controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.pro_2.manage_service.ManageService;

@Controller
public class ManageController {
	
	@Autowired
	@Qualifier("ms")
	private ManageService service;
	
	@RequestMapping("manage_index")
	public String manage_index() {
		return "manage_index()";
	}
}
