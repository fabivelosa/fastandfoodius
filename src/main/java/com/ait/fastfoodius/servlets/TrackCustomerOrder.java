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

/**
 * Servlet implementation class Menu
 */
@WebServlet("/trackorder")
public class TrackCustomerOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TrackCustomerOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		OrdersDAO orderDao = new OrdersDAO();
		
	
		String userId = (String) request.getSession(false).getAttribute("user");
		PersonDAO personDAO = new PersonDAO();
		PersonBean person = personDAO.findByUser(userId);
		
		
		List<OrderBean> trackorder = orderDao.retrieveOrder(person.getId());
		request.getSession().setAttribute("trackorder",trackorder );
		
		String contextPath = request.getContextPath();

		response.sendRedirect(contextPath+"/pages/trackOrder.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
