package com.trucksale.admin.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.trucksale.model.RoleType;
import com.trucksale.service.AuthManager;

@Controller
@RequestMapping("/admin")
public class AdminHomeController {
	
	@Autowired
	private AuthManager authService;
	
	@RequestMapping(method= RequestMethod.GET)
	public ModelAndView home(){
		return new ModelAndView("admin_login");
	}
	
	@RequestMapping(value="/product/{id}", method= RequestMethod.GET)
	public ModelAndView getProductDetail(HttpServletRequest request, @PathVariable(value="id") String id){
		if(!authService.checkRole(request, RoleType.ADMIN)){
			RedirectView redirect =new RedirectView("/admin");
			redirect.setContextRelative(true);
			return new ModelAndView(redirect);
		}
		
		Map<String, String> param =  new HashMap<String, String>();
    	param.put("page", "products");
    	param.put("id", id);
		return new ModelAndView("admin_product_detail", param);
	}
	
	@RequestMapping(value="/products", method= RequestMethod.GET)
	public ModelAndView getProducts(HttpServletRequest request){
		if(!authService.checkRole(request, RoleType.ADMIN)){
			RedirectView redirect =new RedirectView("/admin");
			redirect.setContextRelative(true);
			return new ModelAndView(redirect);
		}
		return new ModelAndView("admin_products", "page", "products");
	}
	
	@RequestMapping(value="/logout", method= RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request){
		if(!authService.checkRole(request, RoleType.ADMIN)){
			RedirectView redirect =new RedirectView("/admin");
			redirect.setContextRelative(true);
			return new ModelAndView(redirect);
		}
		authService.logout(request);
		return new ModelAndView(new RedirectView("/admin"));
	}
	
	@RequestMapping(value="/changepass", method= RequestMethod.GET)
	public ModelAndView changepass(HttpServletRequest request){
		if(!authService.checkRole(request, RoleType.ADMIN)){
			RedirectView redirect =new RedirectView("/admin");
			redirect.setContextRelative(true);
			return new ModelAndView(redirect);
		}
		return new ModelAndView("admin_change-password", "page", "password");
	}
}
