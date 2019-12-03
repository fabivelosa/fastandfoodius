package com.ait.fastfoodius.resource;

public enum deliveryStatus {
	
	PENDING("PENDING"),
	ASSIGNED("ASSIGNED"),
	ONTHEWAY("ONTHEWAY"),
	DELIVERED("DELIVERED");
	
    private final String status;
	
	
	deliveryStatus(String  status) {
        this.status = status;
    }
    
    public String getStatus() {
        return this.status;
    }
}
