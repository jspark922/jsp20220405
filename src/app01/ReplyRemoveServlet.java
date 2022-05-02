package app01;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import app01.dao.ReplyDao;
import app01.dto.ReplyDto;

/**
 * Servlet implementation class ReplyRemoveServlet
 */
@WebServlet("/reply/delete")
public class ReplyRemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource ds;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReplyRemoveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
	public void init() throws ServletException {
		ServletContext application = getServletContext();
		this.ds = (DataSource) application.getAttribute("dbpool");
	}
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request 파라미터 수집/ 가공
		String boardStr = request.getParameter("boardId");
		String idStr = request.getParameter("id");
		
		ReplyDto replyDto = new ReplyDto();
		replyDto.setId(Integer.parseInt(idStr));
		
		// bussiness logic 처리
		ReplyDao replyDao = new ReplyDao();
		try(Connection con = ds.getConnection()) {
			replyDao.delete(con, replyDto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 결과세팅..(xxx)
		
		// forward / redirect
		String location = request.getContextPath() + "/board/get?id=" + boardStr;
		response.sendRedirect(location);
	}

}
