package kr.co.pro_2.review_sevice;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.pro_2.review_mapper.ReviewMapper;
import kr.co.pro_2.review_vo.ReviewVO;

@Service
@Qualifier("rs")
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewMapper mapper;
	private final String module="/review";

	@Override
	public String write_ok(ReviewVO rvo,HttpServletRequest request) throws Exception{
		
		String path=request.getRealPath("resources/img");
		int max=1024*1024*25;
		MultipartRequest multi=new MultipartRequest(request,path,max,"UTF-8",new DefaultFileRenamePolicy());
		ReviewVO rvo1=new ReviewVO();
		
		rvo1.setReview_filename(multi.getFilesystemName("review_filename"));
		rvo1.setReview_title(multi.getParameter("review_title"));
		rvo1.setReview_content(multi.getParameter("review_content"));
		rvo1.setReview_name(multi.getParameter("review_name"));
		
		mapper.write_ok(rvo1);
		
		
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
	public String content(HttpServletRequest request, Model model,HttpSession session) {
		
		int review_id =Integer.parseInt( request.getParameter("review_id"));
		ReviewVO rvo = mapper.content(review_id);
		model.addAttribute("rvo", rvo);
		model.addAttribute("session_member_userid",session.getAttribute("member_userid"));
		
		
		return module+"/content";
	}

	@Override
	public String readnum(int review_id) {
		
		mapper.readnum(review_id);
		return "redirect:"+module+"/content?review_id="+review_id;
		
	}

	@Override
	public String update(int review_id, Model model) {
			
		model.addAttribute("rvo",mapper.content(review_id));
		return module+"/update";
	}

	@Override
	public String update_ok(ReviewVO rvo, HttpServletRequest request, HttpSession session)throws Exception {
		
		String path=request.getRealPath("resources/img");
		int max=1024*1024*25;
		MultipartRequest multi=new MultipartRequest(request,path,max,"UTF-8",new DefaultFileRenamePolicy());
		ReviewVO rvo2=new ReviewVO();
		System.out.println(multi.getFilesystemName("review_filename"));
		rvo2.setReview_filename(multi.getFilesystemName("review_filename"));
	    rvo2.setReview_id(Integer.parseInt(multi.getParameter("review_id")));
		rvo2.setReview_title(multi.getParameter("review_title"));
		rvo2.setReview_content(multi.getParameter("review_content"));
		rvo2.setReview_name(multi.getParameter("review_name"));
		System.out.println(rvo2.getReview_filename()+" "+rvo2.getReview_content());
		mapper.update_ok(rvo2);
		
		
		return "redirect:"+module+"/content?review_id="+rvo2.getReview_id();
	}

	
	
	
	@Override
	public String delete(HttpServletRequest request) {
		int review_id=Integer.parseInt(request.getParameter("review_id"));
		String review_pwd=request.getParameter("review_pwd");
		
		if(request.getParameter("tt")!=null)   // 로그인한 회원이 자기글일 경우 tt의 값은 null이 아님
		{
			mapper.delete(review_id);
			return "redirect:"+module+"/list";
		}
		else    // tt가 null인경우는 비밀번호를 입력후 삭제
		{
			int chk=mapper.ispwd(review_id,review_pwd);  // 비밀번호 체크
			if(chk==1) // 맞으면
			{ 
				mapper.delete(review_id);
				return "redirect:"+module+"/list";
			}
			else // 클리면
			{
				return "redirect:"+module+"/content?review_id="+review_id;
			}
		}
	}

	
	
}
