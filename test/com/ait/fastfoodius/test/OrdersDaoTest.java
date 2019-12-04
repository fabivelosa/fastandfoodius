package com.ait.fastfoodius.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.sql.Connection;
import java.sql.SQLException;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.ait.fastfoodius.bean.OrderBean;
import com.ait.fastfoodius.dao.OrdersDAO;
import com.ait.fastfoodius.resource.DatabaseConnection;

public class OrdersDaoTest {

	private Connection cn;

	@BeforeEach
	public void init() throws ClassNotFoundException, SQLException {
		cn = new DatabaseConnection().connect();
		new OrdersDAO();
		new OrderBean();

	}

	@AfterEach
	public void finalize() throws SQLException {
		cn.close();
	}

	@Test
	void testInsertOrder() {
		OrderBean item = new OrderBean();
		item.setCustomer_ID(13);
		item.setOrderAddress("Obere Str. 57");
		item.setOrderCity("Galway");
		item.setOrderPostalCode("12209");
		item.setOrderPostalCode("dr.ana@gmail.co");
		item.setOrderPhoneNumber("080351977");
		item.setOrderDate(null);
		item.setPaymentStatus("PAID_FRONT_DESK");
		item.setDeliveryStatus("Pending");
		item.setRequiredDeliveryDate(null);
		item.setOrderChannel("Front Desk");
		item.setDeliveredby("delivery@fastfood.com");
		assertEquals(13, item.getCustomer_ID());
		assertEquals("Obere Str. 57", item.getOrderAddress());
		assertEquals("Galway", item.getOrderCity());		
		assertEquals(null, item.getOrderDate());
		assertEquals("PAID_FRONT_DESK", item.getPaymentStatus());
		assertEquals("Pending", item.getDeliveryStatus());
		assertEquals("delivery@fastfood.com", item.getDeliveredby());

	}

	@Test
	void testRetrieveOrder() {
		OrderBean item = new OrderBean();
		assertNotNull(item);
		item.setOrder_ID(10245);
		assertEquals(10245, item.getOrder_ID());
	}

	@Test
	void testRetrieveAllOrder() {
		OrderBean item = new OrderBean();
		item.setOrder_ID(10253);
		item.setCustomer_ID(13);
		item.setOrderAddress("Obere Str. 57");
		item.setOrderCity("Galway");
		item.setOrderPostalCode("12209");
		item.setOrderEmailAddress("dr.ana@gmail.com");
		item.setOrderPhoneNumber("080351977");
		item.setOrderDate(null);
		item.setRequiredDeliveryDate(null);
		item.setPaymentStatus("PAID_FRONT_DESK");
		item.setDeliveryStatus("Delivered");
		item.setDeliveredby("Obinna");
		item.setWhenDelivered(null);
		assertEquals(10253, item.getOrder_ID());
		assertEquals(13, item.getCustomer_ID());
		assertEquals("Obere Str. 57", item.getOrderAddress());
		assertEquals("Galway", item.getOrderCity());
		assertEquals("12209", item.getOrderPostalCode());
		assertEquals("dr.ana@gmail.com", item.getOrderEmailAddress());
		assertEquals("12209", item.getOrderPostalCode());
		assertEquals(null, item.getOrderDate());
		assertEquals(null, item.getRequiredDeliveryDate());
		assertEquals("PAID_FRONT_DESK", item.getPaymentStatus());
		assertEquals("Obinna", item.getDeliveredby());

	}

	@Test
	void testRetrieveOrderAssigned() {
		OrderBean item = new OrderBean();
		item.setDeliveredby("obinna");
		assertEquals("obinna", item.getDeliveredby());

	}

	@Test
	void testRetrieveOrderDelivered() {
		OrderBean item = new OrderBean();
		item.setWhenDelivered(null);
		assertEquals(null, item.getWhenDelivered());

	}

	@Test
	void testUpdateAssignedDriver() {
		OrderBean item = new OrderBean();
		item.setDeliveredby("obinna");
		assertEquals("obinna", item.getDeliveredby());
	}

	@Test
	void testUpdateOrderOnTheWay() {
		OrderBean item = new OrderBean();
		item.setDeliveryStatus("ONTHEWAY");
		assertEquals("ONTHEWAY", item.getDeliveryStatus());

	}
}
