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

@Service("userService")
public class UserServiceImpl implements UserDetailsService, UserService{
	
	private Log log = LogFactory.getLog(this.getClass());
	
	@Autowired
    private PasswordEncoder passwordEncoder;
	 
	@Override
	public void save(User user) {
		String real = user.getPassword();
		String encoded = passwordEncoder.encode(user.getPassword());
		 
		log.info("Pass encoded: " + encoded);
		
		log.info("Check Pass :" + passwordEncoder.matches(real, encoded));
	}

	@Override
	public UserDetails loadUserByUsername(String arg0) throws UsernameNotFoundException {
		 
		return null;
	}
	 
}
