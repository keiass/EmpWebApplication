package kr.co.javaspecialist.member.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.javaspecialist.manage.service.IManageService;
import kr.co.javaspecialist.manage.service.ManageService;
import kr.co.javaspecialist.member.domain.MemberDAO;
import kr.co.javaspecialist.member.domain.MemberVO;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	MemberDAO dao = new MemberDAO();
	IManageService manageService = new ManageService();


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//로그아웃 코드
		//세션을 무효화 시키는 코드
		HttpSession session = request.getSession();
		session.invalidate(); //로그아웃
		
		RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/view/index.jsp");
		disp.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		MemberVO member = dao.selectMember(userid);
		String dbPassword = member.getPassword();
		String url = "/member/login.jsp";
		HttpSession session = request.getSession();
		if(dbPassword == null) {
			//아이디가 없음
			session.invalidate();
			request.setAttribute("message", "NOT_VALID_USER");
			url = "/member/login.jsp";
		}else {
			//아이디 있음
			if(dbPassword.equals(password)) {
				//비밀번호 일치
				session.setAttribute("userid", userid);
				System.out.println(userid);
				request.setAttribute("productList", manageService.getBasketInfoByID(userid));
				url = "/member/loginok.jsp";
			}else {
				//비밀번호 불일치
				session.invalidate();
				request.setAttribute("message", "WRONG_PASSWORD");
				url = "/member/login.jsp";
			}
		}
		RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/view/" + url);
		disp.forward(request, response);
	}

}
