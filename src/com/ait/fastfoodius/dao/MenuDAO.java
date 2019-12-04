package com.ait.fastfoodius.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ait.fastfoodius.bean.MenuBean;
import com.ait.fastfoodius.resource.DatabaseConnection;

public class MenuDAO {

	// Connection DB
	private Connection con = null;

	public List<MenuBean> findAll() {
		List<MenuBean> item = new ArrayList<MenuBean>();
		try {

			con = new DatabaseConnection().connect();
			PreparedStatement stm = con.prepareStatement("SELECT * FROM menu ;");
			
			ResultSet rs = stm.executeQuery();
			while (rs.next()) {
				MenuBean menu = extract(rs);
				item.add(menu);
			}
			stm.close();
			rs.close();
			con.close();
			return item;

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return item;
	}

	public List<MenuBean> findByDescription(String description) {
		List<MenuBean> item = new ArrayList<MenuBean>();
		try {

			con = new DatabaseConnection().connect();
			PreparedStatement stm = con.prepareStatement("SELECT * FROM menu WHERE menuDescr LIKE ? ;");
			stm.setString(1, "%" + description + "%");
			
			ResultSet rs = stm.executeQuery();
			while (rs.next()) {
				MenuBean menu = extract(rs);
				item.add(menu);
			}

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return item;
	}
	
	
	public MenuBean findById(int id) {
		MenuBean item = null;
		try {

			con = new DatabaseConnection().connect();
			PreparedStatement stm = con.prepareStatement("SELECT * FROM menu WHERE item_ID = ? ;");
			stm.setInt(1, id);
			
			ResultSet rs = stm.executeQuery();
			while (rs.next()) {
				item = extract(rs);
			}

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return item;
	}

	public List<MenuBean> findByCategory(int category) {
		List<MenuBean> item = new ArrayList<MenuBean>();
		try {

			con = new DatabaseConnection().connect();
			PreparedStatement stm = con.prepareStatement("SELECT * FROM menu WHERE category_id = ? ; ");
			stm.setInt(1, category);
			
			
			ResultSet rs = stm.executeQuery();
			while (rs.next()) {
				MenuBean menu = extract(rs);
				item.add(menu);
			}

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return item;
	}

	
	public boolean insertItem(MenuBean item) {
		try {
			con = new DatabaseConnection().connect();
			PreparedStatement stm = con
					.prepareStatement("INSERT INTO menu (item_id, itemDescr,category_ID,price) VALUES (NULL,?,?,?) ;");
			stm.setString(1, item.getItemDescr());
			stm.setInt(2, item.getCategoryId());
			stm.setDouble(3, item.getPrice());
			stm.executeUpdate();
			return true;
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean deleteItemById(int id) {
		try {
			con = new DatabaseConnection().connect();

			PreparedStatement stm = con.prepareStatement("DELETE FROM menu WHERE item_ID= ? ; ");
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

	private MenuBean extract(ResultSet rs) throws SQLException {
		MenuBean item = new MenuBean();
		item.setItemId(rs.getInt("item_ID"));
		item.setItemDescr(rs.getString("itemDescr"));
		item.setCategoryId(rs.getInt("category_ID"));
		item.setPrice(rs.getDouble("price"));

		return item;
	}

}
