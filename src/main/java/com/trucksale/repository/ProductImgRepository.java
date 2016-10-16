package com.trucksale.repository;

import org.springframework.data.repository.CrudRepository;

import com.trucksale.model.ProductImg;

public interface ProductImgRepository extends CrudRepository<ProductImg, Long>{
	Iterable<ProductImg> findByProductId(long productId);

}
