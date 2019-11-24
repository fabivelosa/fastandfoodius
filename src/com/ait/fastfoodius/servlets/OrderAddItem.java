package com.ait.fastfoodius.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
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
import com.ait.fastfoodius.resource.deliveryStatus;

/**
 * Servlet implementation class Customer
 */
@WebServlet("/orderAddItem")
public class OrderAddItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		MenuDAO menuDAO = new MenuDAO();
		String id = request.getParameter("itemId");

		OrderBean order = (OrderBean) request.getSession().getAttribute("order");

		if (order == null) {
			order = new OrderBean();
			order.setOrderDate(new Date());
			order.setDeliveryStatus(deliveryStatus.PENDING.toString());
			
			
			List<OrderItemBean> ordemItemList = new ArrayList<OrderItemBean>();
			order.setOrderItem(ordemItemList);
		}

		MenuBean menuitem = menuDAO.findById(Integer.parseInt(id));

		OrderItemBean item = new OrderItemBean();
		item.setMenu_ID(menuitem.getItemId());
		item.setOrderChannel("chanel");
		item.setQuantity(1);
		order.getOrderItem().add(item);
		
		request.getSession().setAttribute("order",order);
		
		System.out.println(order.getOrderItem().size());
		response.getWriter().write("");
	}
}
