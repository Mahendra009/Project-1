package com.niit.EveryNeedBackend.Test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.EveryNeedBackend.DAO.AddressDAO;
import com.niit.EveryNeedBackend.DAO.CartItemDAO;
import com.niit.EveryNeedBackend.DAO.OrderDetailDAO;
import com.niit.EveryNeedBackend.model.Address;
import com.niit.EveryNeedBackend.model.CartItem;
import com.niit.EveryNeedBackend.model.OrderDetail;

public class HibernateConfigTest {

	public static void main(String[] args) {
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.EveryNeedBackend");
		context.refresh();
		
		/*CategoryDAO categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
		Category category = new Category();
		category.setCategoryName("Men");
		category.setDescription("This is Men Category");
		
		categoryDAO.saveCategory(category);
		System.out.println("Category Added");*/
		
		/*SupplierDAO supplierDAO = (SupplierDAO) context.getBean("supplierDAO");
		Supplier supplier = new Supplier();
		supplier.setAdharCard("adhar1234");
		supplier.setCategoryId(1);
		supplier.setEmailId("sattu123@gmail.com");
		supplier.setFirmName("Harpal Traders");
		supplier.setGSTIN("GSTIN1234");
		supplier.setPanCard("PAN1234");
		supplier.setPhoneNumber("1111111111");
		supplier.setRatings(4);
		supplier.setSupplierName("Satveer Singh");
		
		supplierDAO.saveSupplier(supplier);
		System.out.println("Supplier Saved");*/
		
		/*ProductDAO productDAO = (ProductDAO) context.getBean("productDAO"); 
		Product product = new Product();
		product.setBrand("Samsung");
		product.setCategoryId(1);
		product.setDescription("This is Samsung Galexy");
		product.setProductName("Samsung s9");
		product.setQuantity(5);
		product.setRating(4);
		product.setSupplierId(1);
		product.setUnitPrice(70000);
		
		productDAO.saveProduct(product);
		System.out.println("Product Saved");
*/
		/*UserDAO userDAO = (UserDAO) context.getBean("userDAO");
		User user = new User();
		user.setConfirmPassword("neeraj123");
		user.setContactNumber("3333333333");
		user.setCustomerName("Anshul Malviya");
		user.setEmailId("neeraj123@gmail.com");
		user.setEnabled(true);
		user.setPassWord("neeraj123");
		user.setRole("User");
		user.setUserName("Neeraj Sharma");
		
		userDAO.saveUser(user);
		System.out.println("Save User");*/
		
		/*CartItemDAO cartItemDAO = (CartItemDAO) context.getBean("cartItemDAO");
		CartItem cartItem = new CartItem();
		cartItem.setBrand("Nokia");
		
		cartItem.setProductCode("PRDD051552EF3");
		cartItem.setProductId(20);
		cartItem.setProductName("Nokia s8");
		cartItem.setQuantity(4);
		cartItem.setStatus("Out Of stock");
		
		
		cartItemDAO.saveCartItem(cartItem);
		System.out.println("Save cartItem");*/
		
		/*AddressDAO addressDAO = (AddressDAO) context.getBean("addressDAO");
		Address address = new Address();
		address.setAddressLineOne("Rajendra Nagar");
		address.setAddressLineTwo("Aishbagh");
		address.setBilling(true);
		address.setCity("Lucknow");
		address.setCountry("India");
		address.setLandMark("Shani Mandir");
		address.setPostalCode("226017");
		address.setShipping(true);
		address.setState("Utter Pradesh");
		address.setUserName("Kaushal Dubey");
		
		addressDAO.saveAddress(address);
		System.out.println("Save Address");*/
		
		/*OrderDetailDAO orderDetailDAO = (OrderDetailDAO) context.getBean("orderDetailDAO");
		OrderDetail od = new OrderDetail();
		od.setBrand("Priyagold");
		od.setOrderDate(new java.util.Date());
		od.setPaymentMode("CC");
		od.setProductCode("PRD37DD528C14");
		od.setProductId(21);
		od.setProductName("Priyagold biskits");
		od.setUserName("Mahendra Srivastava");
		od.setTotalPurchaseAmmount(15.0);
		orderDetailDAO.addOrderDetail(od);
		System.out.println("Order Detail");*/
		
		
	}

}
