package com.niit.EveryNeedBackend.Test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.EveryNeedBackend.DAO.UserDAO;
import com.niit.EveryNeedBackend.model.User;

public class UserDAOTest {
	
	private static AnnotationConfigApplicationContext context;
	private static UserDAO userDAO;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception 
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.EveryNeedBackend");
		context.refresh();
		userDAO = (UserDAO) context.getBean("userDAO");
	}

	@Ignore
	@Test
	public void testSaveUser() {
		User user = new User();
		user.setConfirmPassword("maddy123");
		user.setContactNumber("9415016516");
		user.setCustomerName("Amarjeet Singh");
		user.setEmailId("maddy123@gmail.com");
		user.setEnabled(true);
		user.setPassWord("maddy123");
		user.setRole("Role_ADMIN");
		user.setUserName("Mahendra Srivastava");
		
		assertTrue("Problem in adding User", userDAO.saveUser(user));
		
	}

	@Ignore
	@Test
	public void testUpdateUser() {
		User user = userDAO.getUser("Mahendra Srivastava");
		user.setRole("Admin");
		assertTrue("Problem in adding User", userDAO.updateUser(user));
	}

	@Ignore
	@Test
	public void testDeleteUser() {
		User user = userDAO.getUser("Kaushal Dubey");
		
		assertTrue("Problem in adding User", userDAO.deleteUser(user));
	}

	
	@Test
	public void testGetUser() {
		System.out.println("Neeraj Sharma");
		
		assertNotNull("Problem in getting User",userDAO.getUser("Neeraj Sharma"));
		
	}

	
	@Test
	public void testListUsers() {
		List<User> listUsers = userDAO.listUsers();
		
		assertTrue("Problem in listing User", userDAO.listUsers().size()>0);
		
		for(User user:listUsers)
		{
			System.out.println(user.getConfirmPassword()+":::");
			System.out.println(user.getContactNumber()+":::");
			System.out.println(user.getCustomerName()+":::");
			System.out.println(user.getEmailId()+":::");
			System.out.println(user.getCustomerName()+":::");
			System.out.println(user.getRole()+":::");
			System.out.println(user.getUserName()+":::");
		
		}
	}

	@Ignore
	@Test
	public void testGetUserByEmailId() {
		fail("Not yet implemented");
	}

}
