package com.trucksale.repository;

import org.springframework.data.repository.CrudRepository;

import com.trucksale.model.Role;
import com.trucksale.model.RoleType;

public interface RoleRepository extends CrudRepository<Role, Long>{
	Role findByName(RoleType type);
}
