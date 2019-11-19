package com.ait.fastfoodius.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ait.fastfoodius.bean.OrderItemBean;
import com.ait.fastfoodius.resource.DatabaseConnection;

public class OrderItemDAO {
	// Connection DB
		private Connection con = null;
		private PreparedStatement stmtp = null;
		OrderItemBean orderItem = new OrderItemBean();

		public void insertOrderItem(OrderItemBean orderItem) {
			String cmd = "insert into order values (?,?,?,?);";
			try {
				con = new DatabaseConnection().connect();
				stmtp = con.prepareStatement(cmd);
				stmtp.setInt(1, orderItem.getMenu_ID());
				stmtp.setInt(2, orderItem.getQuantity());
				stmtp.setString(3, orderItem.getPaymentStatus());
				stmtp.setString(4, orderItem.getOrderChannel());
				System.out.println(stmtp.toString());
				stmtp.executeUpdate();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		}
		
		public void retrieveOrderItem(int orderID) {
			ResultSet rs = null;
			String cmd = "select * from order where order_ID = ? ;";
			try {
				con = new DatabaseConnection().connect();
				stmtp = con.prepareStatement(cmd);
				stmtp.setInt(1, orderID);
				rs = stmtp.executeQuery();
				while (rs.next()) {
					//LoadItems
					//orderItem.setOrder_ID(rs.getInt(1));
				}
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		}		

		public void retrieveOrderItem(String orderChannel) {
			ResultSet rs = null;
			String cmd = "select * from order where orderChannel = ? ;";
			try {
				con = new DatabaseConnection().connect();
				stmtp = con.prepareStatement(cmd);
				stmtp.setString(1, orderChannel);
				rs = stmtp.executeQuery();
				while (rs.next()) {
					//LoadItems
					//orderItem.setOrderChannel(rs.getString(1));
				}
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		}		


}
