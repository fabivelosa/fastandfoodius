package com.ait.fastfoodius.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ait.fastfoodius.bean.OrderBean;
import com.ait.fastfoodius.dao.OrdersDAO;

/**
 * Servlet implementation class Menu
 */
@WebServlet("/viewordersdelivered")
public class ViewOrdersDelivered extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ViewOrdersDelivered() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		OrdersDAO order = new OrdersDAO();// retrieve data from database
		List<OrderBean> viewordersdelivered = order.retrieveOrderDelivered();
		request.getSession().setAttribute("viewordersdelivered", viewordersdelivered);
		
		String contextPath = request.getContextPath();

		response.sendRedirect(contextPath + "/pages/viewordersdelivered.jsp");

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
