package com.trucksale.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class SpecificationProduct {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
 
	private long productId;

	private String specificationValue;

	@ManyToOne
	private Specification specification;

	public SpecificationProduct() {
		super();
	}
	
	public SpecificationProduct(  long productId, String specValue) {
		super();
 
		this.productId = productId;
		this.specificationValue = specValue;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
 
	public long getProductId() {
		return productId;
	}

	public void setProductId(long productId) {
		this.productId = productId;
	}

	
	public String getSpecificationValue() {
		return specificationValue;
	}

	public void setSpecificationValue(String specificationValue) {
		this.specificationValue = specificationValue;
	}

	public Specification getSpecification() {
		return specification;
	}

	public void setSpecification(Specification specification) {
		this.specification = specification;
	}

}
