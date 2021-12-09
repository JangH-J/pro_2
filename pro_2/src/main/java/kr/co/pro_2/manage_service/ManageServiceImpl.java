package kr.co.pro_2.manage_service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.pro_2.manage_mapper.ManageMapper;
import kr.co.pro_2.manage_vo.ManageVO;


@Service
@Qualifier("mngs")
public class ManageServiceImpl implements ManageService {

	@Autowired
	private ManageMapper mapper;
	
	private final String module = "manage";

	@Override
	public String isadmin(HttpSession session) {
		// 세션변수에 userid가 있으면
		if(session.getAttribute("member_userid").toString()!=null) {
			String member_userid = session.getAttribute("member_userid").toString();
			int isadmin = mapper.isadmin(member_userid);
			if(isadmin==1) {	// admin 사용자이면 관리자 페이지로 이동
				return module+"/home/manage_index";
			}else {		// admin 사용자가 아니면 인덱스 페이지로 이동
				return "redirect:/main/index";
			}
		}else {	// 세션변수에 userid가 없으면 인덱스 페이지로 이동(url 직접 쳐서 들어오는 것 방지)
			return "redirect:/main/index";
		}
	}
}
