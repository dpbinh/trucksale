package com.trucksale.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.trucksale.Application;
import com.trucksale.bean.ActionResultT;
import com.trucksale.bean.PricingBean;
import com.trucksale.bean.ProductBean;
import com.trucksale.bean.ProductGroupBean;
import com.trucksale.bean.SpecificationGroupBean;
import com.trucksale.model.ProductGroup;
import com.trucksale.repository.ProductGroupRepository;
import com.trucksale.repository.ProductRepository;

@Service
public class ProducServiceImpl implements ProductService {
	
	private static final Logger log = LoggerFactory.getLogger(Application.class);
	
	private ProductRepository productRepo;
	
	private ProductGroupRepository productGroupRepo;

	public ProducServiceImpl(ProductRepository productRepo, ProductGroupRepository productGroupRepo) {
		super();
		this.productRepo = productRepo;
		this.productGroupRepo = productGroupRepo;
	}

	@Override
	public ActionResultT<ProductGroupBean> getAllProductGroup() {
		ActionResultT<ProductGroupBean> result = new ActionResultT<ProductGroupBean>();
		
		try{
			Iterable<ProductGroup> groups =  productGroupRepo.findAll();
			result.setObjects(ProductGroupBean.convertFrom(groups));
		} catch(Exception e){
			result.setSuccess(false);
			result.setMessage(e.getMessage());
		}
		
		return result;
	}

	@Override
	public ActionResultT<ProductBean> getProductsByGroup(long groupId) {
		return null;
	}

	@Override
	public ActionResultT<ProductBean> getProductDetail(long productId) {
		return null;
	}

	@Override
	public ActionResultT<PricingBean> getPricing() {
		return null;
	}

	@Override
	public ActionResultT<SpecificationGroupBean> getAllActiveSpecification() {
		return null;
	}

}
