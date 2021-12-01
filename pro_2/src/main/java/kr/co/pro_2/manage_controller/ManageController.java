package kr.co.pro_2.manage_controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class ManageController {
	
	@Autowired
	SqlSession sqlSession;
}
