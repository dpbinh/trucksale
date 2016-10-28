package com.trucksale.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.trucksale.bean.ActionResult;
import com.trucksale.bean.ActionResultSingle;
import com.trucksale.bean.ExecuteWorker;
import com.trucksale.bean.UserBean;
import com.trucksale.service.AuthManager;
import com.trucksale.service.UserService;

@RestController
@RequestMapping(value = "/admin/api/user")
public class AdminUserApiController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private AuthManager authService;
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ActionResultSingle<UserBean> login(HttpServletRequest request , @RequestBody UserBean user){
		ActionResultSingle<UserBean> result = new ActionResultSingle<>();
		result.execute(new ExecuteWorker() {
			
			@Override
			public Object doWork() throws Exception {
				UserBean userbean =  userService.login(user.getUsername(), user.getPassword());
				authService.login(request, userbean.getUsername());
				return userbean;
			}
		});
		return result;
	}
 
	@RequestMapping(value = "/changepassword", method = RequestMethod.POST)
	public ActionResult changePassword(HttpServletRequest request, @RequestBody UserBean user){
		ActionResult result = new ActionResult();
		result.execute(new ExecuteWorker() {
			
			@Override
			public Object doWork() throws Exception {
				userService.changePassword(user);
				authService.logout(request);
				return null;
			}
		});
		return result;
	}
	
	public ActionResultSingle<UserBean> addNewUser(HttpServletRequest request, @RequestBody UserBean user){
		ActionResultSingle<UserBean> result = new ActionResultSingle<>();
		
		return result;
	}
}
