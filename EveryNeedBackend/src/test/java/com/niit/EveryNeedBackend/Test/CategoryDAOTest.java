package com.niit.EveryNeedBackend.Test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.EveryNeedBackend.DAO.CategoryDAO;
import com.niit.EveryNeedBackend.model.Category;

public class CategoryDAOTest {

	private static AnnotationConfigApplicationContext context;
	private static CategoryDAO categoryDAO;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception 
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.EveryNeedBackend");
		context.refresh();
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
	}

	@Ignore
	@Test
	public void testSaveCategory() {
		Category category = new Category();
		category.setCategoryName("Women");
		category.setDescription("This is Kids Category");
		
		assertTrue("Problem in Adding Category", categoryDAO.saveCategory(category));
	}

	@Ignore
	@Test
	public void testUpdateCategory() {
		Category category = categoryDAO.getCategory(4);
		category.setDescription("women");
		
		assertTrue("Can not update category", categoryDAO.updateCategory(category));
	}

	@Ignore
	@Test
	public void testDeleteCategory() {
		Category category = categoryDAO.getCategory(4);
		
		assertTrue("Problem in deleting category", categoryDAO.deleteCategory(category));
	}

	@Ignore
	@Test
	public void testGetCategory() {
		System.out.println("Kids");
		
		assertNotNull("Can not get the category", categoryDAO.getCategory(3));
	}

	@Ignore
	@Test
	public void testListCategories() {
		List<Category> listCategories = categoryDAO.listCategories();
		
		assertTrue("Problem in listing category", categoryDAO.listCategories().size()>0);
		
		for(Category category:listCategories)
		{
			System.out.println(category.getCategoryId()+":::");
			System.out.println(category.getCategoryName()+":::");
			System.out.println(category.getDescription()+":::");
		}
	}

}
