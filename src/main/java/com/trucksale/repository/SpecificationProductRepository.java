package com.trucksale.repository;

import org.springframework.data.repository.CrudRepository;

import com.trucksale.model.SpecificationProduct;

public interface SpecificationProductRepository extends CrudRepository<SpecificationProduct, Long>{
	public Iterable<SpecificationProduct> findByProductId(long productId);
}
