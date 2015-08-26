package kr.co.javaspecialist.member.web;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.javaspecialist.member.domain.MemberDAO;
import kr.co.javaspecialist.member.domain.MemberVO;

@WebServlet("/member")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	MemberDAO dao = new MemberDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("userid");

		Enumeration<String> paramNames= request.getParameterNames();
		String path = "notfound";
		if(paramNames.hasMoreElements()) {
			path = paramNames.nextElement();
			if("select".equals(path)) {
				//		if(action.equals("select")) {
				if(userid != null && !userid.equals("")) {
					MemberVO member = dao.selectMember(userid);
					request.setAttribute("member", member);
					path = "memberform";
				}else {
					//userid가 세션에 없을 경우 (로그인 하지 않았을 경우)
					request.setAttribute("message", "로그인 하지 않은 사용자입니다.");
					path = "login";
				}
			}else if("delete".equals(path)){ 
				path = "delete";			
			}else {
				request.setAttribute("message", "액션이 없습니다.");
				path = "login";
			}
		}
		RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/view/member/"+path+".jsp");
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
		
		//VO객체 생성
		MemberVO member = new MemberVO();
		member.setUserid(userid);
		member.setPassword(password);
		member.setName(name);
		member.setPhone(phone);
		member.setAddress(address);
		
		//2. dao 메서드 호출
		//3. 실행결과 request에 저장
		Enumeration<String> paramNames= request.getParameterNames();
		String path = "login";
		if(paramNames.hasMoreElements()) {
			path = paramNames.nextElement();
			try {
				if("update".equals(path)) {
					dao.update(member);
					request.setAttribute("message", "회원정보가 수정되었습니다.");
					request.setAttribute("member", member);
					path = "memberform";
				}else if("delete".equals(path)){
					HttpSession session = request.getSession();
					member.setUserid((String)session.getAttribute("userid"));
					dao.delete(member);
					session.invalidate();//삭제되었으면 로그아웃 처리
					response.sendRedirect("/WEB-INF/view/index.jsp");//메인 페이지로 이동
					return;
				}else{
					dao.insert(member);
					request.getSession().invalidate();//회원가입시 로그인했던 사용자 로그아웃 시킴
				}
			}catch(RuntimeException e) {
				request.setAttribute("message", e.getMessage());
				e.printStackTrace();
			}
		}		
//		4. jsp로 forward
		RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/view/member/" + path + ".jsp");
		disp.forward(request, response);
		//저장 후 모든 회원정보를 보여주는 페이지로 이동
		//서블릿 실행한 다음 서블릿을 호출해야 할 경우 sendRedirect
//		response.sendRedirect("member?select");
	}

}
