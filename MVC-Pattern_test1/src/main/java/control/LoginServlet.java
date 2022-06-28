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
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pass");
		MemberService service = new MemberService();
		try {
			MemberVO mem = service.login(id, pwd);
			String failPath = "login_fail.jsp";
			if (mem != null) {
				String successPath = "login_ok.jsp";
				HttpSession session = request.getSession();
				session.setAttribute("mvo", mem);
				response.sendRedirect(successPath);
			}else {
				response.sendRedirect(failPath);
			}			
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}

}
