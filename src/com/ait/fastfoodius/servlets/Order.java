package com.ait.fastfoodius.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ait.fastfoodius.bean.MenuBean;
import com.ait.fastfoodius.bean.OrderBean;
import com.ait.fastfoodius.bean.OrderItemBean;
import com.ait.fastfoodius.dao.MenuDAO;
import com.ait.fastfoodius.dao.OrderItemDAO;

/**
 * Servlet implementation class Customer
 */
@WebServlet("/addOrder")
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		
		OrderBean ordem = (OrderBean) request.getSession().getAttribute("order");
		
		System.out.println(ordem.getOrderItem().size());
		request.getRequestDispatcher("/pages/orderCheckout.jsp").forward(request, response);
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
