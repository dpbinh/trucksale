package com.trucksale.repository;

import org.springframework.data.repository.CrudRepository;

import com.trucksale.model.Product;

public interface ProductRepository extends CrudRepository<Product, Long>{
	Iterable<Product> findByProductGroupId(long groupId); 
}
