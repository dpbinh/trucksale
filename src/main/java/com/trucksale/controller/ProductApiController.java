package com.trucksale.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.trucksale.bean.ActionResultT;
import com.trucksale.bean.ProductGroupBean;
import com.trucksale.bean.SpecificationGroupBean;
import com.trucksale.service.ProductService;

@RestController
@RequestMapping("/api")
public class ProductApiController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/productgroups", method = RequestMethod.GET)
	public ActionResultT<ProductGroupBean> getAllProductGroup(){
		return productService.getAllProductGroup();
	}
	
	@RequestMapping(value = "/specification", method = RequestMethod.GET)
	public ActionResultT<SpecificationGroupBean> getAllSpecification(){
		return productService.getAllActiveSpecification();
	}
}
