package com.trucksale.service;

import java.util.List;

import com.trucksale.bean.AddNewProductBean;
import com.trucksale.bean.PricingBean;
import com.trucksale.bean.ProductBean;
import com.trucksale.bean.ProductGroupBean;
import com.trucksale.model.Product;

public interface ProductService {
	
	List<ProductGroupBean> getAllProductGroup() throws Exception;
	
	List<ProductGroupBean> getAllProducts() throws Exception;
	
	List<ProductBean> getProductsByGroup(long groupId) throws Exception;
	
	Product getProductDetail(long productId) throws Exception;

	List<PricingBean> getPricing() throws Exception;

	void addNewProduct(AddNewProductBean product) throws Exception;
	
	void updateProduct(Product product) throws Exception;
}
