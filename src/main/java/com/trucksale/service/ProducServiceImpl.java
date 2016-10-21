package com.trucksale.service;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.List;

import org.omg.CORBA.Any;
import org.omg.CORBA.Object;
import org.omg.CORBA.TypeCode;
import org.omg.CORBA.portable.InputStream;
import org.omg.CORBA_2_3.portable.OutputStream;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.trucksale.Application;
import com.trucksale.bean.ActionResult;
import com.trucksale.bean.AddNewProductBean;
import com.trucksale.bean.BeanUtil;
import com.trucksale.bean.PricingBean;
import com.trucksale.bean.ProductBean;
import com.trucksale.bean.ProductGroupBean;
import com.trucksale.model.Product;
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
	public List<ProductGroupBean> getAllProductGroup()  throws Exception{
		List<ProductGroupBean> result = new ArrayList<ProductGroupBean>();
		
		try{
			Iterable<ProductGroup> groups =  productGroupRepo.findAll();
			result = BeanUtil.convertToList(groups, ProductGroupBean.class);
		} catch(Exception e){
			throw new Exception("Error while get all product: " + e.getMessage());
		}
		
		return result;
	}

	@Override
	public List<ProductBean> getProductsByGroup(long groupId)  throws Exception{
		List<ProductBean> result = new ArrayList<ProductBean>();
		try{
			Iterable<Product> products = productRepo.findByProductGroupId(groupId);
			result = BeanUtil.convertToList(products, ProductBean.class);
			
		} catch(Exception e){
			 throw new Exception("Get product by manufactor error: " + e.getMessage());
		}
		
		return result;
	}

	@Override
	public Product getProductDetail(long productId)  throws Exception{
		Product product = null;
		try{
			product = productRepo.findOne(productId);
		} catch(Exception e){
			 throw new Exception("Can not get product with id = " + productId + ": " + e.getMessage());
		}
		
		return product;
	}

	@Override
	public List<PricingBean> getPricing()  throws Exception{
		List<PricingBean> result = new ArrayList<PricingBean>();
		try{
			Iterable<ProductGroup> groups =  productGroupRepo.findAll();

			for(ProductGroup g : groups){
				PricingBean p = new PricingBean(g.getName());
				Iterable<Product> products = productRepo.findByProductGroupId(g.getId());
				p.setProducts(BeanUtil.convertToList(products, ProductBean.class));
				result.add(p);
			}

		} catch(Exception e){
			throw new Exception("Error can not get pricing: " + e.getMessage());
		}
		
		return result;
	}

	@Override
	public List<ProductGroupBean> getAllProducts()  throws Exception{
		List<ProductGroupBean> result = new ArrayList<ProductGroupBean>();
		try{
			Iterable<ProductGroup> groups =  productGroupRepo.findAll();
			result = BeanUtil.convertToList(groups, ProductGroupBean.class);
			for(ProductGroupBean g : result){
				Iterable<Product> products = productRepo.findByProductGroupId(g.getId());
				g.setProducts(BeanUtil.convertToList(products, ProductBean.class));
			}
 
		} catch(Exception e){
			 throw new Exception("error get products: " + e.getMessage());
		}
		
		return result;
	}

	@Override
	public void addNewProduct(AddNewProductBean product)  throws Exception{
		ActionResult result = new ActionResult();
		log.info(product.getName() + " " + product.getPrice() + " " + product.getGroupid());
		try{
			Product newproduct = new Product();
			newproduct.setName(product.getName());
			newproduct.setPrice(product.getPrice());
			ProductGroup group = productGroupRepo.findOne(product.getGroupid());
			newproduct.setProductGroup(group);
			productRepo.save(newproduct);
			File f = new File("/text.txt");
			BufferedWriter w = new BufferedWriter(new FileWriter(f));
			w.write("text");
			log.info(f.getAbsolutePath());
		} catch(Exception e){
			e.printStackTrace();
			throw new Exception("Error while add new product: " + e.getMessage());
		}
 
	}

	@Override
	public void updateProduct(Product product) throws Exception {
		 
	}
	
	

}
