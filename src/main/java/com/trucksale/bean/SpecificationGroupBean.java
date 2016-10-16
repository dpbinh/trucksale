package com.trucksale.bean;

import java.util.ArrayList;
import java.util.List;

import com.trucksale.model.SpecificationGroup;

public class SpecificationGroupBean {
	private long id;
	
	private String name;
	
	private List<SpecificationBean> specifications = new ArrayList<SpecificationBean>();

	public SpecificationGroupBean(SpecificationGroup specificationGroup) {
		if(specificationGroup != null){
			this.id =  specificationGroup.getId();
			this.name = specificationGroup.getName();
		}
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

	public List<SpecificationBean> getSpecifications() {
		return specifications;
	}

	public void setSpecifications(List<SpecificationBean> specifications) {
		this.specifications = specifications;
	}
}
