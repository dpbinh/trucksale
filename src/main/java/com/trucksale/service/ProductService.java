package com.trucksale.service;

import com.trucksale.bean.ActionResultT;
import com.trucksale.bean.PricingBean;
import com.trucksale.bean.ProductBean;
import com.trucksale.bean.ProductGroupBean;
import com.trucksale.bean.SpecificationGroupBean;

public interface ProductService {
	
	ActionResultT<ProductGroupBean> getAllProductGroup();

	ActionResultT<ProductBean> getProductsByGroup(long groupId);
	
	ActionResultT<ProductBean> getProductDetail(long productId);
	
	ActionResultT<PricingBean> getPricing();
	
	ActionResultT<SpecificationGroupBean> getAllActiveSpecification();
	
}
