package com.trucksale.repository;

import org.springframework.data.repository.CrudRepository;

import com.trucksale.model.ProductGroup;

public interface ProductGroupRepository extends CrudRepository<ProductGroup, Long>{
	
}
