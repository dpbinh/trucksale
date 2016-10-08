package com.trucksale.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 

@Controller
public class HomeController {
	private Log log = LogFactory.getLog(this.getClass());
	
    @RequestMapping(value = "/home", method=RequestMethod.GET)
	public String home() {
    	log.info("home visited");
	    return "site.homepage";
	}
}
