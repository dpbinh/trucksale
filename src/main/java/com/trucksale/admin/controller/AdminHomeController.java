package com.trucksale.admin.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
public class AdminHomeController {
	
	@RequestMapping(value="/", method= RequestMethod.GET)
	public ModelAndView home(){
		return new ModelAndView("admin_home");
	}
	
	@RequestMapping(value="/product/{id}", method= RequestMethod.GET)
	public ModelAndView newProduct(@PathVariable(value="id") String id){
		Map<String, String> param =  new HashMap<String, String>();
    	param.put("page", "product");
    	param.put("id", id);
		return new ModelAndView("admin_product_detail", param);
	}
	
	@RequestMapping(value="/products", method= RequestMethod.GET)
	public ModelAndView getProducts(){
		return new ModelAndView("admin_products");
	}
}
