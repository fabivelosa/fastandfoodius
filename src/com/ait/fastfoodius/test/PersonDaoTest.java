package com.ait.fastfoodius.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.*;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.junit.BeforeClass;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.ait.fastfoodius.bean.PersonBean;
import com.ait.fastfoodius.dao.PersonDAO;
import com.ait.fastfoodius.resource.DatabaseConnection;

class PersonDaoTest {

	private PersonDAO dao;
	private Connection cn;

	@BeforeEach
	public void init() throws ClassNotFoundException, SQLException {
		cn = new DatabaseConnection().connect();
		dao = new PersonDAO(cn);

	}

	@AfterEach
	public void finalize() throws SQLException {
		cn.close();
	}

	@Test
	void testInsertAndDelete() {

		PersonBean person = new PersonBean();
		person.setId(22);
		person.setFirstName("John");
		person.setLastName("Travolta");
		person.setDateofbirth(new Date());
		person.setGender("M");
		person.setTitle("C");
		person.setAddress("14, Grafton Street");
		person.setCity("Dublin");
		person.setPostalCode("021457");
		person.setEmail("j.trav@gmail.com");
		person.setPhone("089 024 2514");
		boolean insert = dao.insertPerson(person);
		PersonBean personFound = dao.findById(22);
		assertEquals("John", personFound.getFirstName());
		// testFindAll
		List<PersonBean> list = dao.findAll();
		assertTrue(list.size() > 0);
		// testName
		list = dao.findByFirstName("John");
		assertEquals("John", list.get(0).getFirstName());
		// testId
		person = dao.findById(22);
		assertEquals(22, person.getId());
		// testDelete
		boolean delete = dao.deletePersonById(22);
		assertTrue(delete);

	}

}
