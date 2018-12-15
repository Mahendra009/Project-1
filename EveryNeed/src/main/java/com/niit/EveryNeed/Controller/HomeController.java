package com.niit.EveryNeed.Controller;

import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.EveryNeedBackend.DAO.CategoryDAO;
import com.niit.EveryNeedBackend.DAO.ProductDAO;
import com.niit.EveryNeedBackend.model.Category;
import com.niit.EveryNeedBackend.model.Product;
 
@Controller
public class HomeController {
	
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping(value = {"/","/home","/index"})
	public String index(Model model)
	{
		model.addAttribute("productData", this.getBrands());//for menu perpus
		return "Index";
	}
	
	@RequestMapping(value="/login")
	public String showLogin()
	{
		return "Login";
	}
	
	/*LinkedHashMap<Category, List<Product>>*/
	public LinkedHashMap<Category, List<Product>> getBrands()
	{
		LinkedHashMap<Category, List<Product>> productData = new LinkedHashMap<Category, List<Product>>();
		List<Category> catlist=categoryDAO.listCategories();
		
		for(Category category:catlist) {
			
			List<Product> prodlist=productDAO.listProductByCategory(category.getCategoryId());
			
			productData.put(category, prodlist);
			
			
		}
		
		return productData;
	}

}
