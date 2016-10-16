package com.trucksale.bean;

import java.util.ArrayList;
import java.util.List;

public class PricingBean {
	private String group;
	
	private List<ProductBean> products = new ArrayList<ProductBean>();

	public PricingBean(String group) {
		super();
		this.group = group;
	}

	public PricingBean() {
		super();
	}

	public String getGroup() {
		return group;
	}

	public void setGroup(String group) {
		this.group = group;
	}

	public List<ProductBean> getProducts() {
		return products;
	}

	public void setProducts(List<ProductBean> products) {
		this.products = products;
	}
	
	
	
}
