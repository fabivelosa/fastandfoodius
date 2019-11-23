package com.ait.fastfoodius.bean;

import java.util.Date;

public class DeliveryBean {

	private int deliveryid;
	private int order_ID;
	private String deliveredby;
	private Date whenDelivered;
	private String deliveryStatus;

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
		this.deliveryStatus = deliveryStatus;
		/*
		 * delivery.DeliveryStatus 1. PENDING (create a order) 
		 * 2. ASSIGNED (when manager
		 * assigned to a staff delivery) 
		 * 3. ONTHEWAY (when delivery starts the delivery)
		 * 4. DELIVERED (when delivery completes the delivery)
		 */
	}

	public Date getwhenDelivered() {
		return whenDelivered;
	}

	public void setwhenDelivered(Date whenDelivered) {
		this.whenDelivered = whenDelivered;
	}
}
