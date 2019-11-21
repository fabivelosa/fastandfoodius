package com.ait.fastfoodius.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ait.fastfoodius.bean.DeliveryBean;
import com.ait.fastfoodius.resource.DatabaseConnection;

public class DeliveryDAO {
	
	// Connection DB
	private Connection con = null;
	private PreparedStatement stmtp = null;
	DeliveryBean delivery = new DeliveryBean();

	public void insertDelivery(DeliveryBean delivery) {
		String cmd = "insert into delivery values (?,?,?,?,?,?,?,?);";
		try {
			con = new DatabaseConnection().connect();
			stmtp = con.prepareStatement(cmd);
			stmtp.setInt(1, delivery.getdeliveryid());
			stmtp.setString(2, delivery.getdeliveryStatus());
			//others fields
			System.out.println(stmtp.toString());
			stmtp.executeUpdate();
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}

	public void retrieveOrder(int deliveryid) {
		ResultSet rs = null;
		String cmd = "select * from delivery where deliveryid = ? ;";
		try {
			con = new DatabaseConnection().connect();
			stmtp = con.prepareStatement(cmd);
			stmtp.setInt(1, deliveryid);
			rs = stmtp.executeQuery();
			while (rs.next()) {
				//fullfill order
		    delivery.setdeliveryid(rs.getInt(1));
			}
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}
	
	public void updateDelivery(String deliveryStatus) {
		ResultSet rs = null;
		String cmd = "select * from delivery where deliverystatus = ? ;";
		try {
			con = new DatabaseConnection().connect();
			stmtp = con.prepareStatement(cmd);
			stmtp.setString(1, deliveryStatus);
			rs = stmtp.executeQuery();
			while (rs.next()) {
				//fullfill order
				delivery.setdeliveryid(rs.getInt(1));
			}
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}

}	


