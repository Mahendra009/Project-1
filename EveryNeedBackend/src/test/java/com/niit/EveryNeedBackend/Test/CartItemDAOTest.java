package com.niit.EveryNeedBackend.Test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.EveryNeedBackend.DAO.CartItemDAO;
import com.niit.EveryNeedBackend.model.CartItem;

public class CartItemDAOTest {
	
	private static AnnotationConfigApplicationContext context;
	private static CartItemDAO cartItemDAO;
	

	@BeforeClass
	public static void setUpBeforeClass() throws Exception 
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.EveryNeedBackend");
		context.refresh();
		cartItemDAO = (CartItemDAO) context.getBean("cartItemDAO");
	}

	@Ignore
	@Test
	public void testSaveCartItem() {
		CartItem cartItem = new CartItem();
		cartItem.setBrand("Nokia");
		cartItem.setCartId(1);
		cartItem.setProductCode("PRDD051552EF3");
		cartItem.setProductId(20);
		cartItem.setProductName("Nokia Asha");
		cartItem.setQuantity(4);
		cartItem.setStatus("NA");
		cartItem.setUnitPrice(35000);
		cartItem.setUserName("Kaushal Dubey");
		
		
		assertTrue("Problem in saving CartItem", cartItemDAO.saveCartItem(cartItem));
	}

	@Ignore
	@Test
	public void testUpdateCartItem() {
		CartItem cartItem = cartItemDAO.getCartItem(1);

		
		assertTrue("Problem in updating CartItem", cartItemDAO.updateCartItem(cartItem));
	}

	@Ignore
	@Test
	public void testDeleteCartItem() {
		CartItem cartItem = cartItemDAO.getCartItem(2);
		assertTrue("Problem in updating CartItem", cartItemDAO.deleteCartItem(cartItem));
		
	}

	@Ignore
	@Test
	public void testGetCartItem() {
		System.out.println("Nokia");
		assertNotNull("Unable to get CartItem", cartItemDAO.getCartItem(1));
	}

	
	@Test
	public void testListCartItems() {
		List<CartItem> listCartItems = cartItemDAO.listCartItems("Kaushal Dubey");
		assertTrue("Problem in listing CartItem",listCartItems.size()>0);
	
		for(CartItem cartItem:listCartItems)
		{
			System.out.println(cartItem.getBrand()+":::");
			System.out.println(cartItem.getCartId());
			System.out.println(cartItem.getCartItemId()+":::");
			System.out.println(cartItem.getProductCode()+":::");
			System.out.println(cartItem.getProductId()+":::");
			System.out.println(cartItem.getProductName()+":::");
			System.out.println(cartItem.getQuantity()+":::");
			System.out.println(cartItem.getStatus()+":::");
			System.out.println(cartItem.getUnitPrice());
			System.out.println(cartItem.getUserName());
		}
		
	}

}
