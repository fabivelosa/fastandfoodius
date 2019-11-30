package com.ait.fastfoodius.resource;

public enum Role {
	
	SYSADMIN (1, "sys-admin"), 
	CUSTOMER (2, "customer"),
	FRONTDESK (3, "staff"),
	DELIVERY (4,"delivery"),
	MANAGER (5,"manager");

	private Role (int idRole, String role) {
		this.setIdRole(idRole);
		this.setRole(role);
	}
	
	private int idRole;
	private String role;
	
	/**
	 * @return the idRole
	 */
	public int getIdRole() {
		return idRole;
	}
	/**
	 * @param idRole the idRole to set
	 */
	public void setIdRole(int idRole) {
		this.idRole = idRole;
	}

	/**
	 * @return the role
	 */
	public String getRole() {
		return role;
	}

	/**
	 * @param role the role to set
	 */
	public void setRole(String role) {
		this.role = role;
	}
		

}
