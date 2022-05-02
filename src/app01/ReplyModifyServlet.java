package app01;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

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
 * Servlet implementation class ReplyModifyServlet
 */
@WebServlet("/reply/modify")
public class ReplyModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource ds;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReplyModifyServlet() {
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
		// request 파라미터 수집 가공
		String boardIdStr = request.getParameter("boardId");
		String replyIdStr = request.getParameter("replyId");
		String content = request.getParameter("replyContent");
		int boardId = Integer.parseInt(boardIdStr);
		int replyId = Integer.parseInt(replyIdStr);
		
		ReplyDto replyDto = new ReplyDto();
		replyDto.setBoardId(boardId);
		replyDto.setId(replyId);
		replyDto.setContent(content);
		
		// Dao 일시키고
		ReplyDao dao = new ReplyDao();
		boolean res = false;
		try (Connection con = ds.getConnection()) {
			res = dao.update(con, replyDto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 결과 세팅
		// 안해도됨....
		
		// forward/ redirect
		String location = request.getContextPath() + "/board/get?id=" + boardIdStr;
		if (res) {
			location += "&res=true";
		} else {
			location += "&res=false";
		}
		response.sendRedirect(location);
	}

}
