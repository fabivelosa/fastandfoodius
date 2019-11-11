package com.ait.fastfoodius.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public Login() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		 String contextPath = request.getContextPath();
		System.out.println(contextPath);
		String n = request.getParameter("username");
		String p = request.getParameter("userpass");

		if (validate(n, p)) {
			request.getSession(false).setAttribute("logged", Boolean.TRUE);
			request.getSession(false).setAttribute("user", n);			
			response.sendRedirect(contextPath+"/pages/main.jsp");	
		} else {
			request.getSession(false).setAttribute("logged", Boolean.FALSE);		
			response.sendRedirect(contextPath+"/pages/accessdenied.jsp");
		}
	

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

	public boolean validate(String user, String pass) {

	    if (user.equals("fabi") && pass.equals("fabi123")) {
	    	return true;
	    }else
	    	return false;
	}

}
