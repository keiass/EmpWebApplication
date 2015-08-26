package kr.co.javaspecialist.manage.service;

import java.util.List;

import kr.co.javaspecialist.manage.domain.BasketVO;

public interface IBasketDAO {

	List<BasketVO> getBasketInforByID(String userid);

}
