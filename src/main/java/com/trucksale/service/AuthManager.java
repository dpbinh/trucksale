package com.trucksale.service;

import javax.servlet.http.HttpServletRequest;

import com.trucksale.model.RoleType;

public interface AuthManager {
	void login(HttpServletRequest request, String username);
	
	void logout(HttpServletRequest request);
	
	boolean checkRole(HttpServletRequest request, RoleType role);
}
