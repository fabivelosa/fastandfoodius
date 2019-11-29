package com.ait.fastfoodius.dao;

import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ait.fastfoodius.bean.MenuBean;
import com.ait.fastfoodius.bean.OrderBean;
import com.ait.fastfoodius.resource.DatabaseConnection;
import com.ait.fastfoodius.resource.deliveryStatus;

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

	public List<OrderBean> retrieveOrderAssigned(String deliveredBy) {
		List<OrderBean> orderlist = new ArrayList<OrderBean>();
		ResultSet rs = null;
		String cmd = "select order_ID, orderAddress, orderCity, requiredDeliveryDate, paymentStatus, orderPhoneNumber "
				+ "from orders where deliveryStatus = ?  and deliveredBy = ? ;";
		try {
			con = new DatabaseConnection().connect();
			stmtp = con.prepareStatement(cmd);
			stmtp.setString(1, deliveryStatus.ASSIGNED.toString());
			stmtp.setString(2, deliveredBy);
			System.out.println(cmd.toString());
			rs = stmtp.executeQuery();
			while (rs.next()) {
				OrderBean order = new OrderBean();
				order.setOrder_ID(rs.getInt("order_ID"));
				order.setOrderAddress(rs.getString("orderAddress"));
				order.setOrderCity(rs.getString("orderCity"));
				order.setRequiredDeliveryDate(rs.getDate("requiredDeliveryDate"));
				order.setPaymentStatus(rs.getString("paymentStatus"));
				order.setOrderPhoneNumber(rs.getString("orderPhoneNumber"));
				orderlist.add(order);

			}
			

			
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return orderlist;
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

	public List<OrderBean> retrieveAllOrders() {
		List<OrderBean> orderlist = new ArrayList<OrderBean>();
		ResultSet rs = null;
		String cmd = "select order_ID, customer_ID,  orderAddress, orderCity, orderPostalCode, orderEmailAdress, "
				+ "orderPhoneNumber,orderDate, paymentStatus, "
				+ "requiredDeliveryDate,  deliveredBy, deliveryStatus, whenDelivered"
				+ "from orders ;";
		try {
			con = new DatabaseConnection().connect();
			stmtp = con.prepareStatement(cmd);
			System.out.println(cmd.toString());
			rs = stmtp.executeQuery();
			while (rs.next()) {
				OrderBean order = new OrderBean();
				order.setOrder_ID(rs.getInt("order_ID"));
				order.setCustomer_ID(rs.getInt("customer_ID"));
				order.setOrderAddress(rs.getString("orderAddress"));
				order.setOrderCity(rs.getString("orderCity"));
				order.setOrderPostalCode(rs.getString("orderPostalCode"));
				order.setOrderEmailAdress(rs.getString("orderEmailAdress"));
				order.setOrderPhoneNumber(rs.getString("orderPhoneNumber"));
				order.setOrderDate(rs.getDate("orderDate"));
				order.setRequiredDeliveryDate(rs.getDate("requiredDeliveryDate"));
				order.setPaymentStatus(rs.getString("paymentStatus"));
				order.setDeliveryStatus(rs.getString("deliveryStatus"));
				order.setDeliveredby(rs.getString("deliveredBy"));
				order.setWhenDelivered(rs.getDate("whenDelivered"));
				orderlist.add(order);
}
			

			
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return orderlist;
	}
	
}
