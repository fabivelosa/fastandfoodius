package com.ait.fastfoodius.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.ait.fastfoodius.bean.LoginBean;
import com.ait.fastfoodius.resource.DatabaseConnection;


public class LoginDAO {
	
	// Connection DB
		private Connection con = null;
		private Statement stmt = null;
		private PreparedStatement stmtp = null;

		public LoginBean validate(String username) {
		
			LoginBean login = new LoginBean();
			ResultSet rs = null;
			String cmd = "select username, password, accesstype from login where username = '"+username+"';";
			try {
				con = new DatabaseConnection().connect();
				stmt = con.createStatement();
				stmt.executeQuery(cmd);
				rs = stmt.executeQuery(cmd);
				while (rs.next()) {
					login.setUsername(rs.getString(1));
					login.setPassword(rs.getString(2));	
					login.setRole(rs.getInt(3));	
				}

			} catch (Exception e1) {
				e1.printStackTrace();
			}
			return login;
		};
		
		public void addLogin(String username, String password, String accessType) {

			String cmd = "insert into login values (?,?,?);";
			try {
				con = new DatabaseConnection().connect();
				stmtp = con.prepareStatement(cmd);
				stmtp.setString(1, username);
				stmtp.setString(2, password);
				stmtp.setString(3, accessType);
				System.out.println(stmtp.toString());
				stmtp.executeUpdate();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		};
}
