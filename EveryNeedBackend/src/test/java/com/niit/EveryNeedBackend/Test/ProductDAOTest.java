package com.niit.EveryNeedBackend.Test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.EveryNeedBackend.DAO.ProductDAO;
import com.niit.EveryNeedBackend.model.Product;

public class ProductDAOTest {

	private static AnnotationConfigApplicationContext context;
	private static ProductDAO productDAO;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception 
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.EveryNeedBackend");
		context.refresh();
		productDAO = (ProductDAO) context.getBean("productDAO");
	}

	@Ignore
	@Test
	public void testSaveProduct() {
		
		Product product = new Product();
		product.setBrand("Sony");
		product.setCategoryId(1);
		product.setDescription("This is Sony Smart phone");
		product.setProductName("Sony Experia");
		product.setQuantity(5);
		product.setRating(4);
		product.setSupplierId(1);
		product.setUnitPrice(25000);
		
		assertTrue("Problem in adding Product", productDAO.saveProduct(product));
	}

	@Ignore
	@Test
	public void testUpdateProduct() {
		Product product = productDAO.getProduct(3);
		product.setBrand("Nokia");
		
		assertTrue("Problem in updateing Product", productDAO.updateProduct(product));
	}

	@Ignore
	@Test
	public void testDeleteProduct() {
		Product product = productDAO.getProduct(3);
		assertTrue("Problem in deleting Product", productDAO.deleteProduct(product));
		
	}

	@Ignore
	@Test
	public void testGetProduct() {
		
		System.out.println("Samsung");
		assertNotNull("Can not get the product", productDAO.getProduct(1));
		
	}

	@Ignore
	@Test
	public void testListProducts() {
		List<Product> listProducts = productDAO.listProducts();
		
		assertTrue("Problem in listing Products", productDAO.listProducts().size()>0);
		
		for(Product product:listProducts)
		{
			System.out.println(product.getBrand()+":::");
			System.out.println(product.getCategoryId()+":::");
			System.out.println(product.getDescription()+":::");
			System.out.println(product.getProductCode()+":::");
			System.out.println(product.getProductId()+":::");
			System.out.println(product.getProductName()+":::");
			System.out.println(product.getQuantity()+":::");
			System.out.println(product.getRating()+":::");
			System.out.println(product.getSupplierId()+":::");
			System.out.println(product.getUnitPrice()+":::");
		}
	}

	@Ignore
	@Test
	public void testListProductByCategory() {
		fail("Not yet implemented");
	}

	@Ignore
	@Test
	public void testListProductBySupplier() {
		fail("Not yet implemented");
	}

	@Ignore
	@Test
	public void testListProductBySearch() {
		fail("Not yet implemented");
	}

	@Ignore
	@Test
	public void testListProductByFilter() {
		fail("Not yet implemented");
	}

}
