package com.ait.fastfoodius.bean;

public class OrderItemBean {

	private int order_ID;
	private int menu_ID;
	private int quantity;

	private String menuDesc;
	private double price;

	/**
	 * @return the order_ID
	 */
	public int getOrder_ID() {
		return order_ID;
	}

	/**
	 * @param order_ID the order_ID to set
	 */
	public void setOrder_ID(int order_ID) {
		this.order_ID = order_ID;
	}

	/**
	 * @return the menu_ID
	 */
	public int getMenu_ID() {
		return menu_ID;
	}

	/**
	 * @param menu_ID the menu_ID to set
	 */
	public void setMenu_ID(int menu_ID) {
		this.menu_ID = menu_ID;
	}

	/**
	 * @return the quantity
	 */
	public int getQuantity() {
		return quantity;
	}

	/**
	 * @param quantity the quantity to set
	 */
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	/**
	 * @return the menuDesc
	 */
	public String getMenuDesc() {
		return menuDesc;
	}

	/**
	 * @param menuDesc the menuDesc to set
	 */
	public void setMenuDesc(String menuDesc) {
		this.menuDesc = menuDesc;
	}

	/**
	 * @return the price
	 */
	public double getPrice() {
		return price;
	}

	/**
	 * @param price the price to set
	 */
	public void setPrice(double price) {
		this.price = price;
	}

}
