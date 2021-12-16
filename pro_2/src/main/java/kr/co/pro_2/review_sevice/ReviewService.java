package kr.co.pro_2.review_sevice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import kr.co.pro_2.review_vo.ReviewVO;

public interface ReviewService {

	public String write_ok(ReviewVO rvo);
	public String list(Model model);
	public String content(HttpServletRequest request,Model model,HttpSession session);
	public String readnum(int review_id);
	public String update(int review_id,Model model);
	public String update_ok(ReviewVO rvo,HttpSession session);
    public String delete(HttpServletRequest request);
	
}
