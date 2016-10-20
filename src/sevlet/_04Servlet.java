package sevlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.MemberVo;

@WebServlet("/04")
public class _04Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost( request, response );
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberVo membervo2 = new MemberVo();
		membervo2.setNo(10L);
		membervo2.setEmail("aa@naver.com");
		membervo2.setName("sy");
		
		request.setAttribute("memberVo2", membervo2);
		
		MemberVo membervo3 = new MemberVo();
		membervo3.setNo(20L);
		membervo3.setEmail("bb@naver.com");
		membervo3.setName("soso");
		
		request.getSession(true).setAttribute("memberVo3", membervo3);
		
		MemberVo membervo4 = new MemberVo();
		membervo4.setNo(30L);
		membervo4.setEmail("cc@naver.com");
		membervo4.setName("코콜~");
		request.getServletContext().setAttribute("memberVo4", membervo4);
		
		request.getRequestDispatcher( "/view/04.jsp" ).forward( request, response );
	}
}
