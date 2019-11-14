package com.ait.fastfoodius.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.ait.fastfoodius.bean.LoginBean;
import com.ait.fastfoodius.resource.DatabaseConnection;


public class LoginDAO {
	
	// Connection DB
		private Connection con = null;
		private Statement stmt = null;

		public LoginBean serach(String username) {
		
			LoginBean login = new LoginBean();;
			ResultSet rs = null;
			String cmd = "select 1 from users where username = "+username+";";
			try {
				con = new DatabaseConnection().connect();
				stmt = con.prepareStatement(cmd);
				stmt.executeQuery(cmd);
				rs = stmt.executeQuery(cmd);
				while (rs.next()) {
					login.setUsername(rs.getString(1));
					login.setPassword(rs.getString(2));	
				}

			} catch (Exception e1) {
				e1.printStackTrace();
			}
			return login;
		};


}
