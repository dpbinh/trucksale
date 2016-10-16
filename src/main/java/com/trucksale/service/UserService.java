package com.trucksale.service;

import com.trucksale.bean.ActionResult;
import com.trucksale.bean.ActionResultT;
import com.trucksale.bean.UserBean;

public interface UserService {
	ActionResultT<UserBean> addNewUser(UserBean user);
	
	ActionResult changePassword(UserBean user);
}
