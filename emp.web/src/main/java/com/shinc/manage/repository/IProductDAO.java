package com.shinc.manage.repository;

import java.util.List;

import com.shinc.manage.domain.ProductVO;

public interface IProductDAO {
	List<ProductVO> getProductInfoByKeyword(String keyword);
	List<ProductVO> getProductInfoByLocation(String location);
	List<ProductVO> getProductInfoByDeptname(String deptname);
	ProductVO getProductInfoByBarcode(String barcode);
	List<ProductVO> getProductInfoByName(String name);
	List<ProductVO> getProductInfoByID(String id);
	List<ProductVO> getProductInfoByDepartmentAndCategory(String dept, String category);
}
