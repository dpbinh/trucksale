package com.trucksale.bean;

import com.trucksale.model.Product;

public class ProductBean {

	private long id;
	
	private String name;
	
	private String img;
	
	private long price;
	
	private ProductGroupBean group;
	
	public ProductBean() {
		super();
	}

	public ProductBean(long id, String name, String img, long price) {
		super();
		this.id = id;
		this.name = name;
		this.img = img;
		this.price = price;
	}

	public ProductBean(Product product){
		this.id = product.getId();
		this.name = product.getName();
		this.img = product.getImg();
		this.price = product.getPrice();
		this.group = new ProductGroupBean(product.getProductGroup());
		
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

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}


	public ProductGroupBean getGroup() {
		return group;
	}

	public void setGroup(ProductGroupBean group) {
		this.group = group;
	}
}
