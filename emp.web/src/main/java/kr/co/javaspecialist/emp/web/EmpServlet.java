package kr.co.javaspecialist.emp.web;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.emp.model.EmpDAO;
import kr.co.javaspecialist.emp.model.EmpVO;
import kr.co.javaspecialist.emp.model.IEmpDAO;

import org.apache.log4j.Logger;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

@WebServlet("/emp")
public class EmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final Logger logger = Logger.getLogger(EmpServlet.class);

	IEmpDAO dao = new EmpDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Enumeration<String> paramNames= request.getParameterNames();
		String path = "notfound";
		if(paramNames.hasMoreElements()) {
			path = paramNames.nextElement();
			if(path.equals("list")) {
				ArrayList<EmpVO> emps = dao.getAllEmps();
				request.setAttribute("empList", emps);
				logger.info(emps);
				if("json".equals(request.getParameter("list"))) {
					//ArrayList의 데이터를 JSON 데이터로 변환
					Gson gson = new Gson();
					String jsonStr = gson.toJson(emps);
					response.setCharacterEncoding("utf-8");
					response.getWriter().println(jsonStr);
					
					//JSON 데이터를 객체로 변환
					Type collectionType = new TypeToken<List<EmpVO>>(){}.getType();
					List<EmpVO> lists = gson.fromJson(jsonStr, collectionType);
					logger.info(lists);;
					return;
				}
			}else if(path.equals("insert")) {

			}
		}else {
			ArrayList<EmpVO> emps = dao.getAllEmps();
			request.setAttribute("empList", emps);
			path = "list"; 
			logger.info(emps);
		}
		RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/view/emp/" + path + ".jsp");
		disp.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
