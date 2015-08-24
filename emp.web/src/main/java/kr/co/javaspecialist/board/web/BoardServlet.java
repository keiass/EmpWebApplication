package kr.co.javaspecialist.board.web;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.board.domain.BoardDAO;
import kr.co.javaspecialist.board.domain.BoardVO;

/**
 * Servlet implementation class BoardServlet
 */
@WebServlet("/board/Board.do")
public class BoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BoardServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	BoardDAO dao;
	String contextPath;

	public void init(ServletConfig config) throws ServletException {
		dao = new BoardDAO();
		contextPath = config.getServletContext().getContextPath();
		if(contextPath == null) contextPath = "";
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");
		String url = ""; //
//		url = "/index.jsp?url=";
		String pageStr = request.getParameter("page");
		int page = 1;
		if(pageStr != null && !pageStr.equals("")) {
			page = Integer.parseInt(pageStr);
		}
		request.setAttribute("page", page);
		if("write".equals(action)) {
			url = url + "/board/write.jsp";
			request.setAttribute("next", "write_do");
		} else if("reply".equals(action)) {
			String bbsnoStr = request.getParameter("bbsno");
			int bbsno = Integer.parseInt(bbsnoStr);
			BoardVO board = dao.selectArticle(bbsno);
			board.setName("");
			board.setEmail("");
			board.setSubject("[Re]"+board.getSubject());
			board.setContent("\n\n\n----------\n" + board.getContent());
			request.setAttribute("board", board);
			request.setAttribute("next", "reply_do");
			url = url + "/board/write.jsp";
		} else if("update".equals(action)) {
			String bbsnoStr = request.getParameter("bbsno");
			int bbsno = 0;
			if(bbsnoStr != null) {
				bbsno = Integer.parseInt(bbsnoStr);
				BoardVO board = dao.selectArticle(bbsno);
				request.setAttribute("board", board);
				request.setAttribute("next", "update_do");
				url = url + "/board/write.jsp";
			}else {
				request.setAttribute("message", "게시글번호가 없습니다.");
				url = url + "/board/error.jsp";
			}
		} else if("delete".equals(action)) {
			String bbsno = request.getParameter("bbsno");
			String replynumber = request.getParameter("replynumber");
			request.setAttribute("bbsno", bbsno);
			request.setAttribute("replynumber", replynumber);
			request.setAttribute("next", "delete_do");
			url = url + "/board/delete.jsp";
		} else if("list".equals(action)) {
			Collection<BoardVO> lists = dao.selectArticleList(page, 10);
			request.setAttribute("lists", lists);
			url = url + "/board/list.jsp";
			
			// paging start
			int bbsCount = dao.selectTotalArticleCount();
			int totalPage = 0;
			if(bbsCount > 0) {
				totalPage= bbsCount/10;
			}
			if( (bbsCount % 10) != 0 || totalPage==0 ) {
				totalPage = totalPage+1;
			}
			request.setAttribute("totalPageCount", totalPage);
			request.setAttribute("page", page);
		} else if("view".equals(action)) {
			String bbsnoStr = request.getParameter("bbsno");
			int bbsno = 1;
			if(bbsnoStr != null) {
				bbsno = Integer.parseInt(bbsnoStr);
			}
			dao.updateReadCount(bbsno);
			BoardVO board = dao.selectArticle(bbsno);
			if(board.getContent() != null) {
				board.setContent(board.getContent().replaceAll("\n", "<br>"));
			}
			request.setAttribute("board", board);
			url = url + "/board/view.jsp";
		} else {
			request.setAttribute("message", "잘못된 명령.");
			url = url + "/board/error.jsp";
		}
		RequestDispatcher disp = request.getRequestDispatcher(url);
		disp.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");
		String url = ""; //
//		url = "/index.jsp?url=";
		String pageStr = request.getParameter("page");
		int page = 1;
		if(pageStr != null && !pageStr.equals("")) {
			page = Integer.parseInt(pageStr);
		}
		request.setAttribute("page", page);
		if("write_do".equals(action)) {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String subject = request.getParameter("subject");
			String content = request.getParameter("content");
			String password = request.getParameter("password");
			BoardVO board = new BoardVO();
			board.setName(name);
			board.setEmail(email);
			board.setSubject(subject);
			board.setContent(content);
			board.setPassword(password);
			dao.insertArticle(board);
			url = contextPath + "/board/Board.do?action=list";
			response.sendRedirect(url);
			return;
		} else if("reply_do".equals(action)) {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String subject = request.getParameter("subject");
			String content = request.getParameter("content");
			String password = request.getParameter("password");
			int masterid = Integer.parseInt(request.getParameter("masterid"));
			int replynumber = Integer.parseInt(request.getParameter("replynumber"));
			int replystep = Integer.parseInt(request.getParameter("replystep"));
			
			BoardVO board = new BoardVO();
			board.setName(name);
			board.setEmail(email);
			board.setSubject(subject);
			board.setContent(content);
			board.setPassword(password);
			board.setMasterid(masterid);
			board.setReplynumber(replynumber);
			board.setReplystep(replystep);
			
			dao.replyArticle(board);
			
			response.sendRedirect(contextPath + "/board/Board.do?action=list&page="+page);
			return;
		} else if("update_do".equals(action)) {
			String password = request.getParameter("password");
			String bbsnoStr = request.getParameter("bbsno");
			int bbsno = Integer.parseInt(bbsnoStr);
			String dbpw = dao.getPassword(bbsno);
			if(dbpw.equals(password)) {
				BoardVO board = new BoardVO();
				board.setBbsno(bbsno);
				board.setName(request.getParameter("name"));
				board.setEmail(request.getParameter("email"));
				board.setSubject(request.getParameter("subject"));
				board.setContent(request.getParameter("content"));
				dao.updateArticle(board);
				url = contextPath + "/board/Board.do?action=view&bbsno="+bbsno + "&page="+page;
				response.sendRedirect(url);
				return;
			}else {
				request.setAttribute("message", "비밀번호가 다릅니다. 수정되지 않았습니다.");
				url = url + "/board/error.jsp";
			}
		} else if("delete_do".equals(action)) {
			String bbsnoStr = request.getParameter("bbsno");
			int bbsno = Integer.parseInt(bbsnoStr);
			String replynumberStr = request.getParameter("replynumber");
			int replynumber =0 ;
			if(replynumberStr != null && !replynumberStr.equals("")) {
				replynumber = Integer.parseInt(replynumberStr);
			}
			String password = request.getParameter("password");
			String dbpw = dao.getPassword(bbsno);
			if(dbpw.equals(password)) {
				dao.deleteArticle(bbsno, replynumber);
				url = contextPath + "/board/Board.do?action=list" + "&page="+page;
				response.sendRedirect(url);
				return;
			}else {
				request.setAttribute("message", "비밀번호가 다릅니다. 삭제되지 않았습니다.");
				url = url + "/board/error.jsp";
			}
		} else {
			request.setAttribute("message", "잘못된 명령.");
			url = url + "/board/error.jsp";
		}
		RequestDispatcher disp = request.getRequestDispatcher(url);
		disp.forward(request, response);
	}

}

