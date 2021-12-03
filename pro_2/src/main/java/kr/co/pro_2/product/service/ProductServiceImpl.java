package kr.co.pro_2.product.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.pro_2.product.mapper.ProductMapper;

@Service
@Qualifier("product_service")
public class ProductServiceImpl {
	
	@Autowired
	private ProductMapper productmapper;
	


	
}
