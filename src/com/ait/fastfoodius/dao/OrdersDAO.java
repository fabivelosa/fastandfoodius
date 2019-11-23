package com.ait.fastfoodius.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
			// others fields
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
				// fullfill order
				order.setOrder_ID(rs.getInt(1));
			}
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}

	public void retrieveOrder(Date requiredDeliveryDate) {
		ResultSet rs = null;
		String cmd = "select * from order where requiredDeliveryDate = ? ;";
		try {
			con = new DatabaseConnection().connect();
			stmtp = con.prepareStatement(cmd);
			stmtp.setDate(1, new java.sql.Date(requiredDeliveryDate.getTime()));
			rs = stmtp.executeQuery();
			while (rs.next()) {
				// fullfill order
				order.setOrder_ID(rs.getInt(1));
			}
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}


	public void retrieveOrderbyID(int orderId) {
		ResultSet rs = null;
		String cmd = "select * from delivery where orderId = ? ;";
		try {
			con = new DatabaseConnection().connect();
			stmtp = con.prepareStatement(cmd);
			stmtp.setInt(1, orderId);
			rs = stmtp.executeQuery();
			while (rs.next()) {
				// fullfill order
			}
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}

	public void retrieveOrder(String deliveryStatus) {
		ResultSet rs = null;
		String cmd = "select * from delivery where deliverystatus = ? ;";
		try {
			con = new DatabaseConnection().connect();
			stmtp = con.prepareStatement(cmd);
			stmtp.setString(1, deliveryStatus);
			rs = stmtp.executeQuery();
			while (rs.next()) {
				// fullfill order
			}
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}
	
	public void retrieveOrderAssigned(String deliveredBy) {
		ResultSet rs = null;
		String cmd = "select * from delivery where deliveryStatus = deliveryStatus.ASSIGNED and deliveredBy = ? ;";
		try {
			con = new DatabaseConnection().connect();
			stmtp = con.prepareStatement(cmd);
			stmtp.setString(1, deliveredBy);
			rs = stmtp.executeQuery();
			while (rs.next()) {
				// fullfill order
			}
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}

	public void updateOrderDelivered(String deliveryStatus, String loginDeliverer, Date deliveryDate) {
		String cmd = "update order set delyverystatus = ? , deliveredBy = ?, whenDelivered = ? where order_id = ? ;";
		try {
			con = new DatabaseConnection().connect();
			stmtp = con.prepareStatement(cmd);
			stmtp.setString(1, deliveryStatus);
			stmtp.setString(2, loginDeliverer);
			stmtp.setDate(3, new java.sql.Date(deliveryDate.getTime()));
			stmtp.executeUpdate();
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}
}
