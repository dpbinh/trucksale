package com.trucksale.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.trucksale.Application;
import com.trucksale.bean.ActionResultSingle;
import com.trucksale.bean.ActionResultT;
import com.trucksale.bean.BeanUtil;
import com.trucksale.bean.PricingBean;
import com.trucksale.bean.ProductBean;
import com.trucksale.bean.ProductGroupBean;
import com.trucksale.bean.ProductResourceBean;
import com.trucksale.bean.SpecificationBean;
import com.trucksale.bean.SpecificationGroupBean;
import com.trucksale.model.Product;
import com.trucksale.model.ProductGroup;
import com.trucksale.model.ProductImg;
import com.trucksale.model.Specification;
import com.trucksale.model.SpecificationGroup;
import com.trucksale.model.SpecificationProduct;
import com.trucksale.repository.ProductGroupRepository;
import com.trucksale.repository.ProductImgRepository;
import com.trucksale.repository.ProductRepository;
import com.trucksale.repository.SpecificationGroupRepository;
import com.trucksale.repository.SpecificationProductRepository;
import com.trucksale.repository.SpecificationRepository;

@Service
public class ProducServiceImpl implements ProductService {
	
	private static final Logger log = LoggerFactory.getLogger(Application.class);
	
	private ProductRepository productRepo;
	
	private ProductGroupRepository productGroupRepo;
	
	private SpecificationProductRepository specProductRepo;
	
	private ProductImgRepository productImgRepo;
	
	private SpecificationGroupRepository specificationGroupRepo;
	
	private SpecificationRepository specificationRepo;
	
	public ProducServiceImpl(ProductRepository productRepo, ProductGroupRepository productGroupRepo, SpecificationProductRepository specProductRepo, ProductImgRepository productImgRepo,
			SpecificationGroupRepository specificationGroupRepo,SpecificationRepository specificationRepo) {
		super();
		this.productRepo = productRepo;
		this.productGroupRepo = productGroupRepo;
		this.specProductRepo = specProductRepo;
		this.productImgRepo = productImgRepo;
		this.specificationGroupRepo = specificationGroupRepo;
		this.specificationRepo = specificationRepo;
	}

	@Override
	public ActionResultT<ProductGroupBean> getAllProductGroup() {
		ActionResultT<ProductGroupBean> result = new ActionResultT<ProductGroupBean>();
		
		try{
			Iterable<ProductGroup> groups =  productGroupRepo.findAll();
			result.setObjects(BeanUtil.convertToList(groups, ProductGroupBean.class));
		} catch(Exception e){
			result.setSuccess(false);
			result.setMessage(e.getMessage());
		}
		
		return result;
	}

	@Override
	public ActionResultT<ProductBean> getProductsByGroup(long groupId) {
		ActionResultT<ProductBean> result = new ActionResultT<ProductBean>();
		try{
			Iterable<Product> products = productRepo.findByProductGroupId(groupId);
			result.setObjects(BeanUtil.convertToList(products, ProductBean.class));
			
		} catch(Exception e){
			result.setSuccess(false);
			result.setMessage(e.getMessage());
		}
		
		return result;
	}

	@Override
	public ActionResultSingle<ProductBean> getProductDetail(long productId) {
		ActionResultSingle<ProductBean> result = new ActionResultSingle<ProductBean>();
		try{
			Product product = productRepo.findOne(productId);
			Iterable<SpecificationProduct> specs = specProductRepo.findByProductId(productId);
			
			ProductBean productBean = new ProductBean(product, specs);
			result.setObject(productBean);
		} catch(Exception e){
			result.setSuccess(false);
			result.setMessage(e.getMessage());
		}
		
		return result;
	}

	@Override
	public ActionResultT<PricingBean> getPricing() {
		ActionResultT<PricingBean> result = new ActionResultT<PricingBean>();
		try{
			Iterable<ProductGroup> groups =  productGroupRepo.findAll();
			List<PricingBean> ps = new ArrayList<PricingBean>();
			for(ProductGroup g : groups){
				PricingBean p = new PricingBean(g.getName());
				Iterable<Product> products = productRepo.findByProductGroupId(g.getId());
				p.setProducts(BeanUtil.convertToList(products, ProductBean.class));
			}
			result.setObjects(ps);
			
		} catch(Exception e){
			result.setSuccess(false);
			result.setMessage(e.getMessage());
		}
		
		return result;
	}

	@Override
	public ActionResultT<SpecificationGroupBean> getAllActiveSpecification() {
		ActionResultT<SpecificationGroupBean> result = new ActionResultT<SpecificationGroupBean>();
		try{
			Iterable<SpecificationGroup> groups =  specificationGroupRepo.findAll();
			List<SpecificationGroupBean> specgs = new ArrayList<SpecificationGroupBean>();
			for(SpecificationGroup g : groups){
				SpecificationGroupBean p = new SpecificationGroupBean(g);
				Iterable<Specification> specs = specificationRepo.findBySpecificationGroupId(g.getId());
				log.info("getAllActiveSpecification: " + g.getId() );
				p.setSpecifications(BeanUtil.convertToList(specs, SpecificationBean.class));
				specgs.add(p);
			}
			result.setObjects(specgs);
			
		} catch(Exception e){
			result.setSuccess(false);
			result.setMessage(e.getMessage());
		}
		
		return result;
	}

	@Override
	public ActionResultT<ProductResourceBean> getProductResource(long productId) {
		ActionResultT<ProductResourceBean> result = new ActionResultT<ProductResourceBean>();
		try{
			Iterable<ProductImg> productImgs = productImgRepo.findByProductId(productId);
			result.setObjects(BeanUtil.convertToList(productImgs, ProductResourceBean.class));
			
		} catch(Exception e){
			result.setSuccess(false);
			result.setMessage(e.getMessage());
		}
		
		return result;
	}

}
