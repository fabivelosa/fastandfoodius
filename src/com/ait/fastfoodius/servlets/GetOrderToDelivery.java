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
@WebServlet("/getOrdersToDelivery")
public class GetOrderToDelivery extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetOrderToDelivery() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		OrdersDAO orderDao = new OrdersDAO();// retrieve data from database
		List<OrderBean> viewpendingorders = orderDao.retrieveOrderforDelivery();
		request.getSession().setAttribute("viewpendingorders", viewpendingorders);

		PersonDAO delivery = new PersonDAO();
		List<PersonBean> assigndelivery = delivery.findByRole("Delivery Driver");
		request.getSession().setAttribute("assigndelivery", assigndelivery);


		String contextPath = request.getContextPath();

		response.sendRedirect(contextPath + "/pages/assignordertodelivery.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
