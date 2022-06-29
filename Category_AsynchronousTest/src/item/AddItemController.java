package item;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


/**
 * Servlet implementation class AddItemController
 */
@WebServlet("/AddItemController")
public class AddItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddItemController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Service service = new ServiceImpl(); 
		Item i = new Item();
		String img = "";
		int maxSize =1024 *1024 *10;
		MultipartRequest multi = null;
		String uploadPath = "C:\\HI JSP\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\item";
		try {
			// request,����������,�뷮,���ڵ�Ÿ��,�ߺ����ϸ� ���� �⺻ ��å
			multi = new MultipartRequest(request, uploadPath, maxSize, "utf-8", new DefaultFileRenamePolicy());
			i.setTitle(multi.getParameter("title"));
			i.setPrice(Integer.parseInt(multi.getParameter("price")));
			i.setC1(Integer.parseInt(multi.getParameter("c1")));
			i.setC2(Integer.parseInt(multi.getParameter("c2")));
			i.setC3(Integer.parseInt(multi.getParameter("c3")));
			
			// ������ ��ü �����̸����� ������
			Enumeration files = multi.getFileNames();

			while (files.hasMoreElements()) {
				// form �±׿��� <input type="file" name="���⿡ ������ �̸�" />�� �����´�.
				String file1 = (String) files.nextElement();// ���� input�� ������ �̸��� ������
				// �׿� �ش��ϴ� ���� ���� �̸��� ������
				img = multi.getOriginalFileName(file1);
				//���Ͼ��ε�
				File file = multi.getFile(file1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		i.setImg("/item/" + img);
		service.addItem(i);
//		response.sendRedirect("/menu/index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
