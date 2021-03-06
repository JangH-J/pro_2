package kr.co.pro_2.manage_service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.pro_2.manage_mapper.ManageMapper;
import kr.co.pro_2.manage_vo.ManageVO;
import kr.co.pro_2.member_vo.MemberVO;
import kr.co.pro_2.product_vo.ProductVO;


@Service
@Qualifier("mngs")
public class ManageServiceImpl implements ManageService {

	@Autowired
	private ManageMapper mapper;
	
	private final String module = "/manage";

	@Override
	public String isadmin(HttpSession session,Model model) {
		// 세션변수에 userid가 있으면
		if(session.getAttribute("member_userid").toString()!=null) {
			String member_userid = session.getAttribute("member_userid").toString();
			int isadmin = mapper.isadmin(member_userid);
				if(isadmin==1) {	// admin 사용자이면 관리자 페이지로 이동
					model.addAttribute("member_admin",session.getAttribute("member_userid"));
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
		return "redirect:/gongji/gongji_content?gongji_id="+gongji_id;
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
		return "redirect:/gongji/gongji_list";
	}

	@Override
	public String product_manage_regist_done(ProductVO pvo,HttpServletRequest request) throws Exception {
		
		String path=request.getRealPath("resources/img");
		int max=1024*1024*10;
		MultipartRequest multi=new MultipartRequest(request,path,max,"UTF-8",new DefaultFileRenamePolicy());
		ProductVO pvo1=new ProductVO();
		pvo1.setProduct_img(multi.getFilesystemName("product_img"));
		pvo1.setProduct_name(multi.getParameter("product_name"));
		pvo1.setProduct_size(multi.getParameter("product_size"));
		pvo1.setProduct_kinds(Integer.parseInt(multi.getParameter("product_kinds")));
		pvo1.setProduct_price(Integer.parseInt(multi.getParameter("product_price")));
		pvo1.setProduct_throw(Integer.parseInt(multi.getParameter("product_throw")));
		pvo1.setProduct_material(multi.getParameter("product_material"));
		pvo1.setProduct_style(multi.getParameter("product_style"));
		pvo1.setProduct_color(multi.getParameter("product_color"));
		pvo1.setProduct_purpose(multi.getParameter("product_purpose"));
		
		mapper.product_manage_regist_done(pvo1);
		
		return "redirect:/product_manage_list";
	}

	@Override
	public String product_manage_list(Model model) {
		ArrayList<ProductVO> product_manage_list=mapper.product_manage_list();
		model.addAttribute("product_manage_list",product_manage_list);
		
		
		return module+"/product/product_manage_list";
	}
	
	@Override
	public String member_manage_list(Model model) {
		ArrayList<MemberVO> member_manage_list=mapper.member_manage_list();
		
		model.addAttribute("member_manage_list",member_manage_list);
		
		return module+"/member/member_manage_list";
	}
	
	
}
