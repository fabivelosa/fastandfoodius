package com.ait.fastfoodius.servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ait.fastfoodius.bean.PersonBean;
import com.ait.fastfoodius.dao.LoginDAO;
import com.ait.fastfoodius.dao.PersonDAO;

/**
 * Servlet implementation class Person
 */
@WebServlet("/addPerson")
public class AddPersonController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddPersonController() {
		super();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("inputFirstName");
		String lastName = request.getParameter("inputLastName");
		String date = request.getParameter("inputDateOfBirth");
		String gender = request.getParameter("gender");
		String title = request.getParameter("title");
		String phone = request.getParameter("inputPhone");
		String address = request.getParameter("inputAddress");
		String city = request.getParameter("inputCity");
		String zip = request.getParameter("inputZip");
		String email = request.getParameter("inputEmail");
		String password = request.getParameter("inputPassword");
		String repeatPass = request.getParameter("inputRepeat");

		PersonBean person = new PersonBean();
		person.setFirstName(name);
		person.setLastName(lastName);
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		Date date1;
		try {
			date1 = format.parse(date);
			person.setDateofbirth(date1);
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
		person.setGender(gender);
		person.setTitle(title);
		person.setPhone(phone);
		person.setAddress(address);
		person.setCity(city);
		person.setPostalCode(zip);
		person.setEmail(email);

		PersonDAO dao = new PersonDAO();
		Boolean n = dao.insertPerson(person);

		if (n) {
			LoginDAO daoL = new LoginDAO();
			daoL.addLogin(email, password, 2); 
		}

		String contextPath = request.getContextPath();
		response.sendRedirect(contextPath + "/pages/login.jsp");
	}

}
