package com.ait.fastfoodius;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.sql.Connection;
import java.sql.SQLException;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.ait.fastfoodius.bean.LoginBean;
import com.ait.fastfoodius.dao.LoginDAO;
import com.ait.fastfoodius.resource.DatabaseConnection;

public class LoginDaoTest {

	private LoginDAO loginDao;
	private LoginBean login;
	private Connection con;

	@BeforeEach
	public void init() throws ClassNotFoundException, SQLException {
		con = new DatabaseConnection().connect();
		loginDao = new LoginDAO();
		login = new LoginBean();

	}

	@AfterEach
	public void finalize() throws SQLException {
		con.close();
	}

	@Test
	void testAddLogin() {
		login = loginDao.searchUserPwd("customer@fastfood.com");
		assertEquals("123", login.getPassword());
		assertEquals(2, login.getRole());
		assertEquals("customer@fastfood.com", login.getUsername());

		

	}

}
