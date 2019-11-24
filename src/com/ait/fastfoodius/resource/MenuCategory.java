package com.ait.fastfoodius.resource;

public enum MenuCategory {
	
	STARTER(201, "Starters"), 
	SIDEDISH(202, "Side Dish"),
	DESSERT(203, "Dessert"),
	MAINCOURSE(204,"Main Course"),
	DRINKS(205,"Drinks");

	private MenuCategory(int idCategory, String menuCategory) {
		this.idCategory = idCategory;
		this.menuCategory = menuCategory;
	}

	private int idCategory;
	private String menuCategory;

	

	/**
	 * @return the menuCategory
	 */
	public String getMenuCategory() {
		return menuCategory;
	}

	/**
	 * @return the idCategory
	 */
	public int getIdCategory() {
		return idCategory;
	}

}
