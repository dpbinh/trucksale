package com.trucksale.repository;

import org.springframework.data.repository.CrudRepository;

import com.trucksale.model.Specification;

public interface SpecificationRepository extends CrudRepository<Specification, Long> {
	public Iterable<Specification> findBySpecificationGroupId(long groupId);
}
