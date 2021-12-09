package kr.co.pro_2.review_sevice;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.co.pro_2.review_vo.ReviewVO;

public interface ReviewService {

	public String write_ok(ReviewVO rvo);
	public String list(Model model);
	public String content(HttpServletRequest request,Model model);
	public String readnum(String review_id);
}
