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
 * Servlet implementation class Customer
 */
@WebServlet("/updatedelivered")
public class UpdateDelivered extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		OrdersDAO order = new OrdersDAO();// retrieve data from database

		String order_id = request.getParameter("order_id");

		order.updateOrderDelivered(Integer.parseInt(order_id),new Date());
		
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
