package com.ait.fastfoodius.bean;

import java.util.Date;
import java.util.List;

public class OrderBean {

	int order_ID;
	int customer_ID;
	String orderAddress;
	String orderCity;
	String orderPostalCode;
	String orderEmailAdress;
	String orderPhoneNumber;
	Date orderDate;
	Date requiredDeliveryDate;
	List<OrderItemBean> orderItem;
	
	/**
	 * @return the orderItem
	 */
	public List<OrderItemBean> getOrderItem() {
		return orderItem;
	}
	/**
	 * @param orderItem the orderItem to set
	 */
	public void setOrderItem(List<OrderItemBean> orderItem) {
		this.orderItem = orderItem;
	}
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
	 * @return the customer_ID
	 */
	public int getCustomer_ID() {
		return customer_ID;
	}
	/**
	 * @param customer_ID the customer_ID to set
	 */
	public void setCustomer_ID(int customer_ID) {
		this.customer_ID = customer_ID;
	}
	/**
	 * @return the orderAddress
	 */
	public String getOrderAddress() {
		return orderAddress;
	}
	/**
	 * @param orderAddress the orderAddress to set
	 */
	public void setOrderAddress(String orderAddress) {
		this.orderAddress = orderAddress;
	}
	/**
	 * @return the orderCity
	 */
	public String getOrderCity() {
		return orderCity;
	}
	/**
	 * @param orderCity the orderCity to set
	 */
	public void setOrderCity(String orderCity) {
		this.orderCity = orderCity;
	}
	/**
	 * @return the orderPostalCode
	 */
	public String getOrderPostalCode() {
		return orderPostalCode;
	}
	/**
	 * @param orderPostalCode the orderPostalCode to set
	 */
	public void setOrderPostalCode(String orderPostalCode) {
		this.orderPostalCode = orderPostalCode;
	}
	/**
	 * @return the orderEmailAdress
	 */
	public String getOrderEmailAdress() {
		return orderEmailAdress;
	}
	/**
	 * @param orderEmailAdress the orderEmailAdress to set
	 */
	public void setOrderEmailAdress(String orderEmailAdress) {
		this.orderEmailAdress = orderEmailAdress;
	}
	/**
	 * @return the orderPhoneNumber
	 */
	public String getOrderPhoneNumber() {
		return orderPhoneNumber;
	}
	/**
	 * @param orderPhoneNumber the orderPhoneNumber to set
	 */
	public void setOrderPhoneNumber(String orderPhoneNumber) {
		this.orderPhoneNumber = orderPhoneNumber;
	}
	/**
	 * @return the orderDate
	 */
	public Date getOrderDate() {
		return orderDate;
	}
	/**
	 * @param orderDate the orderDate to set
	 */
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	/**
	 * @return the requiredDeliveryDate
	 */
	public Date getRequiredDeliveryDate() {
		return requiredDeliveryDate;
	}
	/**
	 * @param requiredDeliveryDate the requiredDeliveryDate to set
	 */
	public void setRequiredDeliveryDate(Date requiredDeliveryDate) {
		this.requiredDeliveryDate = requiredDeliveryDate;
	}
	
	
	
}
