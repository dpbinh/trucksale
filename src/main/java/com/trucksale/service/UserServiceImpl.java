package com.trucksale.service;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.trucksale.bean.ActionResult;
import com.trucksale.bean.ActionResultT;
import com.trucksale.bean.UserBean;
import com.trucksale.repository.UserRepository;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	private Log log = LogFactory.getLog(this.getClass());

	private UserRepository userRepo;

    private PasswordEncoder passwordEncoder;

	public UserServiceImpl(UserRepository userRepo, PasswordEncoder passwordEncoder) {
		super();
		this.userRepo = userRepo;
		this.passwordEncoder = passwordEncoder;
	}

	@Override
	public ActionResultT<UserBean> addNewUser(UserBean user) {
		return null;
	}

	@Override
	public ActionResult changePassword(UserBean user) {
		return null;
	}
}
