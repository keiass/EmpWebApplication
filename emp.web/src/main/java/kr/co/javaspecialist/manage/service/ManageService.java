package kr.co.javaspecialist.manage.service;

import java.util.List;

import kr.co.javaspecialist.manage.domain.BasketVO;
import kr.co.javaspecialist.manage.domain.ProductVO;
import kr.co.javaspecialist.manage.repository.BasketDAO;
import kr.co.javaspecialist.manage.repository.ProductDAO;

public class ManageService implements IManageService {

	IProductDAO productDao = new ProductDAO();
	IBasketDAO basketDao = new BasketDAO();
	
	
	@Override
	public List<ProductVO> getProductInfoByKeyword(String keyword) {
		return productDao.getProductInfoByKeyword(keyword);
	}
	
	@Override
	public List<ProductVO> getProductInfoByLocation(String location) {
		return productDao.getProductInfoByLocation(location);
	}

	@Override
	public List<ProductVO> getProductInfoByDeptname(String deptname) {
		return productDao.getProductInfoByDeptname(deptname);
	}

	@Override
	public List<ProductVO> getProductInfoByName(String name) {
		return productDao.getProductInfoByName(name);
	}

	@Override
	public ProductVO getProductInfoByBarcode(String barcode) {
		return productDao.getProductInfoByBarcode(barcode);
	}

	@Override
	public List<ProductVO> getProductInfoByID(String id) {
		return productDao.getProductInfoByID(id);
	}
	@Override
	public List<ProductVO> getProductInfoByDepartmentAndCategory(String dept, String category) {
		return productDao.getProductInfoByDepartmentAndCategory(dept, category);
	}

	@Override
	public List<BasketVO> getBasketInfoByID(String userid) {
		return basketDao.getBasketInforByID(userid);
	}

}
