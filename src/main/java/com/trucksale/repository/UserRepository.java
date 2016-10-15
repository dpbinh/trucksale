package com.trucksale.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.trucksale.model.User;

public interface UserRepository extends CrudRepository<User, Long> {
	
	List<User> findByUserName(String username);
	
}
