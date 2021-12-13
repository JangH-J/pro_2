package kr.co.pro_2.manage_service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.pro_2.manage_mapper.ManageMapper;
import kr.co.pro_2.manage_vo.ManageVO;
import kr.co.pro_2.product_vo.ProductVO;


@Service
@Qualifier("mngs")
public class ManageServiceImpl implements ManageService {

	@Autowired
	private ManageMapper mapper;
	
	private final String module = "/manage";

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

	@Override
	public void gongji_write_ok(ManageVO mvo) {
		mapper.gongji_write_ok(mvo);		
	}

	@Override
	public String gongji_list(Model model) {
		model.addAttribute("gongji_list",mapper.gongji_list());
		return module+"/gongji/gongji_list";
	}

	@Override
	public String gongji_readnum(HttpServletRequest request) {
		String gongji_id=request.getParameter("gongji_id");
		mapper.gongji_readnum(gongji_id);
		return "redirect:"+module+"/gongji/gongji_content?gongji_id="+gongji_id;
	}

	@Override
	public String gongji_content(HttpServletRequest request, Model model) {
		String gongji_id=request.getParameter("gongji_id");
		ManageVO mvo=mapper.gongji_content(gongji_id);
		mvo.setGongji_content(mvo.getGongji_content().replace("\r\n", "<br>"));
		model.addAttribute("mvo",mvo);
		return module+"/gongji/gongji_content";
	}

	@Override
	public String gongji_delete(HttpServletRequest request) {
		String gongji_id=request.getParameter("gongji_id");
		mapper.gongji_delete(gongji_id);
		return "redirect:"+module+"/gongji/gongji_list";
	}

	@Override
	public String product_manage_regist_done(ProductVO pvo) {
		mapper.product_manage_regist_done(pvo);
		return "redirect:"+module+"/product/product_manage_list";
	}

	@Override
	public String product_manage_list(Model model) {
		ArrayList<ProductVO> product_manage_list=mapper.product_manage_list();
		
		model.addAttribute("product_manage_list",product_manage_list);
		
		
		return module+"/product/product_manage_list";
	}
	
	
	
}
