package kr.co.pro_2.review_controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	public String write_ok(ReviewVO rvo,HttpServletRequest request)throws Exception
	{
		return rservice.write_ok(rvo,request);
	}
	
	@RequestMapping("/list")
	public String list(Model model) 
	{
		return rservice.list(model);
	}
	
	@RequestMapping("/content")
	public String content(HttpServletRequest request,Model model,HttpSession session)
	{
		return rservice.content(request, model,session);
	}
	
	@RequestMapping("/readnum")
	public String readnum(HttpServletRequest request)
	{
		return rservice.readnum(Integer.parseInt(request.getParameter("review_id")));
	}
	
	
	@RequestMapping("/update")
	public String update(HttpServletRequest request,Model model)
	{
		return rservice.update(Integer.parseInt(request.getParameter("review_id")), model);
	}	
	
	@RequestMapping("/update_ok")
	public String update_ok(ReviewVO rvo,HttpServletRequest request,HttpSession session)throws Exception
	{
		return rservice.update_ok(rvo,request, session);
	}
	
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request)
	{
		return rservice.delete(request);
	}
	
}
	
