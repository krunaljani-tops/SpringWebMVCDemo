package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import com.example.model.Product;
import com.example.dao.ProductDao;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
@Controller
public class HomeController {
	
	@Autowired
	private ProductDao productDao;
	
    @RequestMapping("/")
    public String home(Model m) {
        //ModelAndView mv = new ModelAndView("index");
        //mv.addObject("message", "Welcome to Spring MVC + Hibernate Template!");
    		m.addAttribute("title", "Home - Online Shop");	
    		List<Product> products=productDao.getProducts();
    		m.addAttribute("products", products);
        return "index";
    }
    
    @RequestMapping("/addProduct")
    public  String showAddProductForm(Model m) {
    	m.addAttribute("title", "Add Product");
		return "addProduct";
	}
    @RequestMapping(value="products",method = RequestMethod.POST)
    public String insertProduct(@ModelAttribute Product product) {
    	System.out.println(product);
    	productDao.saveProduct(product);
		// Logic to save the product to the database
	System.out.println("Product saved: " + product);	
    	return "redirect:/";
	}
}
