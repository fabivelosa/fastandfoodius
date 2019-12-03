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
import com.ait.fastfoodius.bean.PersonBean;
import com.ait.fastfoodius.dao.MenuDAO;
import com.ait.fastfoodius.dao.PersonDAO;
import com.ait.fastfoodius.resource.Role;
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
		PersonDAO personDAO = new PersonDAO();
		String role = request.getSession().getAttribute("role").toString();
		String user = null;
		
		if (order == null) {
			order = new OrderBean();
			
			if (Integer.parseInt(role)== Role.FRONTDESK.getIdRole()) {
				user = ((PersonBean) request.getSession(false).getAttribute("customer")).getEmail() ;
				order.setPaymentStatus("PAY_ON_DELIVERY");
			} else {
				 user = (String) request.getSession(false).getAttribute("user");
			}
			PersonBean person = personDAO.findByUser(user);
			order.setCustomer_ID(person.getId()); 
			order.setDeliveryStatus(deliveryStatus.PENDING.getStatus().toString());
			order.setOrderAddress(person.getAddress());
			order.setOrderCity(person.getCity());
			order.setOrderDate(new Date());
			order.setOrderEmailAddress(person.getEmail());
			order.setOrderPhoneNumber(person.getPhone());
			order.setOrderPostalCode(person.getPostalCode());
			order.setPaymentStatus("PAY_ON_DELIVERY");
			order.setRequiredDeliveryDate(new Date());
			order.setOrderChannel("ONLINE");
			
			List<OrderItemBean> ordemItemList = new ArrayList<OrderItemBean>();
			order.setOrderItem(ordemItemList);
		}

		MenuBean menuitem = menuDAO.findById(Integer.parseInt(id));

		OrderItemBean item = new OrderItemBean();
		item.setMenu_ID(menuitem.getItemId());
		item.setMenuDesc(menuitem.getItemDescr());
		item.setPrice(menuitem.getPrice());
		item.setQuantity(1);
		order.getOrderItem().add(item);

		request.getSession().setAttribute("order", order);


		response.getWriter().write("");
	}
}
