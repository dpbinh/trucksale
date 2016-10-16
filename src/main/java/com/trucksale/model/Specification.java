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
	
	private boolean active;
	
	private boolean quickShow;
	
	private int priority;
	
	@ManyToOne
	private SpecificationGroup specificationGroup;

	public Specification() {
		super();
	}
 
	
	public Specification(String name, String nameEn, boolean active, boolean quickShow) {
		super();
		this.name = name;
		this.nameEn = nameEn;
		this.active = active;
		this.quickShow = quickShow;
	}

	
	public Specification(String name, String nameEn, boolean active, boolean quickShow, int priority) {
		super();
		this.name = name;
		this.nameEn = nameEn;
		this.active = active;
		this.quickShow = quickShow;
		this.priority = priority;
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

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}


	public boolean isQuickShow() {
		return quickShow;
	}


	public void setQuickShow(boolean quickShow) {
		this.quickShow = quickShow;
	}

	
	
	public int getPriority() {
		return priority;
	}


	public void setPriority(int priority) {
		this.priority = priority;
	}


	public SpecificationGroup getSpecificationGroup() {
		return specificationGroup;
	}

	public void setSpecificationGroup(SpecificationGroup specificationGroup) {
		this.specificationGroup = specificationGroup;
	}
}
