package kr.co.javaspecialist.common.web;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ViewForwardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Enumeration<String> paramNames= request.getParameterNames();
		String path = "notfound";
		if(paramNames.hasMoreElements()) {
			path = paramNames.nextElement();
		}
		RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/" + path + ".jsp");
		disp.forward(request, response);
	}

}
