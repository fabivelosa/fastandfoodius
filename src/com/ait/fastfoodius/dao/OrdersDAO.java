package com.ait.fastfoodius.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Date;

import com.ait.fastfoodius.bean.OrderBean;
import com.ait.fastfoodius.resource.DatabaseConnection;

public class OrdersDAO {
	// Connection DB
	private Connection con = null;
	private PreparedStatement stmtp = null;
	OrderBean order = new OrderBean();

	public void insertOrder(OrderBean order) {
		String cmd = "insert into order values (?,?,?,?,?,?,?,?);";
		try {
			con = new DatabaseConnection().connect();
			stmtp = con.prepareStatement(cmd);
			stmtp.setInt(1, order.getCustomer_ID());
			stmtp.setString(2, order.getOrderAddress());
			//others fields
			System.out.println(stmtp.toString());
			stmtp.executeUpdate();
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}

	public void retrieveOrder(int customerID) {
		ResultSet rs = null;
		String cmd = "select * from order where customer_ID = ? ;";
		try {
			con = new DatabaseConnection().connect();
			stmtp = con.prepareStatement(cmd);
			stmtp.setInt(1, customerID);
			rs = stmtp.executeQuery();
			while (rs.next()) {
				//fullfill order
				order.setOrder_ID(rs.getInt(1));
			}
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}
	
	public void retrieveOrder(String requiredDeliveryDate) {
		ResultSet rs = null;
		String cmd = "select * from order where requiredDeliveryDate = ? ;";
		try {
			con = new DatabaseConnection().connect();
			stmtp = con.prepareStatement(cmd);
			stmtp.setString(1, requiredDeliveryDate);
			rs = stmtp.executeQuery();
			while (rs.next()) {
				//fullfill order
				order.setOrder_ID(rs.getInt(1));
			}
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}

}
