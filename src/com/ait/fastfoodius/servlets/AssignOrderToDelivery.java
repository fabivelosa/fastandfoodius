package com.ait.fastfoodius.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ait.fastfoodius.bean.OrderBean;
import com.ait.fastfoodius.bean.PersonBean;
import com.ait.fastfoodius.dao.OrdersDAO;
import com.ait.fastfoodius.dao.PersonDAO;
import com.ait.fastfoodius.resource.Role;

/**
 * Servlet implementation class Menu
 */
@WebServlet("/viewpendingorders")
public class AssignOrderToDelivery extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AssignOrderToDelivery() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String personEmail = request.getParameter("person_id");
		String orderId = request.getParameter("order_id");

		OrdersDAO dao = new OrdersDAO();
		dao.updateAssignedDriver(Integer.parseInt(orderId), personEmail);
		
	
		
		String contextPath = request.getContextPath();
		response.sendRedirect(contextPath + "/getOrdersToDelivery");

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
