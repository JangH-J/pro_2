package kr.co.pro_2.review_mapper;

import java.util.ArrayList;

import kr.co.pro_2.review_vo.ReviewVO;

public interface ReviewMapper {

	public void write_ok(ReviewVO rvo1);
	public ArrayList<ReviewVO> list();
	public ReviewVO content(int review_id);
	public void readnum(int review_id);
	public int ispwd(int review_id, String review_pwd);
	public void update_ok(ReviewVO rvo2);
	public void noimg_update_ok(String title,String content,int review_id);
	public void delete(int id);
}
