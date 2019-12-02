package com.ait.fastfoodius.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ait.fastfoodius.dao.MenuDAO;

/**
 * Servlet implementation class Customer
 */
@WebServlet("/deleteItem")
public class OrderDelivered extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		MenuDAO item = new MenuDAO();// retrieve data from database
		String id = request.getParameter("id");
		item.deleteItemById(Integer.parseInt(id));

		String contextPath = request.getContextPath();
		response.sendRedirect(contextPath + "/addItem");
	}
}
