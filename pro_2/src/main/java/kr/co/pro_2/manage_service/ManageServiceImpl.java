package kr.co.pro_2.manage_service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.pro_2.manage_mapper.ManageMapper;


@Service
//@Qualifier("ms")
public class ManageServiceImpl implements ManageMapper {

	@Autowired
	private ManageMapper mapper;
}
