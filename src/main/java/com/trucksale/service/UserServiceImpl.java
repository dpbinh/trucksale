package com.trucksale.service;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.trucksale.bean.UserBean;
import com.trucksale.model.Role;
import com.trucksale.model.RoleType;
import com.trucksale.model.User;
import com.trucksale.repository.RoleRepository;
import com.trucksale.repository.UserRepository;

@Service("userService")
public class UserServiceImpl implements UserService{
	private static final String DEFAULT_USER_NAME = "admin";
	
	private static final String DEFAULT_PASSWORD = "oToBH60";
	
	private Log log = LogFactory.getLog(this.getClass());

	private RoleRepository roleRepo;
	
	private UserRepository userRepo;

    private PasswordEncoder passwordEncoder;

	public UserServiceImpl(RoleRepository roleRepo, UserRepository userRepo, PasswordEncoder passwordEncoder) {
		super();
		this.roleRepo = roleRepo;
		this.userRepo = userRepo;
		this.passwordEncoder = passwordEncoder;
	}

	@Override
	public UserBean addNewUser(UserBean userbean) throws Exception {
		try {
			User existed = userRepo.findByUserName(userbean.getUsername());
			if (existed != null) {
				throw new Exception("User has existed");
			}
			Role role = roleRepo.findByName(RoleType.ADMIN);
			if (role != null) {
				User user = new User();
				user.setUserName(userbean.getUsername());
				user.setPassword(passwordEncoder.encode(userbean.getPassword()));
				user.setRole(role);
				userRepo.save(user);
			}
		} catch (Exception e) {
			throw new Exception("Can not create user " + e.getMessage());
		}
		return new UserBean(userbean.getUsername());
	}
	
	
	
	@Override
	public void changePassword(UserBean userbean)  throws Exception{
		 try{

			 User user =  userRepo.findByUserName(DEFAULT_USER_NAME);
			 if(user != null){
				 if(passwordEncoder.matches(userbean.getOldPassword(), user.getPassword())){
					 user.setPassword(passwordEncoder.encode(userbean.getPassword()));
					 userRepo.save(user);
				 } else {
					 throw new Exception("Old password not match");
				 }
			 } else {
				 throw new Exception("User not exist");
			 }
			
		 } catch(Exception e){
			 throw new Exception("Password cannot change: " + e.getMessage());
		 }
	}

	@Override
	public void initUser() {
		try{
			User saveduser = userRepo.findByUserName(DEFAULT_USER_NAME);
			if(saveduser == null){
				User user = new User();
				user.setUserName(DEFAULT_USER_NAME);
				user.setPassword(passwordEncoder.encode(DEFAULT_PASSWORD));
				Role role = roleRepo.findByName(RoleType.ADMIN);
				if(role == null) {
					role = new Role();
					role.setName(RoleType.ADMIN);
					role = roleRepo.save(role);
				}
				
				user.setRole(role);
				userRepo.save(user);
			}
		} catch(Exception e){
			log.error("Cannot init user", e);
		}
	}
 
	@Override
	public UserBean login(String username, String password) throws Exception{
		try{
			User saveduser = userRepo.findByUserName(DEFAULT_USER_NAME);
			if(saveduser != null){
				if(passwordEncoder.matches(password.trim(), saveduser.getPassword())){
					return new UserBean(saveduser.getUserName());
				} else {
					throw new Exception("Password not match");
				}
			} else {
				throw new Exception("Username not exist");
			}
		} catch(Exception e){
			throw new Exception("Error while login: " +e.getMessage());
		}
	}
}
