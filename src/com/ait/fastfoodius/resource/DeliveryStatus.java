package com.ait.fastfoodius.resource;

public enum DeliveryStatus {
	
	PENDING("PENDING"),
	ASSIGNED("ASSIGNED"),
	ONTHEWAY("ONTHEWAY"),
	DELIVERED("DELIVERED");
	
    private final String status;
	
	
	DeliveryStatus(String  status) { 
        this.status = status;
    }
    
    public String getStatus() {
        return this.status;
    }
}
