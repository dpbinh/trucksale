package com.trucksale.admin.controller;

import org.springframework.stereotype.Controller;
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
	
	@RequestMapping(value="/product/new", method= RequestMethod.GET)
	public ModelAndView newProduct(){
		return new ModelAndView("admin_newproduct");
	}
}
