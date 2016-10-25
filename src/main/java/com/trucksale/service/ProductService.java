package com.trucksale.service;

import java.util.List;

import com.trucksale.bean.AddNewProductBean;
import com.trucksale.bean.ImgProductResource;
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

	void addNewProduct(String root, AddNewProductBean product) throws Exception;
	
	void updateProduct(Product product) throws Exception;
	
	String updateProductAvatar(String root, long productId, String fileName, byte[] bytes)  throws Exception;
	
	List<ImgProductResource> getProductResources(String root, long productId) throws Exception;
	
	String uploadProductResource(String root, long productId, ImgProductResource resource, byte[] bytes) throws Exception;
	
	void removeProductResource(String root, long productId, ImgProductResource resource) throws Exception;
	
	void removeProduct(String root, long productId) throws Exception;
} 
