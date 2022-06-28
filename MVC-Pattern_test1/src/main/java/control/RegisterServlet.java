package control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberVO;
import service.MemberService;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterServlet() {
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
			service.insert(new MemberVO(id, pwd, name, addr));
			response.sendRedirect("register_result.jsp"); // insert하면 딱히 유지해서 가지고있을 데이터 없음.
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}

}
