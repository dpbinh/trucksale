package com.trucksale.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.trucksale.bean.ActionResultSingle;
import com.trucksale.bean.ActionResultT;
import com.trucksale.bean.ExecuteWorker;
import com.trucksale.bean.ProductGroupBean;
import com.trucksale.model.Product;
import com.trucksale.service.ProductService;

@RestController
@RequestMapping("/api")
public class ProductApiController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/productgroups", method = RequestMethod.GET)
	public ActionResultT<ProductGroupBean> getAllProductGroup(){
		ActionResultT<ProductGroupBean> result = new ActionResultT<>();
		result.execute(new ExecuteWorker() {
			
			@Override
			public Object doWork() throws Exception {
				return productService.getAllProductGroup();
			}
		});
		
		return result;
	}
	
 
	
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public ActionResultT<ProductGroupBean> getAllProducts(){
		ActionResultT<ProductGroupBean> result = new ActionResultT<>();
		result.execute(new ExecuteWorker() {
			
			@Override
			public Object doWork() throws Exception {
				return productService.getAllProducts();
			}
		});
		
		return result; 	
	}
	
	@RequestMapping(value = "/product/{id}", method = RequestMethod.GET)
	public ActionResultSingle<Product> getProduct(@PathVariable(value = "id") final long id){
		ActionResultSingle<Product> result = new ActionResultSingle<>();
		result.execute(new ExecuteWorker() {
			
			@Override
			public Object doWork() throws Exception {
				return productService.getProductDetail(id);
			}
		});
		
		return result; 	
	}
}
