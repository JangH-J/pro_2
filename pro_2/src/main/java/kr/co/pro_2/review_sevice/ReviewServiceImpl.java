package kr.co.pro_2.review_sevice;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.pro_2.review_mapper.ReviewMapper;
import kr.co.pro_2.review_vo.ReviewVO;

@Service
@Qualifier("rs")
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewMapper mapper;
	private final String module="/review";

	@Override
	public String write_ok(ReviewVO rvo) {
		// TODO Auto-generated method stub
		
		mapper.write_ok(rvo);
		return "redirect:"+module+"/list";
	}
	
	@Override
	public String list(Model model)
	{
		ArrayList<ReviewVO> rlist=mapper.list();
		model.addAttribute("rlist",rlist);
		return module+"/list";
	}

	@Override
	public String content(HttpServletRequest request, Model model) {
		
		String review_id = request.getParameter("review_id");
		ReviewVO rvo = mapper.content(review_id);
		model.addAttribute("rvo", rvo);
		return module+"/content";
	}

	@Override
	public String readnum(String review_id) {
		
		mapper.readnum(review_id);
		return "redirect:"+module+"/content?review_id="+review_id;
		
	}

	@Override
	public String delete(HttpServletRequest request) {
	
		return null;
	}
	
	
}
