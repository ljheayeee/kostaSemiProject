package order.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Order;
import order.service.Service;
import order.service.ServiceImpl;

/**
 * Servlet implementation class OrderAddController
 */
@WebServlet("/orderAdd")
public class OrderAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OrderAddController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		
		product.service.Service service_prod = new product.service.ServiceImpl(); 
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int num= Integer.parseInt(request.getParameter("num"));
		int o_state = Integer.parseInt(request.getParameter("o_state"));
		
		if(o_state == 0) {
			service_prod.editQuantity(quantity, num);
		}
		
		
		// TODO Auto-generated method stub
		Service service = new ServiceImpl();
		HttpSession session = request.getSession(false);
		String o_email = (String) session.getAttribute("login");
		Order o = new Order();
		o.setPro_num(Integer.parseInt(request.getParameter("num")));
		o.setOrder_num(Integer.parseInt(request.getParameter("quantity")));
		o.setTotal_price(Integer.parseInt(request.getParameter("total_price")));
		o.setO_email(o_email);
		o.setO_state(Integer.parseInt(request.getParameter("o_state")));
		o.setO_category(request.getParameter("o_category"));
		service.addOrder(o);
		String path = "/SemiProject2/order_myList?o_state="+o.getO_state();
		
		response.sendRedirect(path);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
