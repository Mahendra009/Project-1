package com.niit.EveryNeedBackend.Test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.EveryNeedBackend.DAO.SupplierDAO;
import com.niit.EveryNeedBackend.model.Supplier;

public class SupplierDAOTest {

	private static AnnotationConfigApplicationContext context;
	private static SupplierDAO supplierDAO; 
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception 
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.EveryNeedBackend");
		context.refresh();
		supplierDAO = (SupplierDAO) context.getBean("supplierDAO");
	}

	@Ignore
	@Test
	public void testSaveSupplier() {
		
		Supplier supplier = new Supplier();
		supplier.setAdharCard("adhar12345");
		supplier.setCategoryId(2);
		supplier.setEmailId("vijay123@gmail.com");
		supplier.setFirmName("Vijay Traders");
		supplier.setGSTIN("GSTIN12345");
		supplier.setPanCard("PAN12345");
		supplier.setPhoneNumber("2222222222");
		supplier.setRatings(4);
		supplier.setSupplierName("Vijay Chauhan");
		
		assertTrue("Problem in adding Supplier", supplierDAO.saveSupplier(supplier));
	}

	@Ignore
	@Test
	public void testUpdateSupplier() {
		Supplier supplier = supplierDAO.getSupplier(3);
		supplier.setSupplierName("Ashok");
		
		assertTrue("Can not update supplier", supplierDAO.updateSupplier(supplier));
	}

	@Ignore
	@Test
	public void testDeleteSupplier() {
		Supplier supplier = supplierDAO.getSupplier(3);
		assertTrue("Can not update supplier", supplierDAO.deleteSupplier(supplier));
	}

	@Ignore
	@Test
	public void testGetSupplier() {
		System.out.println("Satveer Singh");
		assertNotNull("Unable to get Supplier", supplierDAO.getSupplier(1));
		
	}

	@Ignore
	@Test
	public void testListSuppliers() {
		List<Supplier> listSuppliers = supplierDAO.listSuppliers();
		
		assertTrue("Problem in listing category", supplierDAO.listSuppliers().size()>0);
		
		for(Supplier supplier:listSuppliers)
		{
			System.out.println(supplier.getAdharCard()+":::");
			System.out.println(supplier.getCategoryId()+":::");
			System.out.println(supplier.getEmailId()+":::");
			System.out.println(supplier.getFirmName()+":::");
			System.out.println(supplier.getGSTIN()+":::");
			System.out.println(supplier.getPanCard()+":::");
			System.out.println(supplier.getPhoneNumber()+":::");
			System.out.println(supplier.getRatings()+":::");
			System.out.println(supplier.getSupplierCode()+":::");
			System.out.println(supplier.getSupplierId()+":::");
			System.out.println(supplier.getSupplierName()+":::");
		}
	}

}
