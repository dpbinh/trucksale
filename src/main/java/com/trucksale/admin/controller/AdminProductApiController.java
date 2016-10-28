package com.trucksale.admin.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.trucksale.Application;
import com.trucksale.bean.ActionResult;
import com.trucksale.bean.ActionResultSingle;
import com.trucksale.bean.AddNewProductBean;
import com.trucksale.bean.ExecuteWorker;
import com.trucksale.bean.ImgProductResource;
import com.trucksale.bean.ResourceType;
import com.trucksale.model.Product;
import com.trucksale.model.RoleType;
import com.trucksale.service.AuthManager;
import com.trucksale.service.ProductService;

@RestController
@RequestMapping("/admin/api/product")
public class AdminProductApiController{
	private static final Logger log = LoggerFactory.getLogger(Application.class);
	
	private static final String PERMISSION_DENY = "Not permission to access";
	
	@Autowired
	private ServletContext context; 

	@Autowired
	private AuthManager authService;
	
	@Autowired
	private ProductService productService;

	@RequestMapping(method = RequestMethod.POST)
	public ActionResult newProduct(HttpServletRequest request, @RequestBody AddNewProductBean product){
		if(!authService.checkRole(request, RoleType.ADMIN)){
			return new ActionResult(false, PERMISSION_DENY);
		}
		
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
 
	
	@RequestMapping(value = "/quickinfo/{id}", method = RequestMethod.PUT)
	public ActionResult updateProductQuickInfo(HttpServletRequest request, @PathVariable(value="id") final long id, @RequestBody AddNewProductBean product){
		if(!authService.checkRole(request, RoleType.ADMIN)){
			return new ActionResult(false, PERMISSION_DENY);
		}
		
		ActionResult result = new ActionResult();
		result.execute(new ExecuteWorker() {
			
			@Override
			public Object doWork() throws Exception {
				productService.updateQuickInfoProduct(id, product);
				return null;
			}
		});
		return result; 	
	}
	
	@RequestMapping(value = "/detail/{id}", method = RequestMethod.PUT)
	public ActionResult updateProductDetail(HttpServletRequest request, @PathVariable(value="id") final long id, @RequestBody Product product){
		if(!authService.checkRole(request, RoleType.ADMIN)){
			return new ActionResult(false, PERMISSION_DENY);
		}
		
		ActionResult result = new ActionResult();
		result.execute(new ExecuteWorker() {
			
			@Override
			public Object doWork() throws Exception {
				product.setId(id);
				productService.updateProduct(product);
				return null;
			}
		});
		return result; 
	}
	
	@RequestMapping(value = "/group/{id}/{groupid}", method = RequestMethod.PUT)
	public ActionResult updateGroupProduct(HttpServletRequest request, @PathVariable(value="id") final long id, @PathVariable(value="groupid") final long groupid){
		if(!authService.checkRole(request, RoleType.ADMIN)){
			return new ActionResult(false, PERMISSION_DENY);
		}
		
		ActionResult result = new ActionResult();
		result.execute(new ExecuteWorker() {
			
			@Override
			public Object doWork() throws Exception {	 
				productService.updateGroupProduct(id, groupid);
				return null;
			}
		});
		return result; 
	}
	
	@RequestMapping(value = "/avatar/{id}", method = RequestMethod.POST)
	public ActionResultSingle<String> updateAvatar( HttpServletRequest request, @PathVariable(value="id") final long id,  @RequestParam("selectedfile") MultipartFile selectedfile){
		if(!authService.checkRole(request, RoleType.ADMIN)){
			return new ActionResultSingle<String>(false, PERMISSION_DENY);
		}
		
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
	public ActionResultSingle<ImgProductResource> updateInsideImgResource(HttpServletRequest request,  @PathVariable(value="id") final long id,  @RequestParam("selectedfile") MultipartFile selectedfile){
		
		return uploadProductResource(request, id, selectedfile, ResourceType.INSIDE);
	}
	
	@RequestMapping(value = "/outsideresource/{id}", method = RequestMethod.POST)
	public ActionResultSingle<ImgProductResource> updateOutsideImgResource(HttpServletRequest request,  @PathVariable(value="id") final long id,  @RequestParam("selectedfile") MultipartFile selectedfile){
		return uploadProductResource(request, id, selectedfile, ResourceType.OUTSIDE);
	}
	
	private ActionResultSingle<ImgProductResource> uploadProductResource(HttpServletRequest request,long id, MultipartFile selectedfile, ResourceType type){	
		if(!authService.checkRole(request, RoleType.ADMIN)){
			return new ActionResultSingle<ImgProductResource>(false, PERMISSION_DENY);
		}
		
		ActionResultSingle<ImgProductResource> result = new ActionResultSingle<ImgProductResource>();
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
	public ActionResult removeProduct(HttpServletRequest request,  @PathVariable(value="id") final long id){
		if(!authService.checkRole(request, RoleType.ADMIN)){
			return new ActionResultSingle<String>(false, PERMISSION_DENY);
		}
		
		ActionResult result = new ActionResult();
		result.execute(new ExecuteWorker() {
			
			@Override
			public Object doWork() throws Exception {
				productService.removeProduct(context.getRealPath(""), id);
				return null;
			}
		});
		return result;
	}
	
	@RequestMapping(value = "/resource/{id}/{name}/{type}", method = RequestMethod.DELETE)
	public ActionResult removeResource(HttpServletRequest request, @PathVariable(value="id") long id, @PathVariable(value="name") String name, @PathVariable(value="type") String type){
		if(!authService.checkRole(request, RoleType.ADMIN)){
			return new ActionResultSingle<String>(false, PERMISSION_DENY);
		}
		
		log.info(String.format("Delete product id = {0}, resource path = {1}", id, name));
		
		ActionResult result = new ActionResult();
		result.execute(new ExecuteWorker() {
			
			@Override
			public Object doWork() throws Exception {
				productService.removeProductResource(context.getRealPath(""), id, name, type);
				return null;
			}
		});
		return result;
	}
}
