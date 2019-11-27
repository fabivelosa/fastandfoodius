package com.ait.fastfoodius.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ait.fastfoodius.bean.MenuBean;
import com.ait.fastfoodius.bean.OrderBean;
import com.ait.fastfoodius.dao.MenuDAO;
import com.ait.fastfoodius.dao.OrdersDAO;
import com.ait.fastfoodius.resource.MenuCategory;

/**
 * Servlet implementation class Menu
 */
@WebServlet("/vieworders")
public class ViewOrdersAssigned extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewOrdersAssigned() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		OrdersDAO item = new OrdersDAO();// retrieve data from database
		List<OrderBean> vieworders = item.retrieveOrderAssigned("delivery");
		request.getSession().setAttribute("vieworders",vieworders );
		
		String contextPath = request.getContextPath();
		response.sendRedirect(contextPath+"/pages/vieworderassigned.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
