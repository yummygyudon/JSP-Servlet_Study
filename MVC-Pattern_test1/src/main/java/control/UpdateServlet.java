package control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberVO;
import service.MemberService;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pass");
		String name = request.getParameter("name");
		String addr = request.getParameter("address");
		
		MemberService service = new MemberService();
		try {
			MemberVO vo = new MemberVO(id,pwd, name, addr);
			service.updateMember(vo); 
			// 로그인 유지를 시켜줘야하기 때문에 Session에 있던 본인 계정 정보도 같이 업데이트 해줘야함.
			HttpSession session = request.getSession();
			session.setAttribute("mvo", vo);
			response.sendRedirect("update_result.jsp"); // insert하면 딱히 유지해서 가지고있을 데이터 없음.
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}

}
