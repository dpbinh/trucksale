package com.trucksale.bean;

import com.trucksale.model.Specification;

public class SpecificationBean {

	private long id;

	private String name;

	private String nameEn;

	private String value;

	private boolean quickShow;

	public SpecificationBean(Specification specification) {
		if (specification != null) {
			this.id = specification.getId();
			this.name = specification.getName();
			this.nameEn = specification.getNameEn();
			this.quickShow = specification.isQuickShow();
		}
	}

	public SpecificationBean(Specification specification, String value) {
		this(specification);
		if (specification != null) {
			this.value = value;
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

	public String getNameEn() {
		return nameEn;
	}

	public void setNameEn(String nameEn) {
		this.nameEn = nameEn;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public boolean isQuickShow() {
		return quickShow;
	}

	public void setQuickShow(boolean quickShow) {
		this.quickShow = quickShow;
	}

}
