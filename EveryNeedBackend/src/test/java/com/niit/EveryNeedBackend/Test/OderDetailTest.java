package com.niit.EveryNeedBackend.Test;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.EveryNeedBackend.DAO.OrderDetailDAO;
import com.niit.EveryNeedBackend.model.OrderDetail;

public class OderDetailTest {

	private static AnnotationConfigApplicationContext context;
	private static OrderDetailDAO orderDetailDAO;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception 
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.EveryNeedBackend");
		context.refresh();
		orderDetailDAO = (OrderDetailDAO) context.getBean("orderDetailDAO");
	}

	@Ignore
	@Test
	public void testAddOrderDetail() {
		OrderDetail od = new OrderDetail();
		od.setBrand("Priyagold");
		od.setOrderDate(new java.util.Date());
		od.setPaymentMode("CC");
		od.setProductCode("PRD37DD528C14");
		od.setProductId(21);
		od.setProductName("Priyagold biskits");
		od.setUserName("Mahendra Srivastava");
		od.setTotalPurchaseAmmount(15.0);
		
		assertTrue("Problem in inserting Order", orderDetailDAO.addOrderDetail(od));
	}

	
	@Test
	public void testUpdateOrderDetail() {
		assertTrue("Problem in updateing Orderdetail", orderDetailDAO.updateOrderDetail("Mahendra Srivastava"));
	}

	@Ignore
	@Test
	public void testDeleteOrderDetail() {
		fail("Not yet implemented");
	}

}
