package com.trucksale.bean;

import com.trucksale.model.ProductGroup;

public class ProductGroupBean {
	private long id;
	
	private String name;
	
	private String img;
	
	public ProductGroupBean(ProductGroup productGroup){
		this.id = productGroup.getId();
		this.name = productGroup.getName();
		this.img = productGroup.getImg();
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

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
}
