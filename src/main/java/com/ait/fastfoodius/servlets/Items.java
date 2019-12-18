package com.ait.fastfoodius.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ait.fastfoodius.bean.MenuBean;
import com.ait.fastfoodius.dao.MenuDAO;

/**
 * Servlet implementation class Customer
 */
@WebServlet("/addItem")
public class Items extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Items() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		MenuDAO item = new MenuDAO();// retrieve data from database
		List<MenuBean> menuItems = item.findAll();
		request.setAttribute("items", menuItems);// set data"items" into jsp page
		request.getRequestDispatcher("/pages/viewitem.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String itemDescr = request.getParameter("inputDescription");
		String categoryId = request.getParameter("category");
		String price = request.getParameter("inputPrice");

		MenuBean item = new MenuBean();
		item.setItemDescr(itemDescr);
		item.setCategoryId(Integer.parseInt(categoryId));// convert String to Integer
		item.setPrice(Double.parseDouble(price));// convert String to Double

		MenuDAO dao = new MenuDAO();
		dao.insertItem(item);

		String contextPath = request.getContextPath();
		response.sendRedirect(contextPath + "/addItem");
	}

}
