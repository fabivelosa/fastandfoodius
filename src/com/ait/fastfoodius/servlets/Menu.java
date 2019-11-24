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
import com.ait.fastfoodius.resource.MenuCategory;

/**
 * Servlet implementation class Menu
 */
@WebServlet("/menu")
public class Menu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Menu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		MenuDAO menuDao = new MenuDAO();
		List<MenuBean> starters =  menuDao.findByCategory(MenuCategory.STARTER.getIdCategory());
		request.getSession().setAttribute("starters",starters );
		
		List<MenuBean> sidedish =  menuDao.findByCategory(MenuCategory.SIDEDISH.getIdCategory());
		request.getSession().setAttribute("sidedish",sidedish );
		
		List<MenuBean> maincourse =  menuDao.findByCategory(MenuCategory.MAINCOURSE.getIdCategory());
		request.getSession().setAttribute("maincourse",maincourse );
	
		List<MenuBean> dessert =  menuDao.findByCategory(MenuCategory.DESSERT.getIdCategory());
		request.getSession().setAttribute("dessert",dessert );
	
		List<MenuBean> drink =  menuDao.findByCategory(MenuCategory.DRINKS.getIdCategory());
		request.getSession().setAttribute("drink",drink );
	
		String contextPath = request.getContextPath();
		response.sendRedirect(contextPath+"/pages/order.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
