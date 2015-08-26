package kr.co.javaspecialist.manage.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.google.gson.Gson;

import kr.co.javaspecialist.manage.domain.ProductVO;
import kr.co.javaspecialist.manage.service.IManageService;
import kr.co.javaspecialist.manage.service.ManageService;

@WebServlet("/manage")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	IManageService manageService;
//	productDao;
//	BasketDAO basketDao;
	static final Logger logger = Logger.getLogger(ProductServlet.class);

	public ProductServlet() {
		super();
		manageService = new ManageService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String keyword = request.getParameter("keyword");
		String barcode = request.getParameter("barcode");
		String dept = request.getParameter("dept");
		String category = request.getParameter("category");
		
		Gson gson = new Gson();
		String jsonStr;
		
		if(keyword != null){
			System.out.println("in keyword = "+keyword);
			//데이터베이스로부터 조회
			List<ProductVO> productList = manageService.getProductInfoByKeyword(keyword);
			System.out.println(productList.toString());
			//데이터로부터 JSON 객체 생성
			jsonStr = gson.toJson(productList);//productList.get(0).toJSON();
			request.setAttribute("jsonStr", jsonStr);
		}else if(barcode != null){
			System.out.println("in barcode = "+barcode);
			ProductVO singleProduct = manageService.getProductInfoByBarcode(barcode);
			System.out.println(singleProduct.toString());
			jsonStr = gson.toJson(singleProduct);//productList.get(0).toJSON();
			request.setAttribute("jsonStr", jsonStr);
		} else if (dept!=null && category!=null){

			List<ProductVO> productList = manageService.getProductInfoByDepartmentAndCategory(dept, category);
			System.out.println(productList.toString());
			//데이터로부터 JSON 객체 생성
			jsonStr = gson.toJson(productList);//productList.get(0).toJSON();
			request.setAttribute("jsonStr", jsonStr);

		}

		
		
//		Type collectionType = new TypeToken<ArrayList<ProductVO>>(){}.getType();
//		List<ProductVO> lists = gson.fromJson(jsonStr, collectionType);
//		System.out.println(lists);

		RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/view/manage/productListJSON.jsp");
		disp.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String keyword = request.getParameter("keyword");
		String location = request.getParameter("location");
		String deptname = request.getParameter("deptname");
		String name = request.getParameter("name");

		logger.info("servlet dopost: " + keyword );
		logger.info("servlet dopost: " + location );
		logger.info("servlet dopost: " + deptname );
		logger.info("servlet dopost: " + name );

	//데이터베이스로부터 조회
		List<ProductVO> productList = new ArrayList<ProductVO>();
		if(keyword != null){
			productList = manageService.getProductInfoByKeyword(keyword);
		}else if(name != null){
			productList = manageService.getProductInfoByName(name);
		}else if(location != null){
			productList = manageService.getProductInfoByLocation(location);
		}else if(deptname != null){
			productList = manageService.getProductInfoByDeptname(deptname);
		}

		request.setAttribute("productList", productList);


		RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/view/manage/productList.jsp");
		disp.forward(request, response);
	}

}
