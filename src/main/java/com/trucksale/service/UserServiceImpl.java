package com.trucksale.service;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.trucksale.model.User;
import com.trucksale.repository.UserRepository;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	private Log log = LogFactory.getLog(this.getClass());
	
	@Autowired
	private UserRepository userRepo;
	
	@Autowired
    private PasswordEncoder passwordEncoder;
	 
	@Override
	public void save(User user) {
		String real = user.getPassword();
		String encoded = passwordEncoder.encode(user.getPassword());
		 
		log.info("Pass encoded: " + encoded);
//		userRepo.save(user);
		log.info("Check Pass :" + passwordEncoder.matches(real, encoded));
	}

 
}
