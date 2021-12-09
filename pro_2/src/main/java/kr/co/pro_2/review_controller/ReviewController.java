package kr.co.pro_2.review_controller;


import javax.servlet.http.HttpServletRequest;

import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.pro_2.review_sevice.ReviewService;
import kr.co.pro_2.review_vo.ReviewVO;

@Controller
@RequestMapping("/review")

public class ReviewController {
	
	@Autowired
	@Qualifier("rs")
	private ReviewService rservice;
	
	private final String module="/review";
	
	@RequestMapping("/write")
	public String write() {
		return module+"/write";
	}
	
	@RequestMapping("/write_ok")
	public String write_ok(ReviewVO rvo)
	{
		return rservice.write_ok(rvo);
	}
	
	@RequestMapping("/list")
	public String list(Model model) 
	{
		return rservice.list(model);
	}
	
	@RequestMapping("/content")
	public String content(HttpServletRequest request,Model model)
	{
		return rservice.content(request, model);
	}
	
	@RequestMapping("/review_readnum")
	public String review_readnum(HttpServletRequest request)
	{
		return rservice.readnum(request.getParameter("review_id"));
	}
}
	
