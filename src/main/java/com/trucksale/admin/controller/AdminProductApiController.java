package com.trucksale.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.trucksale.Application;
import com.trucksale.bean.ActionResult;
import com.trucksale.bean.ActionResultT;
import com.trucksale.bean.AddNewProductBean;
import com.trucksale.bean.ExecuteWorker;
import com.trucksale.bean.ProductBean;
import com.trucksale.bean.ProductGroupBean;
import com.trucksale.bean.UserBean;
import com.trucksale.service.ProductService;

@RestController
@RequestMapping("/admin/api/product")
public class AdminProductApiController {
	private static final Logger log = LoggerFactory.getLogger(Application.class);
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(method = RequestMethod.POST)
	public ActionResult newProduct(@RequestBody AddNewProductBean product){
		ActionResult result = new ActionResult();
		result.execute(new ExecuteWorker() {
			
			@Override
			public Object doWork() throws Exception {
				productService.addNewProduct(product);
				return null;
			}
		});
		
		return result; 	
		
	}
}
