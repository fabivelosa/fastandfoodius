package com.ait.fastfoodius.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.ait.fastfoodius.bean.OrderItemBean;
import com.ait.fastfoodius.resource.DatabaseConnection;

public class OrderItemDAO {
	// Connection DB
	private Connection con = null;
	private PreparedStatement stmtp = null;
	OrderItemBean orderItem = new OrderItemBean();

	public void insertOrderItem(OrderItemBean orderItem) {
		String cmd = "insert into orderdetail values (?,?,?);";
		try {
			con = new DatabaseConnection().connect();
			stmtp = con.prepareStatement(cmd);
			stmtp.setInt(1, orderItem.getOrder_ID());
			stmtp.setInt(2, orderItem.getMenu_ID());
			stmtp.setInt(3, orderItem.getQuantity());
			stmtp.executeUpdate();
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}

}
