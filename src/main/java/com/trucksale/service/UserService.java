package com.trucksale.service;

import com.trucksale.bean.UserBean;

public interface UserService {
	UserBean addNewUser(UserBean user)  throws Exception;
	
	void changePassword(UserBean user)  throws Exception;
	
	void initUser();
	
	UserBean login(String username, String password) throws Exception;
	
	
}
