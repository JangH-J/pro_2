package kr.co.pro_2.review_sevice;

import java.util.ArrayList;

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
	
	
}
