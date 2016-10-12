package com.trucksale.controller;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
 

@Controller
public class HomeController {
	private Log log = LogFactory.getLog(this.getClass());
	
    @RequestMapping(value = "/", method=RequestMethod.GET)
	public ModelAndView home() {
	    return new ModelAndView("home", "page", "home");
	}
    
    @RequestMapping(value = "/product/{id}", method=RequestMethod.GET)
    public ModelAndView product(@PathVariable(value="id") final String id) {
    	Map<String, String> param =  new HashMap<String, String>();
    	param.put("page", "product");
    	param.put("id", id);
    	
    	return new ModelAndView("product", param);
    }
    
    @RequestMapping(value = "/detail/{id}", method=RequestMethod.GET)
    public ModelAndView detail(@PathVariable(value="id") final String id){
    	Map<String, String> param =  new HashMap<String, String>();
    	param.put("page", "product");
    	param.put("id", id);
    	return new ModelAndView("detail", param);
    }
    
    @RequestMapping(value = "/pricing", method = RequestMethod.GET)
    public ModelAndView pricing(){
    	return new ModelAndView("pricing", "page", "pricing");
    }
}
