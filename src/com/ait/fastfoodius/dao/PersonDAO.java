package com.ait.fastfoodius.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ait.fastfoodius.bean.PersonBean;
import com.ait.fastfoodius.resource.DatabaseConnection;

public class PersonDAO {

	// Connection DB
	private Connection con = null;
	private Statement stmt = null;

	public List<PersonBean> findAll() {
		try {

			con = new DatabaseConnection().connect();
			PreparedStatement stm = con.prepareStatement("SELECT * FROM person");
			List<PersonBean> person = new ArrayList<PersonBean>();
			ResultSet rs = stm.executeQuery();
			while (rs.next()) {
				PersonBean pers = extract(rs);
				person.add(pers);
			}
			return person;
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}

	public PersonBean findById(int id) {
		try {
			con = new DatabaseConnection().connect();

			PreparedStatement stm = con.prepareStatement("SELECT * FROM person WHERE person_Id = ?");
			stm.setInt(1, id);
			ResultSet rs = stm.executeQuery();
			if (rs.next()) {
				PersonBean pers = extract(rs);
				return pers;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}

	public List<PersonBean> findByFirstName(String name) {
		try {

			con = new DatabaseConnection().connect();
			PreparedStatement stm = con.prepareStatement("SELECT * FROM person WHERE firstName LIKE ?");
			stm.setString(1, "%" + name + "%");
			List<PersonBean> person = new ArrayList<PersonBean>();
			ResultSet rs = stm.executeQuery();
			while (rs.next()) {
				PersonBean pers = extract(rs);
				person.add(pers);
			}
			return person;
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}

	public boolean insertPerson(PersonBean person) {
		try {
			con = new DatabaseConnection().connect();
			PreparedStatement stm = con
					.prepareStatement("INSERT INTO person (person_ID, firstName, lastName, dateofbirth, gender,"
							+ "title, phone, address, city, postalCode, emailAddress) VALUES (null,?,?,?,?,?,?,?,?,?,?)");
			stm.setString(1, person.getFirstName());
			stm.setString(2, person.getLastName());
			if (person.getDateofbirth() != null) {
				stm.setDate(3, new java.sql.Date(person.getDateofbirth().getTime()));
			} else {
				stm.setDate(3, null);
			}
			stm.setString(4, person.getGender());
			stm.setString(5, person.getTitle());
			stm.setString(6, person.getPhone());
			stm.setString(7, person.getAddress());
			stm.setString(8, person.getCity());
			stm.setString(9, person.getPostalCode());
			stm.setString(10, person.getEmail());
			System.out.println(stm.toString());
			stm.executeUpdate();
			return true;
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean deletePersonById(int id) {
		try {
			con = new DatabaseConnection().connect();

			PreparedStatement stm = con.prepareStatement("DELETE FROM person WHERE person_ID= ? ");
			stm.setInt(1, id);
			stm.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return false;
	}

	private PersonBean extract(ResultSet rs) throws SQLException {
		PersonBean person = new PersonBean();
		person.setId(rs.getInt("person_ID"));
		person.setFirstName(rs.getString("firstName"));
		person.setLastName(rs.getString("lastName"));
		person.setDateofbirth(rs.getDate("dateofbirth"));
		person.setGender(rs.getString("gender"));
		person.setTitle(rs.getString("title"));
		person.setPhone(rs.getString("phone"));
		person.setAddress(rs.getString("address"));
		person.setCity(rs.getString("city"));
		person.setPostalCode(rs.getString("postalCode"));
		person.setEmail(rs.getString("emailAddress"));

		return person;
	}
}
