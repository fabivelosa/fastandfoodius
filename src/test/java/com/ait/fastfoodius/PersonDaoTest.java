package com.ait.fastfoodius;



import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

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
		dao = new PersonDAO();

	}

	@AfterEach
	public void finalize() throws SQLException {
		cn.close();
	}

	@Test 
	void testInsertAndDelete() {

		PersonBean person = new PersonBean();
		person.setFirstName("John");
		person.setLastName("Travolta");
		person.setDateofbirth(new Date());
		person.setGender("M");
		person.setTitle("Customer");
		person.setAddress("14, Grafton Street");
		person.setCity("Dublin");
		person.setPostalCode("021457");
		person.setEmail("j.trav@gmail.com");
		person.setPhone("089 024 2514");
		boolean insert = dao.insertPerson(person);
		PersonBean personFound = dao.findByUser("j.trav@gmail.com");
		assertEquals("John", personFound.getFirstName());
		// testFindAll
		List<PersonBean> list = dao.findAll();
		assertTrue(list.size() > 0);
		// testName
		list = dao.findByFirstName("Joyce");
		assertEquals("Joyce", list.get(0).getFirstName());
		// testId
		person = dao.findById(23);
		assertEquals("John", personFound.getFirstName());
		// testDelete
		boolean delete = dao.deletePersonById(personFound.getId());
		assertTrue(delete);

	}

}
