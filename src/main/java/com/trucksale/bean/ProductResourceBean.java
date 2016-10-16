package com.trucksale.bean;

import com.trucksale.model.ProductImg;

public class ProductResourceBean {
	private long id;
	
	private String imgPath;
	
	private String group;

	public ProductResourceBean() {
		super();
	}

	public ProductResourceBean(long id, String imgPath, String group) {
		super();
		this.id = id;
		this.imgPath = imgPath;
		this.group = group;
	}
	
	public ProductResourceBean(ProductImg img) {
		super();
		this.id = img.getId();
		this.imgPath = img.getImg();
		this.group = img.getImgGroup().name();
		 
	}
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public String getGroup() {
		return group;
	}

	public void setGroup(String group) {
		this.group = group;
	}
	
	
}
