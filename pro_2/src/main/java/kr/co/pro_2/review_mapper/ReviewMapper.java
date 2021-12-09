package kr.co.pro_2.review_mapper;

import java.util.ArrayList;

import kr.co.pro_2.review_vo.ReviewVO;

public interface ReviewMapper {

	public void write_ok(ReviewVO rvo);
	public ArrayList<ReviewVO> list();
}
