package com.ait.fastfoodius.bean;

import java.util.Date;
import java.util.List;

public class OrderBean {

	private int order_ID;
	private int customer_ID;
	private String orderChannel;
	private String orderAddress;
	private String orderCity;
	private String orderPostalCode;
	private String orderEmailAddress; 
	private String orderPhoneNumber;
	private Date orderDate;
	private Date requiredDeliveryDate;
	private String paymentStatus;
	private String deliveredby;
	private Date whenDelivered;
	private String deliveryStatus;	
	List<OrderItemBean> orderItem;
	
	
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
	 * @return the orderChannel
	 */
	public String getOrderChannel() {
		return orderChannel;
	}
	/**
	 * @param orderChannel the orderChannel to set
	 */
	public void setOrderChannel(String orderChannel) {
		this.orderChannel = orderChannel;
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
	 * @return the orderEmailAddress
	 */
	public String getOrderEmailAddress() {
		return orderEmailAddress;
	}
	/**
	 * @param orderEmailAddress the orderEmailAddress to set
	 */
	public void setOrderEmailAddress(String orderEmailAddress) {
		this.orderEmailAddress = orderEmailAddress;
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
	/**
	 * @return the paymentStatus
	 */
	public String getPaymentStatus() {
		return paymentStatus;
	}
	/**
	 * @param paymentStatus the paymentStatus to set
	 */
	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}
	/**
	 * @return the deliveredby
	 */
	public String getDeliveredby() {
		return deliveredby;
	}
	/**
	 * @param deliveredby the deliveredby to set
	 */
	public void setDeliveredby(String deliveredby) {
		this.deliveredby = deliveredby;
	}
	/**
	 * @return the whenDelivered
	 */
	public Date getWhenDelivered() {
		return whenDelivered;
	}
	/**
	 * @param whenDelivered the whenDelivered to set
	 */
	public void setWhenDelivered(Date whenDelivered) {
		this.whenDelivered = whenDelivered;
	}
	/**
	 * @return the deliveryStatus
	 */
	public String getDeliveryStatus() {
		return deliveryStatus;
	}
	/**
	 * @param deliveryStatus the deliveryStatus to set
	 */
	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}
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
	
}