package com.ait.fastfoodius.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ait.fastfoodius.bean.OrderBean;
import com.ait.fastfoodius.bean.OrderItemBean;
import com.ait.fastfoodius.bean.PersonBean;
import com.ait.fastfoodius.dao.OrderItemDAO;
import com.ait.fastfoodius.dao.OrdersDAO;
import com.ait.fastfoodius.dao.PersonDAO;

/**
 * Servlet implementation class Customer
 */
@WebServlet("/saveOrder")
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		  
		
		OrderBean ordem = (OrderBean) request.getSession().getAttribute("order");
		
		OrdersDAO orderDao = new OrdersDAO();
		OrderItemDAO ordermItemDao = new OrderItemDAO();
		PersonDAO personDAO = new PersonDAO();
		
		orderDao.insertOrder(ordem);
		
		String user = (String) request.getSession(false).getAttribute("user");
		
		PersonBean person = personDAO.findByUser(user);
		
		
		int ordemMax = orderDao.retrieveLastOrder(person.getId());
		
		for(OrderItemBean item : ordem.getOrderItem()) {
			item.setOrder_ID(ordemMax);
			ordermItemDao.insertOrderItem(item);	
		}
		
		ordem.setOrder_ID(ordemMax);
		request.setAttribute("orderId",ordem.getOrder_ID());
		request.getRequestDispatcher("/pages/orderSuccess.jsp").forward(request, response);
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
