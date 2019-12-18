package com.ait.fastfoodius.bean;

public class MenuBean {

	private int itemId;
	private String itemDescr;
	private int categoryId;
	private double price;

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int menuId) {
		this.itemId = menuId;
	}

	public String getItemDescr() {
		return itemDescr;
	}

	public void setItemDescr(String menuDescr) {
		this.itemDescr = menuDescr;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Menu details: [Item Id= " + itemId + " - Item Description= " + itemDescr + " - Category Id= "
				+ categoryId + " - Price= " + price;
	}

}
