package com.ait.fastfoodius.bean;

public class DeliveryBean {

	private int deliveryid;
	private int order_ID;
	private String deliveredby;
	private String deliveryStatus;
	private String whenDelivered;
	
	public int getdeliveryid() {
		return deliveryid;	
	}
	public void setdeliveryid(int deliveryid) {
		this.deliveryid = deliveryid;
	}
	public int getorder_ID() {
		return order_ID;
	}
	public void setorder_ID(int order_ID) {
		this.order_ID = order_ID;
	}
	public String getdeliveredby() {
		return deliveredby;
	}
	public void setdeliveredby(String deliveredby) {
		this.deliveredby = deliveredby;
	}
	public String getdeliveryStatus() {
		return deliveryStatus;
	}
	public void setdeliveryStatus(String deliveryStatus) {
		this.deliveryStatus= deliveryStatus;
		
	}
	public String getwhenDelivered() {
		return whenDelivered;
	}
	public void setwhenDelivered(String whenDelivered) {
		this.whenDelivered = whenDelivered;
	}
}
