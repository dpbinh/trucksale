package com.trucksale.service;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import com.trucksale.model.RoleType;
import com.trucksale.model.User;
import com.trucksale.repository.UserRepository;

@Service
public class AuthManagerImpl implements AuthManager {
	private static final String USER_NAME_KEY = "username";
	
	private Log log = LogFactory.getLog(this.getClass());
	
	private UserRepository userRepo;
	
	public  AuthManagerImpl(UserRepository userRepo) {
		this.userRepo = userRepo;
	}
	
	@Override
	public void login(HttpServletRequest request, String username) {
		request.getSession().setAttribute(USER_NAME_KEY	, username);
	}

	@Override
	public void logout(HttpServletRequest request) {
		request.getSession().removeAttribute(USER_NAME_KEY);
	}

	@Override
	public boolean checkRole(HttpServletRequest request, RoleType role) {
		try{
			Object usernameattr = request.getSession().getAttribute(USER_NAME_KEY);
			if(usernameattr != null ){
				User user = userRepo.findByUserName(usernameattr.toString());
				return user != null && role.equals(user.getRole().getName());
			}
			
		} catch(Exception e){
			log.error("checkRole: ", e);	
		}
		
		return false;
	}

}
