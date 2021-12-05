package kr.co.pro_2.manage_service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.pro_2.manage_mapper.ManageMapper;
import kr.co.pro_2.manage_vo.ManageVO;


@Service
@Qualifier("mngs")
public class ManageServiceImpl implements ManageService {

//	@Autowired
//	private ManageMapper mapper;
	
//	@Override
//	public String manage_index() {
//		int chk = mapper.isadmin();
//		return "manage/home/manage_index";
//	}
}
