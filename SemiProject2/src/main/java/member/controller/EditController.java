package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.service.Service;
import member.service.ServiceImpl;
import model.Member;

/**
 * Servlet implementation class EditController
 */
@WebServlet("/EditController")
public class EditController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 요청과 응답의 인코딩 설정
				request.setCharacterEncoding("utf-8");
				response.setContentType("text/html; charset=utf-8");
				response.setCharacterEncoding("utf-8");

				// 서비스 객체 생성
				Service service = new ServiceImpl();

				// 수정폼에 입력한 새 정보인 요청 파라메터를 읽는다.
				String email = request.getParameter("email");
//				HttpSession session = request.getSession(false);
//				String email = (String) session.getAttribute("login");
				String pw = request.getParameter("pw");
				String name = request.getParameter("name");
				String postcode = request.getParameter("postcode");
				String roadAddress = request.getParameter("roadAddress");
				String detailAddress = request.getParameter("detailAddress");
				
//				int type = Integer.parseInt(request.getParameter("type"));
				 
				int type = 1;
				if(email.contains("admin")) {
					type = 2;
				}
				
				
				//요청 파라메터로 읽은 값으로 Member 객체 생성
				Member m = new Member(email, pw, name, postcode,roadAddress,detailAddress,type);
				

				// 서비스의 수정 메서드 호출
				service.editMember(m);

				// 메뉴 페이지로 이동
				RequestDispatcher dispatcher = request.getRequestDispatcher("view/index.jsp");
				if (dispatcher != null) {
					dispatcher.forward(request, response);
				}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
