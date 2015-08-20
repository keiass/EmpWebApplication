package com.shinc.manage.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shinc.manage.domain.ProductVO;
import com.shinc.manage.service.IManageService;
import com.shinc.manage.service.ManageService;

@WebServlet("/shop/Category.do")
public class ProductCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	IManageService shopService;
	public ProductCategoryServlet() {
		shopService = new ManageService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String keyword = request.getParameter("keyword");
		List<ProductVO> productList = shopService.getProductInfoByKeyword(keyword);
		System.out.println(productList);
		
		request.setAttribute("productList", productList);
		
		RequestDispatcher disp = request.getRequestDispatcher("/shop/categoryList.jsp");
		disp.forward(request, response);
	}

}
