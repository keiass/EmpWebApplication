package kr.co.javaspecialist.emp.web;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import kr.co.javaspecialist.emp.model.EmpDAO;
import kr.co.javaspecialist.emp.model.EmpVO;
import kr.co.javaspecialist.emp.model.IEmpDAO;

public class EmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final Logger logger = Logger.getLogger(EmpServlet.class);

	IEmpDAO dao = new EmpDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<EmpVO> emps = dao.getAllEmps();
		request.setAttribute("empList", emps);
		logger.info(emps);
		RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/emplist.jsp");
		disp.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
