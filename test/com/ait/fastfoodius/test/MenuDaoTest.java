package com.ait.fastfoodius.test;

import java.sql.Connection;
import java.sql.SQLException;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.ait.fastfoodius.bean.MenuBean;
import com.ait.fastfoodius.dao.MenuDAO;
import com.ait.fastfoodius.resource.DatabaseConnection;

public class MenuDaoTest {

	private MenuDAO dao;
	private Connection cn; 
 
	@BeforeEach
	public void init() throws ClassNotFoundException, SQLException {
		cn = new DatabaseConnection().connect();
		dao = new MenuDAO();

	}

	@AfterEach
	public void finalize() throws SQLException {
		cn.close();
	}

	@Test
	void testInsertAndDelete() {

		MenuBean item = new MenuBean();
		item.setItemDescr("Cassava Fried");
		item.setCategoryId(201);
		item.setPrice(5.00);
		boolean insert = dao.insertItem(item);

	}

}
