package com.ait.fastfoodius.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ait.fastfoodius.dao.OrdersDAO;


/**
 * Servlet implementation class UpdateOrderStatus
 */
@WebServlet("/UpdateOrderOnTheWay")
public class OrderOnTheWay extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderOnTheWay() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String order_id = request.getParameter("order_id");
		

		OrdersDAO dao = new OrdersDAO();
		
		dao.updateOrderOnTheWay(Integer.parseInt(order_id));
		
		String contextPath = request.getContextPath();
		response.sendRedirect(contextPath + "/vieworders");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
