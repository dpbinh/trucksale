package com.trucksale.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.trucksale.model.Users;

public interface UserRepository extends CrudRepository<Users, Long> {
	
	List<Users> findByUsername(String username);
	
}
