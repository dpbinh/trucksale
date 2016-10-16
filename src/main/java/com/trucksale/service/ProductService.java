package com.trucksale.service;

import com.trucksale.bean.ActionResultSingle;
import com.trucksale.bean.ActionResultT;
import com.trucksale.bean.PricingBean;
import com.trucksale.bean.ProductBean;
import com.trucksale.bean.ProductGroupBean;
import com.trucksale.bean.ProductResourceBean;
import com.trucksale.bean.SpecificationGroupBean;

public interface ProductService {
	
	ActionResultT<ProductGroupBean> getAllProductGroup();

	ActionResultT<ProductBean> getProductsByGroup(long groupId);
	
	ActionResultSingle<ProductBean> getProductDetail(long productId);
	
	ActionResultT<ProductResourceBean> getProductResource(long productId);
	
	ActionResultT<PricingBean> getPricing();
	
	ActionResultT<SpecificationGroupBean> getAllActiveSpecification();
	
}
