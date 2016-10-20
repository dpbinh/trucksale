package com.trucksale.bean;

import java.util.ArrayList;
import java.util.List;

import com.trucksale.model.Product;
import com.trucksale.model.ProductGroup;
import com.trucksale.model.SpecificationProduct;

public class ProductBean {

	private long id;
	
	private String name;
	
	private String img;
	
	private long price;
	
	private ProductGroup group;
	
	private List<SpecificationGroupBean> specGroups = new ArrayList<SpecificationGroupBean>();
	
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
	}
	
	public ProductBean(Product product,  Iterable<SpecificationProduct> specs){
		this(product);
		for(SpecificationProduct spec : specs){
			SpecificationBean specb = new SpecificationBean(spec.getSpecification(), spec.getSpecificationValue());
			SpecificationGroupBean existrdSpecG = getExistInSpecGroups(spec.getId());
			if(existrdSpecG == null){
				SpecificationGroupBean newSpecG = new SpecificationGroupBean(spec.getSpecification().getSpecificationGroup());
				newSpecG.getSpecifications().add(specb);
				specGroups.add(newSpecG);
			} else {
				existrdSpecG.getSpecifications().add(specb);
			}
		}
	}
	
	private SpecificationGroupBean getExistInSpecGroups(long specGroupId){
		for(SpecificationGroupBean specg : specGroups){
			if(specg.getId() == specGroupId){
				return specg;
			}
		}
		return null;
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

	public List<SpecificationGroupBean> getSpecGroups() {
		return specGroups;
	}

	public void setSpecGroups(List<SpecificationGroupBean> specGroups) {
		this.specGroups = specGroups;
	}

	public ProductGroup getGroup() {
		return group;
	}

	public void setGroup(ProductGroup group) {
		this.group = group;
	}
	
	
}
