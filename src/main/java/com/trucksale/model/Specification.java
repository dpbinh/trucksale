package com.trucksale.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Specification {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	private String name;
	
	private String nameEn;

	@ManyToOne
	private SpecificationGroup specificationGroup;

	public Specification() {
		super();
	}

	public Specification(String specName, String specNameEn) {
		super();
		this.name = specName;
		this.nameEn = specNameEn;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

    
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNameEn() {
		return nameEn;
	}

	public void setNameEn(String nameEn) {
		this.nameEn = nameEn;
	}

	public SpecificationGroup getSpecificationGroup() {
		return specificationGroup;
	}

	public void setSpecificationGroup(SpecificationGroup specificationGroup) {
		this.specificationGroup = specificationGroup;
	}
}
