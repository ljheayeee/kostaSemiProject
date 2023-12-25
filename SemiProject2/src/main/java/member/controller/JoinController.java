package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Member;
import member.service.Service;
import member.service.ServiceImpl;
/**
 * Servlet implementation class JoinController
 */
@WebServlet("/JoinController")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("utf-8");

		//기능을 제공할 서비스 객체 생성
		//Service service = new ServiceImpl();

		Service service = new ServiceImpl(); 
		
		//요청 파라메터 값 읽기
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String postcode = request.getParameter("postcode");
		String roadAddress = request.getParameter("roadAddress");
		String detailAddress = request.getParameter("detailAddress");

		int type = 1;
		if(email.contains("admin")) {
			type = 2;
		}
		
					
		
		//요청 파라메터로 읽은 값으로 Member 객체 생성
		Member m = new Member(email, pw, name, postcode,roadAddress,detailAddress,type);
		
		//서비스의 회원가입 기능 실행
		service.join(m);
		response.sendRedirect("/home");
		//로그인 폼으로 이동
//		RequestDispatcher dispatcher = request.getRequestDispatcher("view/index.jsp");
//		if (dispatcher != null) {
//			dispatcher.forward(request, response);
//		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
