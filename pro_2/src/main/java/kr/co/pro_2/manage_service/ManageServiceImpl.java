package kr.co.pro_2.manage_service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.pro_2.manage_mapper.ManageMapper;
import kr.co.pro_2.manage_vo.ManageVO;


@Service
@Qualifier("mngs")
public class ManageServiceImpl implements ManageService {

	@Autowired
	private ManageMapper mapper;

	@Override
	public String isadmin(HttpSession session) {
		// TODO Auto-generated method stub
		return null;
	}
}
