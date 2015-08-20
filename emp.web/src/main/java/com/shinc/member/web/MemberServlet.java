package com.shinc.member.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shinc.member.domain.MemberDAO;
import com.shinc.member.domain.MemberVO;

/**
 * Servlet implementation class MemberServlet
 */
@WebServlet("/member/Member.do")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	MemberDAO dao = new MemberDAO();
	
    public MemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		String userid = request.getParameter("userid");
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("userid");
		
		String url = "";

		String action = request.getParameter("action");
		if("select".equals(action)) {
//		if(action.equals("select")) {
			if(userid != null && !userid.equals("")) {
				MemberVO member = dao.selectMember(userid);
				request.setAttribute("member", member);
				url = "/member/memberform.jsp";
			}else {
				//userid가 세션에 없을 경우 (로그인 하지 않았을 경우)
				request.setAttribute("message", "로그인 하지 않은 사용자입니다.");
				url = "/member/loginform.jsp";
			}
		}else if("delete".equals(action)){ 
			url = "/member/deleteform.jsp";			
		}else {
			request.setAttribute("message", "액션이 없습니다.");
			url = "/member/loginform.jsp";
		}
		
//		response.sendRedirect("./memberlist.jsp");
		RequestDispatcher disp = request.getRequestDispatcher(url);
		disp.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 파라미터 조회
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String userid = request.getParameter("userid");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		String action = request.getParameter("action");
		
		//VO객체 생성
		MemberVO member = new MemberVO();
		member.setUserid(userid);
		member.setPassword(password);
		member.setName(name);
		member.setPhone(phone);
		member.setAddress(address);
		
		//2. dao 메서드 호출
		//3. 실행결과 request에 저장
		String url = "/member/result.jsp";
		try {
			if("update".equals(action)) {
				dao.update(member);
				request.setAttribute("message", "회원정보가 수정되었습니다.");
				request.setAttribute("member", member);
				url = "/member/memberform.jsp";
			}else if("delete".equals(action)){
				HttpSession session = request.getSession();
				member.setUserid((String)session.getAttribute("userid"));
				dao.delete(member);
				session.invalidate();//삭제되었으면 로그아웃 처리
				response.sendRedirect("/index.jsp");//메인 페이지로 이동
				return;
			}else{
				dao.insert(member);
				request.getSession().invalidate();//회원가입시 로그인했던 사용자 로그아웃 시킴
			}
		}catch(RuntimeException e) {
			request.setAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		
//		4. jsp로 forward
		RequestDispatcher disp = request.getRequestDispatcher(url);
		disp.forward(request, response);
		//저장 후 모든 회원정보를 보여주는 페이지로 이동
		//서블릿 실행한 다음 서블릿을 호출해야 할 경우 sendRedirect
//		response.sendRedirect("Member.do?action=select");
	}

}
