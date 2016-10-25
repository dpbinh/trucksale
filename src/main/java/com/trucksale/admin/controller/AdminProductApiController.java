package com.trucksale.admin.controller;

import javax.servlet.ServletContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;

import com.trucksale.Application;
import com.trucksale.bean.ActionResult;
import com.trucksale.bean.ActionResultSingle;
import com.trucksale.bean.ActionResultT;
import com.trucksale.bean.AddNewProductBean;
import com.trucksale.bean.ExecuteWorker;
import com.trucksale.bean.ImgProductResource;
import com.trucksale.bean.ResourceType;
import com.trucksale.model.Product;
import com.trucksale.service.ProductService;

@RestController
@RequestMapping("/admin/api/product")
public class AdminProductApiController{
	private static final Logger log = LoggerFactory.getLogger(Application.class);
 
	@Autowired
	ServletContext context; 

	@Autowired
	private ProductService productService;
 
	@RequestMapping(method = RequestMethod.POST)
	public ActionResult newProduct(@RequestBody AddNewProductBean product){
		ActionResult result = new ActionResult();
		result.execute(new ExecuteWorker() {
			
			@Override
			public Object doWork() throws Exception {
				String root =  context.getRealPath("");
				productService.addNewProduct(root, product);
				return null;
			}
		});
		
		return result; 	
		
	}
 
	
	@RequestMapping(value = "/quickinfo/{id}", method = RequestMethod.POST)
	public ActionResult updateProductQuickInfo(@PathVariable(value="id") final long id, @RequestBody AddNewProductBean product){
		ActionResult result = new ActionResult();
		return result; 	
	}
	
	@RequestMapping(value = "/detail/{id}", method = RequestMethod.POST)
	public ActionResult updateProductDetail(@PathVariable(value="id") final long id, @RequestBody Product product){
		ActionResult result = new ActionResult();
		return result;
	}
	
	@RequestMapping(value = "/avatar/{id}", method = RequestMethod.POST)
	public ActionResultSingle<String> updateAvatar( @PathVariable(value="id") final long id,  @RequestParam("selectedfile") MultipartFile selectedfile){
		ActionResultSingle<String>  result = new ActionResultSingle<String> ();
		result.execute(new ExecuteWorker() {
			
			@Override
			public Object doWork() throws Exception {
				String fileName = selectedfile.getOriginalFilename();
				return productService.updateProductAvatar(context.getRealPath(""), id, fileName, selectedfile.getBytes());
			}
		});
		
		return result;
	}
	
	@RequestMapping(value = "/insideresource/{id}", method = RequestMethod.POST)
	public ActionResultSingle<String> updateInsideImgResource( @PathVariable(value="id") final long id,  @RequestParam("selectedfile") MultipartFile selectedfile){
		return uploadProductResource(id, selectedfile, ResourceType.OUTSIDE);
	}
	
	@RequestMapping(value = "/outsideresource/{id}", method = RequestMethod.POST)
	public ActionResultSingle<String> updateOutsideImgResource( @PathVariable(value="id") final long id,  @RequestParam("selectedfile") MultipartFile selectedfile){
		return uploadProductResource(id, selectedfile, ResourceType.INSIDE);
	}
	
	private ActionResultSingle<String> uploadProductResource(long id, MultipartFile selectedfile, ResourceType type){
		ActionResultSingle<String> result = new ActionResultSingle<String>();
		result.execute(new ExecuteWorker() {
			
			@Override
			public Object doWork() throws Exception {
				String fileName = selectedfile.getOriginalFilename();
				ImgProductResource rs = new ImgProductResource(type, fileName);
				
				return productService.uploadProductResource(context.getRealPath(""), id, rs, selectedfile.getBytes());
			}
		});
		return result;
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
	public ActionResult removeProduct( @PathVariable(value="id") final long id){
		ActionResult result = new ActionResult();
		result.execute(new ExecuteWorker() {
			
			@Override
			public Object doWork() throws Exception {
				productService.removeProduct(context.getContextPath(), id);
				return null;
			}
		});
		return result;
	}
}
