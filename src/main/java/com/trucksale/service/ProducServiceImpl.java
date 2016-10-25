package com.trucksale.service;

import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

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
import com.trucksale.bean.ImgProductResource;
import com.trucksale.bean.PricingBean;
import com.trucksale.bean.ProductBean;
import com.trucksale.bean.ProductGroupBean;
import com.trucksale.bean.ResourceType;
import com.trucksale.model.Product;
import com.trucksale.model.ProductGroup;
import com.trucksale.repository.ProductGroupRepository;
import com.trucksale.repository.ProductRepository;
import com.trucksale.util.FileHelper;

@Service
@Transactional
public class ProducServiceImpl implements ProductService {
	private static final String UPLOAD_PATH = File.separator + "static" + File.separator + "img" + File.separator + "products" + File.separator;
	
	private static final String INSIDE = File.separator + "inside";
	
	private static final String OUTSIDE = File.separator + "outside";
	
	private static final String[] TYPES = {".jpg", ".png"};
	
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
	public void addNewProduct(String root, AddNewProductBean product)  throws Exception{

		log.info(product.getName() + " " + product.getPrice() + " " + product.getGroupid());
		try{
			Product newproduct = new Product();
			newproduct.setName(product.getName());
			newproduct.setPrice(product.getPrice());
			ProductGroup group = productGroupRepo.findOne(product.getGroupid());
			newproduct.setProductGroup(group);
			Product saved = productRepo.save(newproduct);
			
			try{
				if(saved.getId() > 0 ){
					String rpath =  UPLOAD_PATH + saved.getId();
					
					Path path = Paths.get(root + rpath);
					if(Files.notExists(path)){
						Files.createDirectory(path);
					}

					Path inside =  Paths.get(path.toString() + INSIDE);
					if(Files.notExists(inside)){
						Files.createDirectories(inside);
					}
					
					Path outside =  Paths.get(path.toString() + OUTSIDE);
					if(Files.notExists(outside)){
						Files.createDirectories(outside);
					}
					
					log.info("Inse Path " + inside.toString());
					saved.setInsideImgDir(rpath + INSIDE);
					saved.setOutsideImgDir(rpath + OUTSIDE);
					productRepo.save(saved);
				} else {
					throw new Exception("Product has not created");
				}
				
			} catch(IOException e){
				throw new Exception("Can not create resource folder: " + e.getMessage());
			}
			
		} catch(Exception e){
			e.printStackTrace();
			throw new Exception("Error while add new product: " + e.getMessage());
		}
 
	}

	@Override
	public void updateProduct(Product product) throws Exception {
		 
	}

	@Override
	public String updateProductAvatar(String root, long productId, String fileName, byte[] bytes)  throws Exception{
		
		String link = "";
		try{
			Product product = productRepo.findOne(productId);
			if(product != null){
				String rpath = UPLOAD_PATH + product.getId();
				Path path = Paths.get(root + rpath);
				if(Files.notExists(path)){
					Files.createDirectories(path);
				}
				
				String avatarPath= FileHelper.uploadFileToFolder(root, rpath, fileName, bytes);
				
				String oldImg = product.getImg();
				product.setImg(avatarPath);
				link = avatarPath;
				if(!oldImg.isEmpty()){
					Path oldImgPath = Paths.get(root + oldImg);
					if(Files.exists(oldImgPath)){
						Files.delete(oldImgPath);
					}
				}
				
			} else {
				throw new Exception("product not exist");
			}
			
		}catch(Exception e){
			throw new Exception("Can not update avatar " + e.getMessage());
		} 
		
		return link;
		
	}

	@Override
	public List<ImgProductResource> getProductResources(String root, long productId) throws Exception {
		List<ImgProductResource> resources = new ArrayList<>();
		try{
			Product product = productRepo.findOne(productId);
			if(product != null) {
				List<String> insideFiles = FileHelper.getAllFileInFolder(root + product.getInsideImgDir(), TYPES);
				List<String> outsideFiles = FileHelper.getAllFileInFolder(root + product.getOutsideImgDir(), TYPES);
				resources.addAll(createImgResource(root, insideFiles, ResourceType.INSIDE));
				resources.addAll(createImgResource(root, outsideFiles, ResourceType.OUTSIDE));
			}
			
		} catch(Exception e){
			
		}
		return resources;
	}
	
	private List<ImgProductResource> createImgResource(String root, List<String> files, ResourceType type){
		List<ImgProductResource> result = new ArrayList<>();
		files = FileHelper.removeRoot(root, files);
		for(String s : files){
			ImgProductResource rs = new ImgProductResource(type, s);
			result.add(rs);
		}
		return result;
	}

	@Override
	public String uploadProductResource(String root, long productId, ImgProductResource resource, byte[] bytes)
			throws Exception {
		String result = "";
		try{
			Product product = productRepo.findOne(productId);
			if(product != null) {
				String subpath = getSubpath(product, resource.getType());
				result = FileHelper.uploadFileToFolder(root, subpath, resource.getPath(), bytes);
			}

		} catch(Exception e){
			throw new Exception("Image upload not success " + e.getMessage());
		}
		return result;
	}
	
	private String getSubpath(Product product, ResourceType type){
		return ResourceType.INSIDE.equals(type) ? product.getInsideImgDir() : product.getOutsideImgDir();
	}
	
	@Override
	public void removeProductResource(String root, long productId, ImgProductResource resource) throws Exception {
		try{
			Product product = productRepo.findOne(productId);
			if(product != null) {
				String fileName = resource.getPath().substring(resource.getPath().lastIndexOf(File.separator), resource.getPath().length());
				String subpath = getSubpath(product, resource.getType());
				Path rootPath = Paths.get( root + subpath + File.separator + fileName );
				if(Files.exists(rootPath)){
					Files.delete(rootPath);
				}
			}
		} catch(Exception e){
			throw new Exception("Error when delete resource " + e.getMessage());
		}
	}
	
	@Override
	public void removeProduct(String root, long productId) throws Exception {
		try {
			Product product = productRepo.findOne(productId);
			if (product != null) {
				productRepo.delete(productId);
				Path rootPath = Paths.get( root + UPLOAD_PATH + productId);
				FileHelper.deepDelete(rootPath);				
			}

		} catch (Exception e) {
			throw new Exception("Error when remove product " + e.getMessage());
		}
	}
}
