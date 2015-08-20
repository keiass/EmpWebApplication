package com.shinc.manage.service;

import java.util.List;

import com.shinc.manage.domain.ProductVO;

public interface IManageService {
	
	List<ProductVO> getProductInfoByKeyword(String keyword);
	ProductVO getProductInfoByBarcode(String barcode);
	List<ProductVO> getProductInfoByLocation(String location);
	List<ProductVO> getProductInfoByDeptname(String deptname);
	List<ProductVO> getProductInfoByName(String name);
	List<ProductVO> getProductInfoByID(String id);
	List<ProductVO> getProductInfoByDepartmentAndCategory(String dept, String category);
}
